#! /bin/bash
echo  "enter a number:"
read num
rsum=0
for((i=1;i<=num;i++))
{
  rsum=$(( rsum + RANDOM ))
}

echo $rsum


