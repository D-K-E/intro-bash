#####################
Dossiers et Fichiers
#####################

L'un de cas d'usage le plus fréquent de bash c'est la création des nouvelles
dossiers et des fichiers.

Les commandes qu'on utilise pour le faire sont :code:`mkdir` pour les dossier
et :code:`touch` pour les fichiers.


Voici un exemple d'un program qui construit l'hiérarchie suivante dans le
dossier en courant:

- projectName

  - docs
  - tests
  - notes
  - myApp
    
    - app.py
    - module1

      - __init__.py

    - module2

      - __init__.py
      - module.py
      - submodule1

.. code:: bash

    currentFolder=$(realpath .)
    read -p "Entrez un nom pour le dossier: " projectName
    pnamePath="${currentFolder}/${projectName}"
    mkdir ${pnamePath}
    docsPath="${pnamePath}/docs"
    mkdir ${docsPath}
    testsPath="${pnamePath}/tests"
    mkdir ${testsPath}
    appPath="${pnamePath}/myApp"
    mkdir ${appPath}
    appPyPath="${appPath}/app.py"
    touch ${appPyPath}
    module1Path="${appPath}/module1"
    mkdir ${module1Path}
    module1InitPath="${module1Path}/__init__.py"
    touch ${module1InitPath}
    module2Path="${appPath}/module2"
    mkdir ${module2Path}
    module2InitPath="${module2Path}/__init__.py"
    touch ${module2InitPath}
    module2PyPath="${module2Path}/module.py"
    touch ${module2PyPath}
    submodulePath="${module2Path}/submodule1"
    mkdir ${submodulePath}


Voici les choses nouvelles dans le code:

- :code:`$()` les nouvelles parenthèses nous indiquent l'expansion de
  fonction. Il simplement substitue le résultat de fonction.
- :code:`read -p "Entrez un nom pour le dossier: " projectName`. Il imprime ce
  qui est entre les marques de citation en terminal et attend pour que
  l'utilisateur puisse entrer un texte. Après il affecte la valeur entrée par
  l'utilisateur au variable :code:`projectName`


Exercice
----------

Produisez l'hiérarchie suivant dans le dossier :code:`dossierEx`:

- Voiture

  - docs

  - tests

  - libs

    - GestionDEnergie

      - gestionEnergieStatic.a 
      - gestionEnergieDynamic.so

    - ReglesSecurites
      
      - reglesSecuStatic.a
      - reglesSecuDynamic.so

  - src

    - voiture.cpp

  - include

    - LibA

      - MoniteurEnergie.hpp
        
    - LibB

      - MoniteurSecurite.hpp

    - mesClasses

      - roue.hpp

      - direction.hpp

      - siege.hpp

  - README.rst

  - LICENSE
