#!bin/bash
echo "Salut!"
echo "Voici un petit script"
echo "le débogage commence"
myVar="un variable"
myVar2="un autre variable"
set -x
echo "le débogage a commencé"
echo ${myVar}
echo ${myVar2}
echo "le débogage termine"
set +x
echo "le débogage a terminé"

