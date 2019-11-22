#!/usr/bin/zsh


target_regex=\/dev\/ttyUSB
target_dir="/dev/ttyUSB*"

for comport in /dev/ttyUSB*; do
    port="${comport#$target_regex}"
    echo $port
done

