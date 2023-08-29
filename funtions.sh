#! /bin/bash

#DATE=$(date+%F-%H-%M-%S)
DATE=$(date+%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)

VALIDATE(){

if [ $1 -ne 0]; then
    echo "$2 is a....FAILURE"
    exit 1
else
    echo "$2 is a....SUCESS"
fi
}

if [ $USERID -ne 0]; then
    echo "ERROR: Please run this script with root user"
    exit 1
else
    echo "you are the root user"
fi

yum install mysql -y &>> $LOGFILE

## here in $? will be received as 1st argument and mysql as 2nd argunment in function VALIDATE
VALIDATE $? "Installing mysql"

yum install postfix -y &>> $LOGFILE

VALIDATE $? "Installing postfix"
