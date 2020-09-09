#!/bin/bash
FULL_DAY_HOUR=8;
WAGE_PER_HOUR=20;
totalSal=0
PART_TIME_HOUR=8;
countPresent=0;
countAb=0
presentHour=0;

	att=$((RANDOM%3))
	case $att in
	"1")
		echo "Absent"
		;;
	"2")
		echo "Part Time"
		presentHour=$((presentHour + 8))
		totalSal=$((totalSal + $presentHour * $WAGE_PER_HOUR))
		;;
		
	*)
		echo "Present"
		totalSal=$((totalSal + $FULL_DAY_HOUR * $WAGE_PER_HOUR))
	esac
	echo "$totalSal"

