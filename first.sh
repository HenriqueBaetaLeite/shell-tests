#!/bin/bash

echo "Numero de argumentos passados: $#"

# a flag é considerada como argumento

while getopts u: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
    esac
done

if [ $# -lt 1 ];
    then
        echo "Precisa fornecer ao menos 1 argumento!"
        exit 1
else
    echo "Aí sim, precisamos de argumentos aqui :)"
    echo "Argumento(s) passado(s): $*"
    echo "Argumento 3: $3"
    echo "Argumento -u: $username"
fi


echo "O caminho atual é:"

pwd

echo "Info de hora atual e tempo que o computador está ligado:"

uptime

echo "Seu nome de usuário é:"

whoami

read teste

echo "Você digitou $teste"


