#!/bin/bash

PUNCH=""

if [[ $1 = "danger!" ]]; then
  STR="run, silly human!"
elif [[ $1 = "danger" ]]; then
  STR="Hmm, that sucks."
elif [[ $1 = "kale" ]]; then
  STR="An unsatisfying alternative."
elif [[ $1 = "dna" ]]; then
  STR="BINGO!"
elif [[ $1 = "joke" ]]; then
  STR="What's better than a talking dinosaur?"
  PUNCH="A spelling bee!"
elif [[ $1 = "compliment" ]]; then
  STR="If you were a dinosaur..."
  PUNCH=" you'd be a Gorgeousaurus"
else
  STR="Hi!"
fi

printf "\n\n\n"
printf "                                   __  \n"
printf "                                  / _)  "
echo $STR
printf "                           .-^^^-/ /  \n"
printf "                        __/       /  \n"
printf "                       <__.|_|-|_|  \n"
printf "\n\n\t\t\t"
echo $PUNCH
printf "\n\n"