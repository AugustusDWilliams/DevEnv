#!/usr/bin/env zsh

function main() {
    CHECK+"$PWD/bin"
    echo $PWD
    if [[ -d "bin" ]]; then
        echo "True"
    else
        echo "False"
    fi
}

main