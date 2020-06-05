#!/bin/bash


read -p 'Enter your username: ' USER

FLAG=true

while $FLAG; do
    read -r -p "Is this your username: ${USER} [y/N] " response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
    then :
      FLAG=false
    else :
      read -p 'Enter your username: ' USER
    fi
done

SED="s/y2845zha/${USER}/g"

find "./" -type f -path "*start.sh" -print0 | xargs -0 sed -i '' -e $SED

mkdir waterloo

chmod u+x start.sh
chmod u+x full-start.sh