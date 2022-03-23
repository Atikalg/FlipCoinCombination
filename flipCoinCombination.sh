#!/bin/bash -x
echo welcome flip coin combination result
#CONSTANTS
IS_HEAD=0
IS_TAILS=1
plays=0
#VARIABLES
declare -A coin
randomNumber=0
randomNumber2=0
randomNumber3=0
coin[HH]=0
coin[TT]=0
coin[HT]=0
coin[TH]=0
coin[T]=0
coin[H]=0
coin[HHH]=0
coin[HHT]=0
coin[HTT]=0
coin[TTT]=0
coin[THH]=0
coin[TTH]=0
coin[THT]=0
coin[HTH]=0
printf "Enter How many times you want to flip the coin:\n"
read plays

#SINGLE COIN FLIP
for (( index=1; index<=$plays; index++ ))
do
        randomNumber=$(( RANDOM % 2 ))

   if [ $randomNumber -eq $IS_HEAD ]
      then
         coin[H]=$(( "${coin[H]}" + 1 ))
      else
         coin[T]=$(( "${coin[T]}" + 1 ))
fi
done
