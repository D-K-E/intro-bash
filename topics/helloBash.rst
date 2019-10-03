###########
Hello Bash
###########

Bash, plutôt Borne Again Shell, est notre principal atout pour communiquer
avec différents parties d'OS. Il est là pour qu'on puisse gérer l'OS dans des
cas des besoins spécifiques. On va l'utiliser comme une outil de gestion,
c'est à dire au moment vos besoins dépassent la gestion des taches,
execution des taches répétitives, etc, il faut penser à d'utiliser des autres
langues mieux adaptées pour construire des choses. 


Ayant dit tout cela ouvrons un terminal pour faire nos premières pas dans le
bash.

- Pressez :code:`ctrl+alt+t` ou sélectionnez le terminal dans le bar des
  outils d'Ubuntu.

- Ecrivez le suivant :code:`echo "Hello World"`, et tapez sur entrée.

- Vous allez voir que le terminal vous affiche :code:`Hello World`.

- Ecrivez le suivant :code:`name=FatihSultanMehmetHan` et tapez sur entrée.

- Ecrivez le suivant :code:`echo ${name}`. Vous allez voir que le terminal vous
  affiche :code:`FatihSultanMehmetHan`

- Essayons le suivant :code:`name=Fatih Sultan Mehmet Han` et tapez entrée.
  Le terminal va vous afficher un erreur en disant qu'il ne peut pas trouver,
  le commande :code:`Sultan`

- Ressayons avec le suivant :code:`name="Fatih Sultan Mehmet Han"`

- Et maintenant de nouveau :code:`echo ${name}`.

- On voit bien le :code:`Fatih Sultan Mehmet Han` dans le terminal.


Dans ce qu'on vient de faire:

- :code:`echo` s'appelle un **commande**
- :code:`name` est un **variable**
- :code:`"Fatih Sultan Mehmet Han"` est un **valeur**
- :code:`$` est **l'opérateur d'expansion de variable**, ou évaluation des
  substitutions.
- :code:`{}` montre le début et la fin de ce qu'il faut substituer/évaluer.
  
On *affect* des valeurs à des variables, et on *appelle* les commandes, parfois on
dit on lance des commandes aussi. Par contre, `lancer` est plus utilisé pour
des programmes, ensemble d'instructions, tandis que `appeller` traite
l'instruction en question en tant qu'une fonction. Cela est à adopter parce
qu'il diminue l'effort mentale de travailler avec des commandes.

Un script de bash, comme touts les programmes, est constitué par un ou
plusieurs *instructions*. Un instruction est composé d'un ou plusieurs
opérations dont certains sont nommés *expresssions*. Une expression est ce qui
pouvait être évalué par l'interpréteur ou compilateur pour produire une
valeur.

Voici un example d'usage des définitions qu'on vient de mentionner:

.. code:: bash

    monResultat=1+(26+48)*3
    echo ${monResultat}


- Instructions: 

  - :code:`monResultat=1+(26+48)*3`
  - :code:`echo ${monResultat}`

- Expressions:

  - :code:`(26+48)`
  - :code:`(26+48)*3`
  - :code:`1+(26+48)*3`
  - :code:`${monResultat}`

- Opérations:

  - :code:`(26+48)`
  - :code:`x*3`
  - :code:`1+y`
  - :code:`${variable}`
  - :code:`echo x`
  - :code:`monResultat=x`

Notez que je pouvais bien écrire le même programme comme le suivant:

.. code:: bash

    x=26+48
    y=${x}*3
    monResultat=1+${y}
    echo ${monResultat}

Dans ce cas on aura le même nombre d'expression, mais plusieurs opérations
et instructions.

Conditions
-----------

Les conditions dans le bash est fait comme le suivant:

.. code:: bash

    #!bin/bash

    read -p "entrez votre age: " age
    declare -i age=${age}

    if test ${age} -lt 18; then
        echo "Vous êtes adultes"
    else
        echo "Vous êtes mineurs"
    fi

Le syntax est donc :code:`if`, plus expression de teste suivit par :code:`;`
pour montrer que l'expression est bien fini et qu'on passe à d'autre chose.

Boucles
-----------

Les boucles sont fait comme le suivant.

.. code:: bash

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

