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
#DOUBLE COIN FLIP

for (( index=1; index<=$plays*2; index++ ))
do
   randomNumber=$(( RANDOM % 2 ))
        randomNumber2=$(( RANDOM % 2 ))
   if [ $randomNumber -eq $IS_HEAD -a $randomNumber2 -eq $IS_HEAD ]
        then
        coin[HH]=$(( "${coin[HH]}" + 1 ))
      elif [ $randomNumber -eq $IS_HEAD -a $randomNumber2 -eq $IS_TAILS ]
      then
                        coin[HT]=$(( "${coin[HT]}" + 1 ))
                elif [ $randomNumber -eq $IS_TAILS -a $randomNumber2 -eq $IS_HEAD ]
                then
                        coin[TH]=$(( "${coin[TH]}" + 1 ))
                elif [ $randomNumber -eq $IS_TAILS -a $randomNumber2 -eq $IS_TAILS ]
                then
                        coin[TT]=$(( "${coin[TT]}" + 1 ))
        fi
done
#TRIPLE COIN FLIP

for (( index=0; index<=$plays*3; index++ ))
do
        randomNumber=$(( RANDOM % 2 ))
   randomNumber2=$(( RANDOM % 2 ))
        randomNumber3=$(( RANDOM % 2 ))
        if [ $randomNumber -eq $IS_HEAD -a $randomNumber2 -eq $IS_HEAD -a $randomNumber3 -eq $IS_HEAD ]
                then
                        coin[HHH]=$(( "${coin[HHH]}" + 1 ))
                elif [ $randomNumber -eq $IS_HEAD -a $randomNumber2 -eq $IS_HEAD -a $randomNumber3 -eq $IS_TAILS ]
                then
                        coin[HHT]=$(( "${coin[HHT]}" + 1 ))
                elif [ $randomNumber -eq $IS_HEAD -a $randomNumber2 -eq $IS_TAILS -a $randomNumber3 -eq $IS_TAILS ]
      then
                          coin[HTT]=$(( "${coin[HTT]}" + 1 ))
                elif [ $randomNumber -eq $IS_TAILS -a $randomNumber2 -eq $IS_TAILS -a $randomNumber3 -eq $IS_TAILS ]
      then
                           coin[TTT]=$(( "${coin[TTT]}" + 1 ))
                elif [ $randomNumber -eq $IS_TAILS -a $randomNumber2 -eq $IS_HEAD -a $randomNumber3 -eq $IS_HEAD ]
      then
                                coin[THH]=$(( "${coin[THH]}" + 1 ))
                elif [ $randomNumber -eq $IS_TAILS -a $randomNumber2 -eq $IS_TAILS -a $randomNumber3 -eq $IS_HEAD ]
      then
                                coin[TTH]=$(( "${coin[THH]}" + 1 ))
                elif [ $randomNumber -eq $IS_TAILS -a $randomNumber2 -eq $IS_HEAD -a $randomNumber3 -eq $IS_TAILS ]
      then
            coin[THT]=$(( "${coin[THT]}" + 1 ))
                elif [ $randomNumber -eq $IS_HEAD -a $randomNumber2 -eq $IS_TAILS -a $randomNumber3 -eq $IS_HEAD ]
      then
            coin[HTH]=$(( "${coin[HTH]}" + 1 ))
        fi
done

