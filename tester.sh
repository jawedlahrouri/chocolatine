#!/bin/bash

output=$(./example)

if [ "$output" = "Hello World!" ]; then
    echo "c'est ok !! ;)"
    exit 0
else
    echo "il y a une erreur quelque part"
    exit 1
fi
