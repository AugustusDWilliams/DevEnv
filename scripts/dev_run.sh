#!/usr/bin/env zsh

function alt() {
    echo "In Alt Func";
    exit
}

function main() {
    echo "In Dev Run";
    exit
}

NAME=$0
ARG1=$1
#CURR="$PWD/new"
echo $NAME
echo $CURR
if [[ $ARG1 == "a" ]]; then
    main
else
    alt
fi
