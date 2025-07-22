#!/bin/bash

# Auto Git push script for Learn DevOps repository# root project directory
 cd ~/Learn-DevOps ||{ echo "Learn-DevOps directory not found", exit 1;}

# Check if the source directory exists
if [ ! -d .git ]; then
  git init
  git branch -M main
  git remote add origin git@github.com:Devsathome/Learn-DevOps.git
  echo "Git repository initialized."
fi

# Add all changes
git add .

# Auto-generated commit message
commit_msg="Update: $(date +'%Y-%m-%d %H:%M')"
# commit changes
git commit -m "$commit_message"
# Push changes to the remote repository
git push origin main
if git push origin main; then
  echo "✅ Changes pushed successfully to GitHub!"
else
  echo "⚠️ Push failed. Try 'git pull origin main --allow-unrelated-histories' and re-run this script."
fi
