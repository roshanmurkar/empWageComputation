#!/bin/bash -x

#uc1
echo "Welcome to Employee Wage Computation Program"

#uc2
isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi

#uc2-calculate daily empWage

emp1=1;
emp2=2;
emp3=3;
wagePerHr=20;
empCheck=$((RANDOM%4))

case $empCheck in
        $emp1)
                empHrs=8
                ;;
        $emp2)
                empHrs=4
                ;;
        $emp3)
                empHrs=2
                ;;
        *)
                empHrs=0
                ;;
esac
totalWageInDay=$(($empHrs*$wagePerHr))

#uc3-add Part Time

#uc2-calculate daily empWage

isPartTime=1;
empRatePerHr=20;
empCheck=$((RANDOM%2))

case $empCheck in
        $isPartTime)
                empHrs=8
                ;;
        *)
                empHrs=0
                ;;
esac
salarypartTime=$(($empHrs*$empRatePerHr))



