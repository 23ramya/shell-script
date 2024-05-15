#!/bin/bash

USERID=$(id -u)

if [USERID -ne 0]

then
echo "please run this script without aceess."

exit 1 #manually exit if erroe comes

else

echo "you are super user"

fi

dnf install mysql -y
