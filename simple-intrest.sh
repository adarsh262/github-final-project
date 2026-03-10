#!/bin/bash
# This script calculates simple interest.

echo "--- Simple Interest Calculator ---"

# Input: Principal amount
echo -n "Enter the principal amount: "
read p

# Input: Annual rate of interest
echo -n "Enter the annual rate of interest (in %): "
read r

# Input: Time period
echo -n "Enter the time period (in years): "
read t

# Calculation: Interest = (P * R * T) / 100
# We use 'bc' for decimal support or 'expr' for integers.
# Using 'bc' is preferred for financial calculations:
interest=$(echo "scale=2; $p * $r * $t / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "----------------------------------"
echo "Total Interest: $interest"
echo " Amount (Principal + Interest): $total"
