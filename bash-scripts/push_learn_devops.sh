#!/bin/bash

# Auto Git push script for Learn DevOps repository
# root project directory
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

# ask for commit message
read -p "Enter commit message: " commit_message
# commit changes
git commit -m "$commit_message"
# Push changes to the remote repository
git push origin main
echo "Changes pushed successfully to GitHub."
# End of script