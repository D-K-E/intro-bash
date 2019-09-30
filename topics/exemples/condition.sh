#!bin/bash

read -p "entrez votre age: " age

if test ${age} -gt 18; then
    echo "Vous êtes adultes"
else
    echo "Vous êtes mineurs"
fi
