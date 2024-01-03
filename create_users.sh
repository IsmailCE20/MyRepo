#!/bin/bash
<<COMMENT
3. Develop a script that automates the process of adding or removing user accounts. 
This script can take inputs such as username and password making it easier to manage user accounts.
COMMENT

read -p "Enter user name:" USER
cat /etc/passwd | grep "$USER"
if [[ $? == 0 ]]
    then
    echo "User $USER is already exits"
    userdel $USER
    echo "User $USER is deleted successfuly"
else
    echo "User $USER is not found"
    useradd $USER
    echo "User $USER created successfuly"
    
fi
    
