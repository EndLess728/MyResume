#!/usr/bin/env python3
"""Send a Telegram notification that the resume was rebuilt and uploaded.

Reads TELEGRAM_BOT_TOKEN, TELEGRAM_CHAT_ID, DRIVE_FILE_ID, REPO, COMMIT_SHA,
and ACTOR from the environment. A delivery failure is reported but never fails
the build — the resume is already published by the time this runs.
"""

import os
import sys
import urllib.error
import urllib.parse
import urllib.request

API = "https://api.telegram.org/bot{token}/sendMessage"


def build_message() -> str:
    repo = os.environ.get("REPO", "")
    commit_sha = os.environ.get("COMMIT_SHA", "")
    actor = os.environ.get("ACTOR", "")
    drive_file_id = os.environ.get("DRIVE_FILE_ID", "")

    return "\n".join([
        "✅ <b>Resume Updated Successfully!</b>",
        "",
        f"📄 <b>Repository:</b> <code>{repo}</code>",
        f'🔗 <b>Commit:</b> <a href="https://github.com/{repo}/commit/{commit_sha}">View Commit</a>',
        f"👤 <b>Triggered by:</b> <code>{actor}</code>",
        "",
        f'📎 <a href="https://drive.google.com/file/d/{drive_file_id}/view">View Resume on Google Drive</a>',
    ])


def main() -> int:
    token = os.environ.get("TELEGRAM_BOT_TOKEN")
    chat_id = os.environ.get("TELEGRAM_CHAT_ID")
    if not token or not chat_id:
        print("⚠️  TELEGRAM_BOT_TOKEN or TELEGRAM_CHAT_ID not set; skipping notification")
        return 0

    payload = urllib.parse.urlencode({
        "chat_id": chat_id,
        "parse_mode": "HTML",
        "disable_web_page_preview": "true",
        "text": build_message(),
    }).encode()

    try:
        with urllib.request.urlopen(
            urllib.request.Request(API.format(token=token), data=payload), timeout=10
        ) as response:
            response.read()
        print("✅ Telegram notification sent")
    except (urllib.error.URLError, OSError) as e:
        print(f"⚠️  Failed to send Telegram notification: {e}")

    return 0


if __name__ == "__main__":
    sys.exit(main())
