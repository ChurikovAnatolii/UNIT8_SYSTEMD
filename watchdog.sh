#!/bin/bash

WORD=$1
LOG=$2
Date=`date`

if grep $WORD $LOG &> /dev/null
then
        logger "$DATE: HERE it is $WORD"
else
        exit 0
fi
