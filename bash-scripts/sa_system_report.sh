#!/bin/bash
# A script that generates a report of key system health metrics.

	echo "=========================================="
	echo "          System Health Report            "
	echo "=========================================="
	echo

	# This is critical if you run the script on multiple servers.

	echo "Report generated on: $(hostname) at $(date)"
	echo

	# The '-p' flag makes it "pretty" and easy to read (e.g., "up 2 hours, 15 minutes").
	echo "------------------------------------------"
	echo "System Uptime:"
	uptime -p
	echo

	# The '-h' flag makes it "human-readable" (e.g., showing MB or GB instead of just bytes).
	echo "------------------------------------------"
	echo "Memory Usage:"
	free -h
	echo

	#USE 'df -h' ---
	# 'df' shows disk free space.
	#'grep' to filter the output,

	echo "------------------------------------------"
	echo "Disk Space Usage:"
	df -h --output=source,size,used,avail,pcent | grep -vE 'tmpfs|udev|loop' | column -t
	echo

	echo "=========================================="
	echo "           End of Report              "
	echo "=========================================="
