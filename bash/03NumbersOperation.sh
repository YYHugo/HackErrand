#!/bin/bash
#From: https://www.hackerrank.com/challenges/bash-tutorials---the-world-of-numbers/submissions/code/167737505
read x
read y

# Make Math operation and print value
echo $((x + y))
echo $((x - y))
echo $((x * y))
# special case: impossible to perform a division by zero
[[ $y -eq 0 ]] && echo "Unable to perform a zero div" || echo$((x / y))

# Different approach: expr - evaluate expressions
echo `expr `$x + $`y`
echo `expr `$x - $`y`
echo `expr `$x \* $`y`
[[ $y -ne 0 ]] && echo `expr `$x / $`y`

# Different approach by https://www.hackerrank.com/baadf00d
# print every string separated by a new line
# dc - arbitrary precision reverse-polish calculator stores numbers on a stack. Arithmetic operations pop arguments off the stack. Eg: 3 2 + (Equals 5)
# bc - like 'dc' but normal notation: 3+2
printf "%s\n" $x{+,-,*,/}"($y)" | bc
