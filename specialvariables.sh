#!/bin/bash

echo "All variable :$@"
echo "Number of variables passed : $#"
echo "script name :$0"
echo "Current working directory : $PWD"
echo "Home dirctory of current user : $HOME"
echo "Which user is running this acript : $USER"
echo "Hostname : $HOSTNAME"
echo "Process ID of the current shell script : $$"
sleep 60
echo "process ID of last background command :$!"
