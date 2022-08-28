#! /usr/bin/bash

DB_regex='add regex here late'

read -p "Enter Database Name: " dbName
# first check if the folder (database) not exist # then create it
if [ ! -d ~/Database/$dbName ]; then
    #if [[ $dbName =~ [^$DB_regex] ]]; then # need to fix
    #    echo "Please write a valid name !"
    #    ./createDB.sh
    #else
        mkdir ~/Database/$dbName
        read -p "$dbName Database Created Successfully ! , would you like to connect ? y|n " YesNo
        case $YesNo in
            'y'|'Y') ./connectDB.sh;;
            *) ./start.sh;;
        esac
    #fi
else
    echo "$dbName Already Exist !"
fi
./start.sh
