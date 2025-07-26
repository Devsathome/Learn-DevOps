#!/bin/bash
echo "=== Security Audit ==="

# Check updates
echo "Checking for updates..."
sudo apt update -qq
sudo apt list --upgradable

# Check open ports
echo "Open ports:"
sudo netstat -tulpn | grep LISTEN

# Check world-writable files
echo "World writable files:"
find / -perm -002 -type f 2>/dev/null | head -n 10

