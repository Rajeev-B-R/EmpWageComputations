echo "Welcome to Employee Wage Computation"

isPresent=1;
empRatePerHr=20;
empHrs=8;
salary=0;

randomCheck=$(( RANDOM%2 ));
if [ $isPresent -eq $randomCheck ];
then
	echo "Employee is present"
else
	echo "Not present"
fi

salary=$(( $empHrs * $empRatePerHr ));
echo $salary
