# Question 2

You can use the `END` block to print an answer that you compute by adding up values.

Create the file `numbers.txt` with the following content:

```
100
200
300
400
500
```

Use the following command to create the file quickly.

`cat << 'EOF' > numbers.txt
100
200
300
400
500
EOF`{{ execute }}

Now use `awk` to read the lines in the file and print out the total. Use a `sum` variable, sum up the values in the file, and use `END` and the `print` statement to print the `sum` variable.

>>Q2: Enter the command you used here:<<
=~= awk '{sum += $1} END {print sum}' numbers.txt

If you're stumped, show the answer.
