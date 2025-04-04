#!/bin/bash

# Script to add parent details (name, contact number, address) to a file.

# Prompt for parent name
read -p "Enter parent name: " name

# Prompt for parent contact number
read -p "Enter parent contact number: " contact

# Prompt for parent address
read -p "Enter parent address: " address

# Validate input (optional, but recommended)
if [[ -z "$name" || -z "$contact" || -z "$address" ]]; then
  echo "Error: Name, contact number, and address cannot be empty."
  exit 1
fi

# Append the parent information to a file (e.g., parents.txt)
echo "$name,$contact,\"$address\"" >> parents.txt

# Confirmation message
echo "Parent information added successfully."

exit 0