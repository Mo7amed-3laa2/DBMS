#! /usr/bin/bash

# first check if there are databases (folders) or not, then list all folders.
# we eleimnate the first line (NR=1) because it is related to the total of folders.
if [[ -z $(ls ~/Database) ]] ; then
    echo -e "${Purple}There are no Databases to delete !"
else
    echo "----(Existing Databases)----"
    ls -l ~/Database | awk -F ' ' '{if (NR!=1) {print "(",NR-1,")",$9}}'
    echo "----------------------------"
    read -p "Type the name of the database you want to drop: " dropDBName
    if [ -d ~/Database/$dropDBName ]; then
        # remember to make a confirm message!
        rm -R ~/Database/$dropDBName
        echo -e "${Green}$dropDBName database has been dropped Successfully !"
    else
        echo "Please type a name for existing database (from the list above!)"
        ./dropDB.sh
    fi
fi

:'
function list2drop{
    read -e -p "${White}select the database you want to delete: " selection
    case $selection in
        1)  rm -R    ;;
        2)  ./listDB.sh;;
        *) echo "none";;
    esac
}
'