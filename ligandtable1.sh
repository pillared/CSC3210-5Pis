#!/bin/bash
#
# ligandtable.sh created by aasilo1
# run with command arguments ./
#
m=$1;l=$2;c=$3;p=$4
o=""
for w in {0..1}
do
 if [[ "$w" -eq 0 ]] ;then
  o="./dd_omp"
 fi
 if [[ "$w" -eq 1 ]] ;then
  o="./dd_threads"
 fi
 for x in {1..7}
 do 
  for y in {1..7}
  do  
   for z in {1..7}
   do
    echo $x $y $z
    echo $o $x $y $z $p >> results.txt
    echo `time $o $x $y $z $p` >> results.txt
    { time $o $x $y $z $p ; } 2>> results.txt
    echo '  ' >> results.txt
    echo '  ' >> results.txt
   done
  done
 done
done
