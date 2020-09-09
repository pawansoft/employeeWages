#!/bin/bash
FULL_DAY_HOUR=8;
WAGE_PER_HOUR=20;
totalSal=0
PART_TIME_HOUR=8;
countPresent=0;
countAb=0
presentHour=0;

	att=$((RANDOM%3))
	echo $att
	if [ $att -eq 0 ]
	then
		echo "Absent"
	elif [ $att -eq 2 ]
	then
		echo "Part Time"
		presentHour=$((presentHour + 8))
		totalSal=$((totalSal + $presentHour * $WAGE_PER_HOUR))
		
	else
		echo "Present"
		totalSal=$((totalSal + $FULL_DAY_HOUR * $WAGE_PER_HOUR))
	fi
	echo "$totalSal"

