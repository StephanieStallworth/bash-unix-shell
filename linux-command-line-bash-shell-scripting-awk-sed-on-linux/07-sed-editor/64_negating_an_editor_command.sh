# Apply to all lines except line 4
sed '4!s/number /#/' data.txt

# Apply to all lines except from line 3 to 8
sed '3,8!s/number /#/' data.txt

# Apply to all lines except the last line
sed '$!s/number /#/' data.txt

# Apply to all lines that DON'T contain London
sed '/London/!s/Linux/Unix' empdata