#!/bin/bash

#Script to automate the creation of new user on Linux system.

	#check run on root
	if [ "$EUID" -ne 0 ]; then
		echo "This script run on root use sudo."
		exit 1
	fi

	# Check if a username is provided

	if [ "#" -ne 1 ]; then
		echo "Usage: $0 <username>"
		exit 1
	fi

	USERNAME=$1

	echo "Creating user account for: $USERNAME"

	# Create the user with a home directory and bash shell
	useradd -m -s /bin/bash "$USERNAME"

	# Check if the useradd command was successful

	if [ $? -eq 0 ]; then
		echo "User '$USERNAME' created successfully."
		echo "Set the password using:sudo passwd $USERNAME"
	else
		echo echo "Failed to create user '$USERNAME'."
		exit 1
	fi
