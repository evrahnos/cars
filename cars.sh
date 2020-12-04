#! /bin/bash
# cars.sh
# Eleas Vrahnos

INPUT="0"

while [ "$INPUT" -ne "3" ]
do
	echo "Type the number 1 to enter a new car."
	echo "Type the number 2 to display the list of cars."
	echo "Type the number 3 to quit and exit the program."
	read -r INPUT
	case "$INPUT" in
		"1") echo "Please type the year of the car."
			read -r YEAR
		     echo "Please type the make of the car."
		        read -r MAKE
		     echo "Please type the model of the car."
		        read -r MODEL
		     car="$YEAR:$MAKE:$MODEL"
		     echo "$car" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye";;
		*)   echo "Please select a valid option.";;
	esac
done
