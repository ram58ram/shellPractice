#! /bin/bash

echo "Hello there"
PERSON1="Ramesh"
PERSON2="Suresh"

echo "Hello ${PERSON1}"
echo "there $PERSON2"
echo "this script executed at $(date +%M)"
echo "this script executed at $(date)"
read "Enter your name"NAME
echo "your name is $NAME"
read -s "ENTER password"PASS
echo "your PASSWORD is $PASS"
read -n "is this in same line" line
echo "yes same line $line"
readh -s -n "is securre same line" linesecure
echo "yes this is secure same line $linesecure"
echo "command line 1 $1"
echo "command line 2 $2"
echo "command all lines $@"
echo "command lines are @#"
echo "command lines sing string are @*"