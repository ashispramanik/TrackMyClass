# TrackMyClass
shell scripting is a simple program that runs in the command line. It is made using Bash scripting in a Linux system. This system helps to manage student records by saving data in a text file. It can add new student records, show all records, search for a student by name or roll number, update details, and delete records. 
1. Data Management
Add Records:

Students (name, registration number)

Teachers (ID, name, subject)

Courses (code, name, credits)

Parents (name, contact, address)

Sports participants (name, contact, sport)

View All Records: Display stored data in an organized format.

Search Functionality: Find students by name or roll number.

Update Records: Modify existing entries (e.g., change a student's details).

Delete Records: Remove outdated or incorrect entries.

2. User-Friendly Interface
Menu-Driven System: Simple numbered options for easy navigation.

Interactive Prompts: Guides users step-by-step for data entry.

Success/Failure Messages: Confirms actions (e.g., "Student information added successfully").

3. Data Storage
Text-Based Storage: Saves records in .txt files (e.g., students.txt, teachers.txt).

CSV Format: Stores data in a structured way (e.g., ID,Name,Subject for teachers).

4. Extensible & Lightweight
Runs on Any Linux System: No complex installations needed.

Modular Design: Easy to add new features (e.g., attendance tracking, report generation).

How It Works
Run the Script (./TrackMyClass.sh) in a git.

Select an Option (e.g., "1. Add student").

Enter Required Details (e.g., student name, ID).

Data is Saved in the respective text file.

Repeat or Exit the program.

1:-**code:- **
$ ./TrackMyClass.sh  
1. Add student  
2. Add teacher  
3. View all students  
4. Search student  
5. Exit  

Enter choice: 1  
Enter student name: Priya Sharma  
Enter roll number: 2023005  
Student added successfully!  
