#!bin/bash

read -p "Choissez votre type d'iteration: (f)or/(w)hile: " typeIter

if test "${typeIter}" == "f"; then
    echo "voici un exemple produit avec itération for"
    folder=$(pwd)
    for el in $(ls *.sh); do
        echo "voici le contenu de ${el}"
        echo $(cat $folder/${el});
    done
elif test "${typeIter}" == "w"; then
    echo "voici un exemple avec itération while"
    read -p "entrez un chiffre entre 1-6: " chiffre
    declare -i chiffre=${chiffre}
    declare -i k="0"
    while test ${k} -lt ${chiffre}; do
        declare -i g="0"
        while test ${g} -lt ${chiffre}; do
            res=$[${g}*${k}]
            echo "${k} x ${g} = ${res}";
            g=${g}+1
        done;
        k=${k}+1
    done
else
    echo "type d'iteration inconnu: ${typeIter}"
fi

