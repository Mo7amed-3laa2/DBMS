#! /usr/bin/bash

# first check if there are databases (folders) or not, then list all folders.
# we eleimnate the first line (NR=1) because it is related to the total of folders.
if [[ -z $(ls ~/Database) ]] ; then
    echo -e "${Purple}There are no Databases to list !"
else
    echo "----------------------"
    ls -l ~/Database | awk -F ' ' '{if (NR!=1) {print "(",NR-1,")",$9}}'
    echo "----------------------"
    read -p "would you like to connect to any ? y|n " 
    case $YesNo in
        'y'|'Y') ./connectDB.sh;;
        *) ./start.sh;;
    esac
fi