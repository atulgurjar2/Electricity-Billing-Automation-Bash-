# Electricity-Billing-Automation-Bash-
#!/bin/bash

#for electricity bill calculation with proper slabs

read -p "Enter your electricity unit: " unit

if [[ $unit -eq 0 ]]; then
    echo "Your account is not created"
elif [[ $unit -le 100 ]]; then
    echo "Your electricity bill is free !!"
elif [[ $unit -le 200 ]]; then
    # First 100 units are free, units from 101 to 200 are charged at 5/unit
    bill=$(( (unit - 100) * 5 ))
    echo "Your electricity bill is: $bill"
else
    # First 100 are free (100 * 0)
    # Next 100 units (101-200) are charged at 5/unit = 500
    # Remaining units above 200 are charged at 10/unit
    bill=$(( (100 * 5) + ((unit - 200) * 10) ))
    echo "Your electricity bill is: $bill"
fi

