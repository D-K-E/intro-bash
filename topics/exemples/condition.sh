#!bin/bash

read -p "entrez votre age: " age

declare -i age=${age}

if test ${age} -lt 18; then
    echo "Vous êtes mineurs"
else
    echo "Vous êtes adultes"
fi
