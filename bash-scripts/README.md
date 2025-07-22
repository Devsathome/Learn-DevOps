# 🔄 AutoPush Script

This folder contains helper bash scripts used for automating Git operations in the `Learn-DevOps` project.

## 📜 Script: `autopush.sh`

This script helps automate the daily Git workflow for DevOps learning:

### Features
- 🧠 Initializes Git if not already done
- 📂 Stages all changed files
- 🕒 Commits with an auto-generated timestamp
- ⬆️ Pushes to the `main` branch
- 📑 Logs commit messages in `commit-log.txt`

### 📦 Usage

```bash
chmod +x ./bash-scripts/autopush.sh
./bash-scripts/autopush.sh
 
