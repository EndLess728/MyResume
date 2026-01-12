---
description: Generate resume PDF and upload to Google Drive with a permanent shareable link
---

# Resume Generation & Google Drive Upload Workflow

This workflow generates the resume PDF and uploads it to Google Drive, ensuring the **file link remains the same** for portfolio use.

## Prerequisites

### 1. Create a Google Cloud Project & Service Account

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project (or use existing)
3. Enable the **Google Drive API**:

   - Go to `APIs & Services` → `Enable APIs and Services`
   - Search for "Google Drive API" and enable it

4. Create a Service Account:

   - Go to `APIs & Services` → `Credentials`
   - Click `Create Credentials` → `Service Account`
   - Give it a name like `resume-uploader`
   - Click `Create and Continue` → `Done`

5. Create a Service Account Key:
   - Click on the service account you just created
   - Go to `Keys` tab → `Add Key` → `Create new key`
   - Choose JSON format
   - Download the JSON file (keep it safe!)

### 2. Create a Folder in Google Drive

1. Go to [Google Drive](https://drive.google.com/)
2. Create a folder called `Resume` (or any name you prefer)
3. Right-click the folder → `Share`
4. Share with the service account email (looks like: `resume-uploader@your-project.iam.gserviceaccount.com`)
5. Give **Editor** permission
6. Copy the folder ID from the URL: `https://drive.google.com/drive/folders/YOUR_FOLDER_ID`

### 3. Initial Upload (One-time Setup)

Upload your resume manually to the folder first, then:

1. Right-click the file → `Get Link` → `Anyone with the link`
2. Copy the file ID from the URL: `https://drive.google.com/file/d/YOUR_FILE_ID/view`
3. Save this file ID - **this is what keeps the link permanent!**

### 4. Add GitHub Secrets

Go to your GitHub repository → `Settings` → `Secrets and variables` → `Actions`:

| Secret Name                | Value                                |
| -------------------------- | ------------------------------------ |
| `GOOGLE_DRIVE_CREDENTIALS` | Entire contents of the JSON key file |
| `GOOGLE_DRIVE_FILE_ID`     | The file ID from step 3              |
| `GOOGLE_DRIVE_FOLDER_ID`   | The folder ID from step 2            |

---

## GitHub Actions Workflow

Replace your `.github/workflows/generate-resume.yml` with:

```yaml
name: Generate Resume PDF

on:
  push:
    branches:
      - main
    paths:
      - "Mantu_CV.yaml"
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.12"

      - name: Install dependencies
        run: |
          pip install "rendercv[full]"
          pip install google-api-python-client google-auth

      - name: Generate Resume PDF
        run: rendercv render Mantu_CV.yaml

      - name: Upload to Google Drive
        env:
          GOOGLE_DRIVE_CREDENTIALS: ${{ secrets.GOOGLE_DRIVE_CREDENTIALS }}
          GOOGLE_DRIVE_FILE_ID: ${{ secrets.GOOGLE_DRIVE_FILE_ID }}
          GOOGLE_DRIVE_FOLDER_ID: ${{ secrets.GOOGLE_DRIVE_FOLDER_ID }}
        run: |
          python << 'EOF'
          import os
          import json
          from google.oauth2 import service_account
          from googleapiclient.discovery import build
          from googleapiclient.http import MediaFileUpload

          # Load credentials from environment
          creds_json = os.environ['GOOGLE_DRIVE_CREDENTIALS']
          creds_dict = json.loads(creds_json)

          credentials = service_account.Credentials.from_service_account_info(
              creds_dict,
              scopes=['https://www.googleapis.com/auth/drive.file']
          )

          service = build('drive', 'v3', credentials=credentials)

          file_id = os.environ.get('GOOGLE_DRIVE_FILE_ID')
          folder_id = os.environ.get('GOOGLE_DRIVE_FOLDER_ID')
          file_path = 'rendercv_output/Mantu_CV.pdf'

          media = MediaFileUpload(file_path, mimetype='application/pdf', resumable=True)

          if file_id:
              # UPDATE existing file (keeps same link!)
              file = service.files().update(
                  fileId=file_id,
                  media_body=media
              ).execute()
              print(f"✅ Updated existing file: https://drive.google.com/file/d/{file_id}/view")
          else:
              # CREATE new file (first time only)
              file_metadata = {
                  'name': 'Mantu_CV.pdf',
                  'parents': [folder_id]
              }
              file = service.files().create(
                  body=file_metadata,
                  media_body=media,
                  fields='id'
              ).execute()
              new_file_id = file.get('id')
              
              # Make it publicly accessible
              service.permissions().create(
                  fileId=new_file_id,
                  body={'type': 'anyone', 'role': 'reader'}
              ).execute()
              
              print(f"✅ Created new file! Add this FILE_ID to GitHub secrets: {new_file_id}")
              print(f"📎 Shareable link: https://drive.google.com/file/d/{new_file_id}/view")
          EOF

      - name: Upload PDF artifact
        uses: actions/upload-artifact@v4
        with:
          name: resume-pdf
          path: rendercv_output/Mantu_CV.pdf

      - name: Commit generated files
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"
          git add rendercv_output/
          git diff --staged --quiet || git commit -m "chore: auto-generate resume PDF"
          git push
```

---

## Your Permanent Resume Links

Once set up, your resume will always be available at:

| Format       | URL                                                           |
| ------------ | ------------------------------------------------------------- |
| **View**     | `https://drive.google.com/file/d/YOUR_FILE_ID/view`           |
| **Download** | `https://drive.google.com/uc?export=download&id=YOUR_FILE_ID` |
| **Embed**    | `https://drive.google.com/file/d/YOUR_FILE_ID/preview`        |

> **💡 Tip:** Use the **View** link in your portfolio for best experience!

---

## Manual Trigger

To manually regenerate and upload:

1. Go to your repo → `Actions` tab
2. Select "Generate Resume PDF" workflow
3. Click `Run workflow`

---

## Troubleshooting

| Issue             | Solution                                               |
| ----------------- | ------------------------------------------------------ |
| Permission denied | Ensure service account has Editor access to the folder |
| File not found    | Double-check the `GOOGLE_DRIVE_FILE_ID` secret         |
| API not enabled   | Enable Google Drive API in Cloud Console               |
