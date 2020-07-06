#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
totalSalary=0;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
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

		salary=$(( $empHrs * $empRatePerHr ));
		totalSalary=$(( $totalSalary + $salary));
done

