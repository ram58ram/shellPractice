#! /bin/bash

# NUUMBER=$1

# if [ $1 -ge 10 ]; then
#     echo "given number is greater than 10"
# else
#     echo "it is less than 10"
# fi
# echo "end of the script"

# USERID=$(id -u)
# if [ $USERID -ne 0 ]; then
#     echo "this is not root user"
#     sudo su -
#     echo "switched to root success? $?"    
# else
#     echo "you are root user"
# fi
# yum install mysql -y

fruitArray=("organge" "banna" "apple")
dayArray=(MON SUN TUE)

echo "fruits are ${fruitArray[1]}"
echo "fruits are ${fruitArray[2]}"
echo "fruits are ${dayArray[@]}"
echo "fruits are ${dayArray[#]}"