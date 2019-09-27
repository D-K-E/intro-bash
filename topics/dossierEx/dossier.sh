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
