echo "Welcome to Employee Wage Computation"

ispresent=1;
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empHrs=8;
totalSalary=0;

randomCheck=$(( RANDOM%2 ));
if [[ $isPresent -eq $randomCheck ]];
then
	echo "Employee is present"
else
	echo "Not present"
fi

salary=$(( $empHrs * $empRatePerHr ));
echo $salary
