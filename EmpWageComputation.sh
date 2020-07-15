#!/bin/bash -x
#UC1
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi

#UC2
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
        empRatePerHr=20;
        empHrs=8;
        salary=$(($empHrs*$empRatePerHr));
else
        salary=0;
fi

#UC3
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ]
then
        empHrs=8;
elif [ $isPartTime -eq $randomCheck ]
then
        empHrs=4;
else
        salary=0;
fi
salary=$salary=$(($empHrs*$empRatePerHr));

#UC4
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));
case $empCheck in
        $isFullTime)
                empHrs=8;
                        ;;
        $isPartTime)
                empHrs=4;
                        ;;
                *)
                empHrs=0;
                        ;;
esac
salary=$(($empHrs*$empRatePerHr));


