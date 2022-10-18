#!/bin/bash

while getopts u:r: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        r) repo=${OPTARG};;
    esac
done

cd && cd Trybe/back-end/projetos

git clone $repo

echo "<<<<<<<<<<   Repositório clonado com sucesso   >>>>>>>>>>"

newPath=(${repo//// })

finalPath=(${newPath[1]//./ })

cd ${finalPath[0]}

git checkout -b $username

npm install
