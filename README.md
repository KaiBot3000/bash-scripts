# Dino

![image](dino-compliment.png)

An exploration of bash scripting and aliasing. 

Try out dino from your command line!

```sh
🍀  kai:kai$ dino danger!



                                   __  
                                  / _)  run, silly human!
                           .-^^^-/ /  
                        __/       /  
                       <__.|_|-|_|  
```

Arguments:
```sh
$ dino compliment
$ dino dadjoke
$ dino danger
$ dino danger!
$ dino dna
$ dino date
$ dino joke
$ dino kale
$ dino meme
$ dino speak
```
# Git knife

A joke script for [Robb Godshaw](http://robb.cc/Art)

Adds a new `knife` command to git, for when you're just done.
This script works by intercepting all git commands, and passing on any that aren't `knife` to your usual git.

# Tellme

A way to let me know when long-running scripts are done, even if I've wandered off for coffee. 
Usage: `$ long-running-script.sh ; tellme`

# Installation

Clone repo:
```sh
$ cd ~
$ git clone https://github.com/kaibot3000/bash-scripts.git bash-scripts
```

Inside your bash profile, add the bash-scripts directory to your path, and make an alias for each script:
```sh
export PATH=~/bash-scripts:$PATH
alias dino="dino.sh"
alias knife="knife.sh"
alias tellme="tellme.sh"
```

In your terminal, `source` your script to get your updates:
```sh
$ source ~/.bash_profile
```

You should now be able to use the custom commands.

If you get a `Permission Denied` error, add execute permissions using `chmod`:

```sh
chmod +x dino.sh knife.sh tellme.sh
```
