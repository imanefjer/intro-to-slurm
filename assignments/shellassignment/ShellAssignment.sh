#!/bin/bash


#Exercise 1:

if [ ! -d "my_files" ]; then
    mkdir my_files
fi
for i in {1..5}; do
    echo "This is file $i." > my_files/file$i.txt
done

echo "Text files created in 'my_files' directory."

#Exercise 2:
total_lines=$(find . -type f -name "*.txt" -exec cat {} \; | wc -l)

echo "Total number of lines in all text files: $total_lines"

#Exercise 3:
cat input.txt | tr -s ' ' '\n' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -5

#Exercise 4:
while true; do
    echo "Menu:"
    echo "1. List all files in the current directory."
    echo "2. List all running processes."
    echo "3. Check available disk space."
    echo "4. Continue the exercises"
    echo "5. Exit. "

    read -p "Enter your choice (1/2/3/4/5): " choice

    case $choice in
        1)
            ls
            ;;
        2)
            ps aux
            ;;
        3)
            df -h
            ;;
    	5)
	    echo "Exiting the program."
            exit 0
            ;;
	
    	4)
	    #Exercise 5:
	    if [ ! -d "large_files" ]; then
    		mkdir large_files
	    fi
	    find . -type f -size +10M -exec mv {} large_files/ \;
	    find . -type f -size +10M -exec echo "Moved {} to large_files/" >> move_log.txt \;

	    echo "Large files moved to 'large_files' directory."

	    #Exercise 6:
 	    echo "Hostname: $(hostname)"
            echo "CPU Information: $(grep -m 1 "model name" /proc/cpuinfo | awk -F ': ' '{print $2}') @ $(grep -m 1 "cpu MHz" /proc/cpuinfo | awk -F ': ' '{print $2}') MHz"
	    echo "Kernel Version: $(uname -r)"
	    echo "Total RAM: $(awk '/MemTotal/{print $2 " kB"}' /proc/meminfo)"
	    echo "Current Date and Time: $(date)"

	    #Exercise 7:
	    while IFS= read -r -d '' dir; do
    		rmdir "$dir"
    		echo "Deleted empty directory: $dir"
	    done < <(find . -mindepth 1 -type d -empty -print0)
            
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac
done
