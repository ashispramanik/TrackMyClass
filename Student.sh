#!/bin/bash

# Script to add student information (registration number and name) to a file.

# Prompt for registration number
read -p "Enter student registration number: " reg_no

# Prompt for student name
read -p "Enter student name: " name

# Validate input (optional, but recommended)
if [[ -z "$reg_no" || -z "$name" ]]; then
  echo "Error: Registration number and name cannot be empty."
  exit 1
fi

# Append the student information to a file (e.g., students.txt)
echo "$reg_no,$name" >> students.txt

# Confirmation message
echo "Student information added successfully."

exit 0