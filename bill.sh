#!/bin/bash
# Electricity bill calculation

read -p "Enter your electricity unit: " unit

if [[ $unit -eq 0 ]]; 
then
  echo "Your account is not created"
elif [[ $unit -le 100 ]]; 
then
  echo "Your electricity bill is free !!"
elif [[ $unit -le 200 ]]; 
then
  bill=$(( (unit - 100) * 5 ))
  echo "Your electricity bill is: $bill"
else
  bill=$(( (100 * 5) + (unit - 200) * 10 ))
  echo "Your electricity bill is: $bill"
fi
