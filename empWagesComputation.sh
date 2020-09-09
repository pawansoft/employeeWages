#!/bin/bash

countPresent=0;
countAb=0
read -p "Enter the days to check the attendance" days;
for (( i=0; i <= $days; i++ ))
do
	att=$((RANDOM%2))
	if [ $att -eq 0 ]
	then
		countAb=$((countAb + 1))
	else
		countPresent=$((countPresent + 1))
	fi
done
echo "Present Days : $countPresent"
echo "Absent Days : $countAb" 
