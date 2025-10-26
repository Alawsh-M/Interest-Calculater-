#Interest Calculater

#!/bin/bash

# simple-interest.sh: Calculates Simple Interest (I = P * R * T)

# Check if three arguments (P, R, T) were provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <Principal> <Rate> <Time>"
    exit 1
fi

P=$1 # Principal amount
R=$2 # Annual Interest Rate (e.g., 0.05 for 5%)
T=$3 # Time in years

# Use 'bc' (basic calculator) for floating-point arithmetic
# Formula: Interest = P * R * T
INTEREST=$(echo "scale=2; $P * $R * $T" | bc)

echo "Simple Interest: $INTEREST" 
