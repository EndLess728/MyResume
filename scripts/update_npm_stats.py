#!/usr/bin/env python3
"""
Fetches npm download stats and updates the resume YAML file.
Run before building the resume to include live download counts.
"""

import urllib.request
import json
import re
import sys
from pathlib import Path


def fetch_npm_downloads(package_name: str) -> dict:
    """Fetch download stats from npm registry API."""
    # Get weekly downloads
    weekly_url = f"https://api.npmjs.org/downloads/point/last-week/{package_name}"
    # Get total downloads (all time - from 2015 to now)
    total_url = f"https://api.npmjs.org/downloads/point/2015-01-01:2099-12-31/{package_name}"
    
    stats = {"weekly": 0, "total": 0}
    
    try:
        with urllib.request.urlopen(weekly_url, timeout=10) as response:
            data = json.loads(response.read().decode())
            stats["weekly"] = data.get("downloads", 0)
    except Exception as e:
        print(f"⚠️  Failed to fetch weekly downloads for {package_name}: {e}")
    
    try:
        with urllib.request.urlopen(total_url, timeout=10) as response:
            data = json.loads(response.read().decode())
            stats["total"] = data.get("downloads", 0)
    except Exception as e:
        print(f"⚠️  Failed to fetch total downloads for {package_name}: {e}")
    
    return stats


def format_number(num: int) -> str:
    """Format number with K/M suffix for readability."""
    if num >= 1_000_000:
        return f"{num / 1_000_000:.1f}M"
    elif num >= 1_000:
        return f"{num / 1_000:.1f}K"
    return str(num)


def update_yaml_with_stats(yaml_path: Path) -> None:
    """Update the YAML file with npm download stats."""
    content = yaml_path.read_text()
    
    # Package configurations: (package_name, pattern_to_find, replacement_template)
    packages = [
        {
            "name": "expo-check-installed-apps",
            "summary_pattern": r'(summary: Expo config plugin to detect installed apps on Android and iOS)\.?(\s*\([^)]*downloads[^)]*\))?',
        },
        {
            "name": "react-native-mediapipe-posedetection",
            "summary_pattern": r'(summary: Real-time pose detection for React Native using MediaPipe BlazePose with GPU acceleration)\.?(\s*\([^)]*downloads[^)]*\))?',
        },
    ]
    
    for pkg in packages:
        stats = fetch_npm_downloads(pkg["name"])
        
        if stats["total"] > 0:
            download_str = f" ({format_number(stats['total'])}+ downloads)"
            print(f"📦 {pkg['name']}: {format_number(stats['weekly'])}/week, {format_number(stats['total'])} total")
            
            # Update summary line with download count
            content = re.sub(
                pkg["summary_pattern"],
                rf'\1{download_str}',
                content
            )
        else:
            print(f"⚠️  {pkg['name']}: Could not fetch stats")
    
    yaml_path.write_text(content)
    print(f"\n✅ Updated {yaml_path}")


if __name__ == "__main__":
    yaml_file = Path(__file__).parent.parent / "Mantu_CV.yaml"
    
    if len(sys.argv) > 1:
        yaml_file = Path(sys.argv[1])
    
    if not yaml_file.exists():
        print(f"❌ YAML file not found: {yaml_file}")
        sys.exit(1)
    
    print("🔄 Fetching npm download stats...\n")
    update_yaml_with_stats(yaml_file)
