#!/bin/bash -x

#uc0
echo "Welcome to Employee Wage Computation Program"

#uc1
isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi

echo "---------------------------------------------"
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
        $emp3)
                empHrs=2
                ;;
        *)
                empHrs=0
                ;;
esac
totalWageInDay=$(($empHrs*$wagePerHr))

echo "-----------------------------------------------"
#uc2-calculate partTime

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

echo "----------------------------------------------------"
#uc4 - using switch case part time and full time


isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));

case $empCheck in
        $isFullTime)
                empHrs=8
                ;;
        $isPartTime)
                empHrs=4
                ;;
        *)
                empHrs=0
                ;;
esac
empSalary=$(($empHrs*$empRatePerHr));


echo "---------------------------------------------"
#uc5-calculate wage for a month

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
maxHrsInMonth=10;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        case $empCheck in
                $isFullTime)
                        empHrs=8
                        ;;
                $isPartTime)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$empRatePerHr));

echo "--------------------------------------------------"


#uc6-condition for calculate wage

isFullTime=2;
isPartTime=1;
maxHrInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalWorkingHours=0;
totalWorkingDays=0;

function getWorkingHours() {
        case $1 in
                $isFullTime)
                        workHours=8
                        ;;
                $isPartTime)
                        workHours=4
                        ;;
                *)
                        workHours=0
                        ;;
        esac
}

while [[ $totalWorkingHours -lt $maxHrInMonth &&
        $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkingHours=$(($totalWorkingHours+$workHours));
done

totalSalary=$(($totalWorkingHours*$empRatePerHr));

echo "----------------------------------------------------"

#uc7-with function

isFullTime=2;
isPartTime=1;
maxHrInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalWorkingHours=0;
totalWorkingDays=0;

function getWorkingHours() {
        case $1 in
                $isFullTime)
                        workHours=8
                        ;;
                $isPartTime)
                        workHours=4
                        ;;
                *)
                        workHours=0
                        ;;
        esac
}

while [[ $totalWorkingHours -lt $maxHrInMonth &&
        $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkingHours=$(($totalWorkingHours+$workHours));
done

totalSalaryfun=$(($totalWorkingHours*$empRatePerHr));

echo "--------------------------------------------------------"
