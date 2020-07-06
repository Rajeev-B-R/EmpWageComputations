#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
	empCheck=$(( RANDOM%3 ));
    		case $empCheck in
        		$isFullTime)
            			empHrs=16
            			;;
        		$isPartTime)
            			empHrs=8
            			;;
        		*)
        		empHrs=0
            			;;
    		esac
		totalEmpHrs=$(( $totalEmpHrs + $empHrs ))

done

totalSalary=$(( $totalEmpHrs * $empRatePerHr ));

