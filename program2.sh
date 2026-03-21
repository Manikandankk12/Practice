#!/bin/bash

# Simple shell script to check even or odd

num=9

if [ $((num % 2)) -eq 0 ]
then
    echo "$num is Even"
else
    echo "$num is Odd"
fi
echo "Finished"
