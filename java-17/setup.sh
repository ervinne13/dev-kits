#!/bin/bash

# I need to double check this, in one of my machines, just specifying . (current dir)
# does not work so i kinda have to pass it here manually (even $pwd doesn't work, weird)
docker build -t local/java:17 - < ./Dockerfile

[ ! -f ~/.bash_aliases ] && touch ~/.bash_aliases

if ! grep -Fq "alias djavac='docker run" ~/.bash_aliases
then
echo "alias djavac='docker run -v "$(pwd)":/src --name java-cli local/java:17 javac'" >> ~/.bash_aliases
echo "alias djava='docker run -v "$(pwd)":/src --name java-cli local/java:17 java'" >> ~/.bash_aliases
fi

source ~/.bashrc