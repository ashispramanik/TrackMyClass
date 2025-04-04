#!/bin/bash

# Ensure the file exists
if [ ! -f teacher.csv ]; then
    echo "Teacher Name,Subject,Experience" > teacher.csv
fi

while true; do
    clear
    echo "=============================="
    echo "     Teacher Management System"
    echo "=============================="
    echo "1. View Teachers"
    echo "2. Add Teacher"
    echo "3. Delete Teacher"
    echo "4. Search Teacher"
    echo "5. Count Total Teachers"
    echo "6. List by Subject"
    echo "7. Sort Teachers by Name"
    echo "8. Update Teacher Subject"
    echo "9. Clear All Records"
    echo "10. Exit"
    echo "=============================="
    read -p "Enter your choice (1-10): " choice

    case $choice in
        1)
            clear
            echo "===== All Teachers ====="
            column -t -s "," teacher.csv
            read -p "Press Enter to continue..." ;;
        
        2)
            clear
            read -p "Enter Name: " name
            read -p "Enter Subject: " subject
            read -p "Enter Experience (Years): " exp
            echo "$name,$subject,$exp" >> teacher.csv
            echo "Teacher added!"
            sleep 1 ;;
        
        3)
            clear
            read -p "Enter Name to Delete: " name
            grep -iv "$name" teacher.csv > temp.csv && mv temp.csv teacher.csv
            echo "Deleted if matched."
            sleep 1 ;;
        
        4)
            clear
            read -p "Enter Name to Search: " name
            grep -i "$name" teacher.csv || echo "Not found!"
            read -p "Press Enter to continue..." ;;
        
        5)
            count=$(($(wc -l < teacher.csv) - 1))
            echo "Total Teachers: $count"
            read -p "Press Enter to continue..." ;;
        
        6)
            read -p "Enter Subject to Filter: " subject
            grep -i "$subject" teacher.csv || echo "No match."
            read -p "Press Enter to continue..." ;;
        
        7)
            head -1 teacher.csv > sorted.csv
            tail -n +2 teacher.csv | sort >> sorted.csv
            column -t -s "," sorted.csv
            read -p "Press Enter to continue..." ;;
        
        8)
            read -p "Enter Teacher Name to Update Subject: " name
            read -p "Enter New Subject: " newsub
            awk -F, -v n="$name" -v s="$newsub" 'BEGIN{OFS=","}
            NR==1{print;next}
            tolower($1)==tolower(n){$2=s} {print}' teacher.csv > temp.csv && mv temp.csv teacher.csv
            echo "Subject updated if name found."
            sleep 1 ;;
        
        9)
            read -p "Are you sure? Type YES to confirm: " confirm
            if [ "$confirm" == "YES" ]; then
                echo "Teacher Name,Subject,Experience" > teacher.csv
                echo "All records cleared."
            else
                echo "Cancelled."
            fi
            sleep 1 ;;
        
        10)
            echo "Goodbye!"
            exit ;;
        
        *)
            echo "Invalid option!"
            sleep 1 ;;
    esac
done
