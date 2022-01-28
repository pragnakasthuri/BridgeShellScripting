#!/bin/bash
MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ];
 do
  number[$count]=$RANDOM
  ((count += 1))
 done

echo "${number[*]}"
