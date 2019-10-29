# Question 2

Create the file `numbers.txt` with the following content:

```
100
200
300
400
500
```

Use the following command to create the file:

`cat << 'EOF' > numbers.txt
100
200
300
400
500
EOF`{{ execute }}

Now use `awk` to print the total:

>>Q2: Enter the command here:<<
=~= awk '{sum += $1} END {print sum}' numbers.txt


