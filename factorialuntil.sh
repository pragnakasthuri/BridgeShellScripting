#!/bin/bash
echo "Enter a number"
read num

fact=1

until [ $num -lt 1 ]
do
  fact=$((fact * num)) 
  num=$((num - 1))      
done

echo $fact
