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

