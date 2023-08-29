#! /bin/bash

# NUUMBER=$1

# if [ $1 -ge 10 ]; then
#     echo "given number is greater than 10"
# else
#     echo "it is less than 10"
# fi
# echo "end of the script"

USERID=$(id -u)
if [ USERID -ne 0 ]; then
    echo "this is not root user"
else
    sudo su -
    yum install mysql -y
fi