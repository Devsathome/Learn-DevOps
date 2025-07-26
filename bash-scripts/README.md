# DevOps Helper Bash Scripts

This folder contains helper bash scripts used for automating Git operations and various system administration tasks in the `Learn-DevOps` project. These scripts are designed to streamline common DevOps workflows and system management operations.

---

## 📜 Script: `autopush.sh`

This script helps automate the daily Git workflow for DevOps learning.

### Features
- 🧠 Initializes Git if not already done
- 📂 Stages all changed files
- 🕒 Commits with an auto-generated timestamp
- ⬆️ Pushes to the `main` branch
- 📑 Logs commit messages in `commit-log.txt`

### Usage
```bash
chmod +x ./bash-scripts/autopush.sh
./bash-scripts/autopush.sh
```

---

## 📜 Script: `loop_pingsevers_list.sh`

This script automates the process of checking the reachability of a predefined list of servers. It's useful for quick network diagnostics.

### Features
- 🌐 Defines a list of target servers (e.g., google.com, github.com)
- 🎯 Pings each server once to determine reachability
- ✅ Reports whether each server is REACHABLE or UNREACHABLE
- 🤫 Suppresses verbose ping output to keep the terminal clean

### Usage
```bash
chmod +x ./bash-scripts/loop_pingsevers_list.sh
./bash-scripts/loop_pingsevers_list.sh
```

---

## 📜 Script: `sa_system_report.sh`

This script generates a basic system report, gathering key information about the operating environment. It's a quick way to get an overview of your system's status.

### Features
- 🖥️ Displays system hostname and current date/time
- ⬆️ Reports system uptime in a human-readable format
- 🧠 Shows memory usage statistics in human-readable units (MB/GB)
- 💾 Displays disk space usage for mounted filesystems, excluding temporary and loop devices, in a human-readable table format

### Usage
```bash
chmod +x ./bash-scripts/sa_system_report.sh
./bash-scripts/sa_system_report.sh
```

---

## 📜 Script: `sa_user_create.sh`

This script simplifies the process of creating new user accounts on the Linux system.

### Features
- ➕ Automates the useradd command with common options
- 🏠 Creates a home directory for the new user
- 🐚 Sets /bin/bash as the default shell for the new user
- ℹ️ Informs the user to manually set the new user's password using `sudo passwd`

### Usage
```bash
chmod +x ./bash-scripts/sa_user_create.sh
./bash-scripts/sa_user_create.sh <username>
```

---
## 📜 Script: `security_audit.sh`

- 🔍 Checks for pending system updates 
- 🔒 Lists open network ports 
- 🧾 Finds world-writable files (potential security risks)
- 📊 Outputs results for quick auditing
### Usage
  ```bash
  chmod +x ./bash-scripts/security_audit.sh
  ./bash-scripts/sa_user_create.sh <username>
  ```

## 💾 `backup_automation.sh`

- 🗂  Creates compressed backups (`tar.gz`) of target folders
- ⏱* Includes timestamp in backup filenames for easy versioning
- 🔄 Rotates backups, keeping only the last 5 backups
- 📦 Stores backups in a dedicated directory
### Usage
   ```bash
    chmod +x ./bash-scripts/./backup_automation.sh
   ./bash-scripts/sa_user_create.sh <username>   ```

---

---
🚀 Future Improvements

- Add log files for both scripts
- Add email/Slack notifications for security alerts
- Add cron job examples for scheduled automation

---



---
## 🚀 Getting Started

1. **Clone the repository** and navigate to the bash-scripts directory
2. **Make scripts executable** using `chmod +x <script-name>.sh`
3. **Run the desired script** based on your needs

## 📋 Prerequisites

- Linux/Unix environment
- Bash shell
- Git (for autopush.sh)
- Appropriate system permissions for system administration scripts
-  tar, net-tools, find, and apt pre-installed

## 🤝 Contributing

Feel free to contribute additional helper scripts or improvements to existing ones. Make sure to follow the same documentation format and include proper usage examples.

## 📄 License

These scripts are part of the Learn-DevOps project and are provided for educational purposes.
