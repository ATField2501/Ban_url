#!/bin/bash
# -*- coding: utf8
# Auteur: Cagliostro <atfield2501@gmail.com>
# Script de bannissement des url importunes (popup et autres). Envois l'url vers le fichier hosts en lui indiquant une redirection locale.
# Pour fonctionner, le script à besoin du bit suid <chmod +s Ban_url.sh>



if [ $# = 0 ]                                       
then
    echo "..Aucune cible spécifié. ."
elif [ $1 = -h ]
then
    echo " Bannissement d'url "
    exit
else
    echo "******* Caglio-Script ********"
    echo "      Bannissement url        "
    sudo su -c "echo '0.0.0.0 $1' >> /etc/hosts"
    cat /etc/hosts
fi
