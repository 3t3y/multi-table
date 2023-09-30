#!/bin/sh
if[$# -ne 2];then
echo "Usage: $0Invalid input"
exit 1
fi
if![["$1"=~^[1-9][0-9]*$]]||![["$2"=~^[1-9][0-9]*$]];then
echo "Input must be greater than 0"
exit 1
fi

 rows="$1"
 cols="$2"
sum=0
for i in $(seq 1 "$rows");
do
        for j in $(seq 1 "$cols");
do
  result=$((i * j))
  echo " $i * $j=$result"
done
echo " "
done
exit 0
