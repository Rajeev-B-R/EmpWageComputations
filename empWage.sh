#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalWorkHrs=0;
totalWorkingDays=0;

function getWorkHours () {
	case $1 in
		$isFullTime)
			workHrs=16
            		;;
        	$isPartTime)
            		workHrs=8
            		;;
        	*)
        		workHrs=0
            			;;
    		esac
		echo $workHrs
}

function calcDailyWage () {
	local workHrs=$1
	wage=$(( $workHrs * $empRatePerHr ))
	echo $wage
}

while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        (( totalWorkingDays++ ))
        workHrs="$( getWorkHours $((RANDOM%3)) )"
	totalWorkHrs=$(( $totalWorkHrs + $workHrs ))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHrs )"
done

totalSalary=$(( $totalWorkHrs * $empRatePerHr ));
echo "Daily wage " ${empDailyWage[@]}

