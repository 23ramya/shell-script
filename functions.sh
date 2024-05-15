#!/bin/bash

USERID=$(id -u)  #this is for super user
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #this is used for we will print with out .sh here $0 will give what ever script we used that script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log

VALIDATE(){
    if [$1 -ne 0]
    then

    echo "$2....FAILURE"
    exit 1
    else
    echo "$2....    SUCESS"

    fi

}
if [ $USERID -ne 0]
then 
echo "please run this script with out root acess"
exit 1 # manually exit if error comes
else
echo "you are super user"

fi
dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git"