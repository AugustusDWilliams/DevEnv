#!/bin/zsh
# Script to list all installed versions of python

# Get all install versions of Python
python_list="$(whereis python)"

# Convert string to arr
#IFS=' ' read -ra python_arr <<< "$python_list"
python_arr=($(echo $python_list | tr ";" "\n"))

#Print the Python Versions
for i in "${python_arr[@]:1}"; do
    echo $i
done
