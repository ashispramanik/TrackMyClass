#!/bin/bash

# All-in-one script to manage student, sport, teacher, course, and parent data.

# Function to add student information
add_student() {
  read -p "Enter student registration number: " reg_no
  read -p "Enter student name: " name
  if [[ -z "$reg_no" || -z "$name" ]]; then
    echo "Error: Registration number and name cannot be empty."
    return 1
  fi
  echo "$reg_no,$name" >> students.txt
  echo "Student information added successfully."
  return 0
}

# Function to add sport participant information
add_sport() {
  read -p "Enter participant name: " name
  read -p "Enter participant contact number: " contact
  read -p "Enter participant address: " address
  if [[ -z "$name" || -z "$contact" || -z "$address" ]]; then
    echo "Error: Name, contact number, and address cannot be empty."
    return 1
  fi
  echo "$name,$contact,\"$address\"" >> sports_participants.txt
  echo "Participant information added successfully."
  return 0
}

# Function to add teacher information
add_teacher() {
  read -p "Enter teacher ID: " teacher_id
  read -p "Enter teacher name: " teacher_name
  read -p "Enter teacher subject: " teacher_subject
  if [[ -z "$teacher_id" || -z "$teacher_name" || -z "$teacher_subject" ]]; then
    echo "Error: Teacher ID, name, and subject cannot be empty."
    return 1
  fi
  echo "$teacher_id,$teacher_name,$teacher_subject" >> teachers.txt
  echo "Teacher information added successfully."
  return 0
}

# Function to add course information
add_course() {
  read -p "Enter course code: " course_code
  read -p "Enter course name: " course_name
  read -p "Enter course credits: " course_credits
  if [[ -z "$course_code" || -z "$course_name" || -z "$course_credits" ]]; then
    echo "Error: Course code, name, and credits cannot be empty."
    return 1
  fi
  echo "$course_code,$course_name,$course_credits" >> courses.txt
  echo "Course information added successfully."
  return 0
}

# Function to add parent information
add_parent() {
  read -p "Enter parent name: " name
  read -p "Enter parent contact number: " contact
  read -p "Enter parent address: " address
  if [[ -z "$name" || -z "$contact" || -z "$address" ]]; then
    echo "Error: Name, contact number, and address cannot be empty."
    return 1
  fi
  echo "$name,$contact,\"$address\"" >> parents.txt
  echo "Parent information added successfully."
  return 0
}

# Main menu
while true; do
  echo "Choose an option:"
  echo "1. Add student"
  echo "2. Add sport participant"
  echo "3. Add teacher"
  echo "4. Add course"
  echo "5. Add parent"
  echo "6. Exit"
  read -p "Enter your choice: " choice

  case "$choice" in
    1) add_student ;;
    2) add_sport ;;
    3) add_teacher ;;
    4) add_course ;;
    5) add_parent ;;
    6) echo "Exiting..." ; break ;;
    *) echo "Invalid choice. Please try again." ;;
  esac
done

exit 0