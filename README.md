# DevOps Learning Journey

## Week 1: Linux Foundation & Shell Scripting
---
- 🔄 How to write multi-line content into files using `cat << EOF`
- 🐚 Improved Bash scripting and automation skills
- 💡 Understood the Git workflow better: `git init`, `add`, `commit`, `push`
- 🗃️ Folder structuring and writing clear `README.md` files
- ✅ Running executable Bash scripts with `chmod +x`
- 📤 How to make daily DevOps tracking easier using a reusable script
---
* 📝 Learned Bash variables: How to create and access them with `${VAR_NAME}`
* 🔀 Improved in conditional statements: Using `if [[ ]]` for file checks and comparisons
* 📋 Understood command-line arguments: Working with `$1`, `$2` parameters
* ✅ Learned exit codes: Using `exit 0/1` and checking status with `$?`
* 🔧 Created reusable functions: Writing modular code with function blocks
* 🛡Implemented error handling M:king scripts robust with `set -euo pipefail`
* 💬 Added user interaction: Getting input with `read -p` prompts
* ⭐ Applied scripting best practices: Input validation, commenting, and clean organization---
---
## AWS (Week 2) – EC2 Setup Progress

### What I Learned
- Created AWS Free Tier account.
- Set up IAM user with programmatic access (Access Key & Secret Key).
- Configured AWS CLI in WSL (`aws configure`).
- Launched a `t3.micro` EC2 instance (Ubuntu 22.04) using CLI and GUI.
- Connected to EC2 via SSH using `.pem` key.

### Commands I Used
```bash
# Launch EC2
aws ec2 run-instances --image-id ami-0da59f1af71ea4ad2 --count 1 --instance-type t3.micro --key-name devops-key --security-groups devops-sg

# Get Public IP
aws ec2 describe-instances --query "Reservations[*].Instances[*].PublicIpAddress" --output text

# Connect to EC2
ssh -i "devops-key.pem" ubuntu@<Public-IP>
