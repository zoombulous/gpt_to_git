#!/bin/bash

# Navigate to the directory where your logs are saved
cd ~/gpt_to_git

# Check for changes
if git status | grep -q 'nothing to commit'; then
  echo "No changes to push."
else
  # Add all new or modified files to the staging area
  git add .

  # Commit the changes with a message
  git commit -m "Update chat logs"

  # Push the changes to your GitHub repository
  git push origin main
fi
