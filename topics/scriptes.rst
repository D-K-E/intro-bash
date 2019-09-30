##############################
Alias et Débogué des scriptes
##############################

Alias
======

Dès fois on utilise certains programs couramment.
Il devient un peu répétitive de rentrer les paramètres courant qui
accompagnent l'usage de ces programmes. C'est pour ça que bash nous permet de
créer des alias qui nous permet d'appeler les executables avec des paramètres
avec un seul commande.

Attention, le procédure d'alias ce n'est pas très robuste dans des cas de
mélange de plusieurs commandes. Il est vraiment là pour qu'on peut facilement
donner des valeurs par défaut à certains commandes.

Pour des commandes complexes, c'est mieux d'utiliser les fonctions de bash.
L'usage des fonctions dépasse la cadre de notre introduction. Veuillez
consulter les ressources mentionnées dans :code:`helloBash.rst`.

Avant de créer des nouveaux alias voyons les alias déjà définis:

- Ouvrez un terminal et entrez :code:`alias`.
  Le commande :code:`alias` sans argument permet de voir des alias déjà
  définis.

Disons qu'on va créer un alias pour le commande :code:`rm -rf` qui va nous
permettre de supprimer les répertoires récursivement. On veut appeler cela
avec le raccourci :code:`rmf`. Voici les étapes qu'il faut suivre:

- On contrôle si on a déjà un commande appeler par le raccourci qu'on va
  définir: :code:`whereis rmf`. Si vous avez déjà un commande définit sous le
  nom de :code:`rmf`, veuillez utiliser un autre nom pour votre raccourci.

- :code:`alias rmf='rm -rf'`

Voilà. Si vous voulez conserver vos alias entre les sessions veuillez les
ajouter à :code:`~/.bash_aliases`

Je vous invite de créer un répertoire et de le supprimer avec votre nouvel
alias comme un exercice.

Déboguer
========

Souvent, malgré les efforts, les erreurs sont introduit aux scriptes, et il
faut les trouver. Un bon programme aide au développeur de se déboguer au lieu
de prétendre que tout va bien et cache des erreurs sous le tapis, donc lors
qu'on écrit des programmes, c'est plus réalistes de les écrire en pensant
qu'ils soient débogué après. Étant passé une bonne partie de ses horaires pour
déboguer des programmes, les développeurs ont développé des plusieurs
stratégies pour combattre contre les erreurs. Certains stratégies sont
introduit dans le dessein même de programme comme l'adoption des paradigmes
et/ou des patterns des développements. Certains d'autre sont agnostique au
dessein de programme, mais ils analysent l'exécution de programme.

Comment on fait ça dans le bash ?

Avec l'option :code:`-x` qui permet d'afficher la ligne d'exécution avant de
l'exécuter. L'usage est :code:`bash -x nomdescript.sh` On peut aussi marquer
certains endroits dans le script pour déboguer si on ne veut pas tout le temps
repasser toutes les lignes du scripte. :code:`set -x` marque l'endroit à
partir du quel le débogage commence dans le code et :code:`set +x` termine le
débogage.

Exemple:

.. code:: bash

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

L'exemple au-dessus vous montre le contenu de :code:`deboguer.sh`. Veuillez
l'executer à la fois comme :code:`bash -x exemples/deboguer.sh` et à la fois
comme :code:`bash exemples/deboguer.sh` pour voir la difference.
