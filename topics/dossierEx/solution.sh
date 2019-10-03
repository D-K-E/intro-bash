#!bin/bash

curdi=$(realpath .)
projname="Voiture"
projpath=${curdi}/${projname}
mkdir ${projpath}
els=("docs" "tests" "libs" "src" "include" "README.rst" "LICENSE")
mesClassVals=("roue.hpp" "direction.hpp" "siege.hpp")

for el in ${els[@]}; do
    if test "${el}" == "README.rst"; then
        touch ${projpath}/${el}
    elif test "${el}" == "LICENSE"; then
        touch ${projpath}/${el}
    else
        mainp=${projpath}/${el}
        mkdir ${mainp}
        if test "${el}" == "src"; then
            touch "${mainp}/voiture.cpp"
        fi
        if test "${el}" == "libs"; then
            for lib in "GestionDEnergie" "ReglesSecurites"; do
                mkdir ${mainp}/${lib}
                if test "${lib}" == "GestionDEnergie"; then
                    touch "${mainp}/${lib}/gestionEnergieStatic.a"
                    touch "${mainp}/${lib}/gestionEnergieDynamic.so"
                else
                    touch "${mainp}/${lib}/reglesSecuStatic.a"
                    touch "${mainp}/${lib}/reglesSecuDynamic.a"
                fi
            done
        fi
        if test "${el}" == "include"; then
            mkdir "${mainp}/LibA"
            touch "${mainp}/LibA/MoniteurEnergie.hpp"
            mkdir "${mainp}/LibB"
            touch "${mainp}/LibB/MoniteurSecurite.hpp"
            mkdir "${mainp}/mesClasses"
            for mcls in ${mesClassVals[@]}; do
                touch "${mainp}/mesClasses/${mcls}"
            done
        fi
    fi
done
