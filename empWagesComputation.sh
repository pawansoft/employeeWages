#!/bin/bash
FULL_DAY_HOUR=8;
WAGE_PER_HOUR=20;
totalSal=0
PART_TIME_HOUR=8;
TOTAL_WORKING_HOUR=100
countAb=0
presentHour=0;
PART_TIME_SAL=0
WORKINGDAY_IN_MONTH=20;
day=0;
while [[ $day -le $WORKINGDAY_IN_MONTH && $presentHour -lt $TOTAL_WORKING_HOUR ]] 
do
	att=$((RANDOM%3))
	case $att in
	"1")
		echo "Absent"
		;;
	"2")
		echo "Part Time"
		presentHour=$((presentHour + 8))
		;;
		
	*)
		echo "Present"
		day=$((day+1))
		;;

	esac
done

function Hours()
{
	day=$1
	hour=$2
	workHour=$((day * 8 + hour))

	return $workHour
}
Hours $day $presentHour
retHour=$?

#function CalculateSal()
#{
#}
echo $retHour
