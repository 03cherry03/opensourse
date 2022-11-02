#!/bin/bash
#set -x
 read -p "enter the weight in kg:" wgt
 read -p "enter the height in cm:" cm
mtr=$( echo "scale=2; $cm / 100" |bc )
 
 y=$( echo "scale=2; $mtr * $mtr" | bc )
 BMI=$( echo "scale=2; $wgt / $y" | bc )
 
if [ 1 -eq "$(echo "$BMI < 18.5" | bc)" ]
    then
       echo "저체중입니다."
elif [ 1 -eq "$(echo "$BMI > 18.5" | bc)" ] && [ 1 -eq "$(echo "$BMI < 23" | bc)" ]
    then
       echo "정상체중입니다."
elif [ 1 -eq "$(echo "$BMI > 23" | bc)" ]
    then
         echo "과체중입니다."
    fi 
   
