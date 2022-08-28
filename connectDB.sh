#! /usr/bin/bash

echo "*---------------------------------*"
echo "*   You are in Tables menu        *" # add the database name before the tables word
echo "*---------------------------------*"
echo "*  (1) Create Table               *"
echo "*  (2) List Tables                *"
echo "*  (3) Drop Table                 *"
echo "*  (4) Insert                     *"
echo "*  (5) Select                     *"
echo "*  (6) Delete                     *"
echo "*  (7) Update                     *"
echo "*  (8) Back to Main Menu          *"
echo "*  (0) exit                       *"
echo "*---------------------------------*"
read -e -p "${White}Enter Your Selection: " selection 
    case $selection in
        1)  ./createTbl.sh;;
        2)  ./listTbl.sh;;
        3)  ./dropTbl.sh;;
        4)  ./insert.sh;;
        5)  ./select.sh;;
        6)  ./delete.sh;;
        7)  ./update.sh;;
        8)  ./start.sh;;
        0)  echo ""
            echo "Good Bye ! ..........."
            echo ""
            exit;;     
        *)  echo -e "${Red}Wrong Selection !"
    esac