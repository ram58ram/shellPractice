#! /bin/bash

# NUUMBER=$1

# if [ $1 -ge 10 ]; then
#     echo "given number is greater than 10"
# else
#     echo "it is less than 10"
# fi
# echo "end of the script"

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "this is not root user"
    sudo su -
    echo "switched to root success? $?"    
else
    echo "you are root user"
fi
yum install mysql -y