#!/bin/bash

# Auto Git push script for Learn DevOps repository# root project directory
 cd ~/Learn-DevOps ||{ echo "Learn-DevOps directory not found", exit 1;}

# Check if the source directory exists
cd ~/Learn-DevOps ||  { echo " Learn-DevOps directory not found"; exit 1; }

# Initialize Git if not already
if [ ! -d .git ]; then
  git init
  git branch -M main
  git remote add origin git@github.com:Devsathome/Learn-DevOps.git
  echo "Git repository initialized."
fi

# Add all changes
  git add .

#Auto-generated commit message
  commit_msg="Update: $(date +'%Y-%m-%d %H:%M')"

#only commit changes if there any

if git diff --cached --quiet; then
   echo " Nothing to commit.Working tree clean."
else

git commit -m "$commit_msg"

    # save log.txt
    echo "$commit_msg" >> commit-log.txt
    echo " commit logged in commit-log.txt"

#Push changes to the remote repository

if git push origin main; then

  echo "Changes pushed successfully to GitHub!"
else
  echo "push failed. Try 'git pull origin main --allow-unrelated-histories' and re-run this script."
	fi
fi
