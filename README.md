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
### Scripting Logic Fundamentals
- 📝 **Variables**: `VAR_NAME="value"`, accessed with `${VAR_NAME}`
- 🔀 **Conditional Logic**: `if [[ condition ]]; then ... fi` with file checks `[[ -f "$FILE" ]]`, string comparison `[[ "$A" == "$B" ]]`
- 📋 **Positional Parameters**: `$1`, `$2` for command-line arguments
- ✅ **Exit Codes**: `exit 0` (success), `exit 1` (failure), `$?` for checking previous command status

### Advanced Scripting & Best Practices
- 🔧 **Functions**: `function_name() { # code }` for reusable code blocks
- 🛡️ **Error Handling**: `set -euo pipefail` for robust scripts
- 💬 **User Input**: `read -p "prompt: " variable`
- ⭐ **Best Practices**: Always validate input, use variables, comment code, organize with functions
---
