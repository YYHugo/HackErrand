#!/bin/bash

# From: https://www.hackerrank.com/challenges/bash-tutorials---looping-and-skipping/problem
# you may use different approaches
for x in {1..100..2}
do
    echo $x
done

# 'seq <begin> <step> <end>' generates a sequence of numbers from <begin> to <end> with a <step> (if not included, it's incrementally)
for i in `seq 1 2 100` ;
do
    echo $i
done

# or with while-loop
COUNTER=1
while [ $COUNTER -lt 100 ]; do
    echo $COUNTER
    let COUNTER=COUNTER+2
done
