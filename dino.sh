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
elif [[ $1 = "date" ]]; then
	STR="$(date)"
	PUNCH="(lol)"
elif [[ $1 = "speak" ]]; then
  STR="Teehee."
  WRD="raar"
  if which say > /dev/null; then
    say -v Albert $WRD
  elif which espeak > /dev/null; then
    espeak $WRD
  else
    PUNCH="Your computer doesn't like my voice :("
  fi
elif [[ $1 = "meme" ]]; then
  STR="Have you met philosoraptor?"
  # point the default browser to this url!
  URL="http://google.com/images?q=philosoraptor"
    # if the variable is a non-0 length
  if [ ! -z $BROWSER ]; then
    # hopefully this works for windows?
    $BROWSER $URL
  elif which open > /dev/null; then
    # it's osX
    open $URL
  elif which xdg-open > /dev/null; then
    # it's *nix
    xdg-open $URL
  elif which gnome-open > /dev/null; then
    # it's gnome
    gnome-open $URL
  else
    PUNCH="Could not detect which web browser to use."
  fi
elif [[ $1 = "dadjoke" ]]; then
  joke=$(curl -s https://icanhazdadjoke.com/)

  # Count number of lines in the joke 
  line_count=$(echo "$joke" | wc -l)

  if [ "$line_count" == "1" ]; then
    if [ `expr "$joke" : ".*[?].*"` -gt 0 ];
    then 
       STR="$(sed 's/?.*//' <<< "$joke")?"
       PUNCH=$(sed 's/^[^?]*?//' <<< "$joke")
    else
      STR=$joke
    fi
  # NOTE(G3): Throw out multiline jokes due to formating issues
  else
    PUNCH="Dad Joke fail! Please try again."
  fi
else
  STR="Hi!"
fi

clear
printf "\n\n\n"
printf "                                   __  \n"
printf "                                  / _)  "
echo "${STR}"
printf "                           .-^^^-/ /  \n"
printf "                        __/       /  \n"
printf "                       <__.|_|-|_|  \n"
printf "\n\n\t\t\t"
echo "${PUNCH}"
printf "\n\n"