#!/bin/bash

read x
read y

echo $((x + y))
echo $((x - y))
echo $((x * y))
[[ $y -eq 0 ]] && echo "Unable to perform a zero div" || echo$((x / y))

echo `expr `$x + $`y`
echo `expr `$x - $`y`
echo `expr `$x \* $`y`
echo `expr `$x / $`y`

printf "%s\n" $x{+,-,*,/}"($y)" | bc
