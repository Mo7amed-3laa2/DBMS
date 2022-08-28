#! /usr/bin/bash
source ./colours.sh

# check if the database folder does not exist, create it
if [ ! -d ~/Database ]; then
    mkdir ~/Database >> /dev/null
    echo "New Folder For Database Has Been Created at " ~/
    echo ""
fi
# Main Menu
echo "*---------------------------------*"
echo "*      Welcome to our DBMS !      *"
echo "*---------------------------------*"
echo "*  (1) Create Database            *"
echo "*  (2) List Databases             *"
echo "*  (3) Connect To Databases       *"
echo "*  (4) Drop Database              *"
echo "*  (0) exit                       *"
echo "*---------------------------------*"
while true; do
    read -e -p "${White}Enter Your Selection: " selection 
    case $selection in
        1)  ./createDB.sh;;
        2)  ./listDB.sh;;
        3)  ./connectDB.sh;;
        4)  ./dropDB.sh;;
        0)  echo ""
            echo "Good Bye ! ..........."
            echo ""
            exit;;     
        *)  echo -e "${Red}Wrong Selection !"
    esac
done
