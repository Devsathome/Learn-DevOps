#!/bin/bash
# A script to securely delete a user account and their home directory.

	# Check if the script is run as root, as deleting users is a privileged action.
	if  [ "$EUID" -ne 0 ]; then
	    echo " This Script must be run as root.Please use sudo."
	    exit 1
	fi

	# Check if a username was provided as an argument.

	if  [ "$#" -ne 1 ]; then
             echo "Usage: $0 <username>"
	     exit 1
	fi

	USERNAME=$1


	#'userdel! command deletes a user.(-r remove user for home DIR.

	      echo "Attempting to delete user: $USERNAME and their home directory..."

	userdel -r "$USERNAME"

	# Check the exit code of the last command ($?) to see if it succeeded.

        if [ $? -eq 0 ]; then
             echo "User '$USERNAME' was deleted successfully."
        else
             echo "Failed to delete user '$USERNAME'. The user may not exist."
        exit 1

        fi

             echo "User deletion script finished."


