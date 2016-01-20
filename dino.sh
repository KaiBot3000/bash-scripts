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
    say $WRD
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
    echo "Could not detect the web browser to use."
  fi
else
  STR="Hi!"
fi

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