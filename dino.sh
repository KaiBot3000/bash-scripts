#!/bin/bash


if [[ $1 = "danger!" ]]; then
	STR="run, silly human!"
elif [[ $1 = "kale" ]]; then
	STR="An unsatisfying alternative."
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
printf "\n\n\n"