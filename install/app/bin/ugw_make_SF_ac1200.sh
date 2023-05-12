#!/bin/bash

echo -E "=============== rm ./targets/$1/romfs ================="

TARGETS_FILE=
if [ -z $1 ];then
    tsfile=`cat ./tsfile.mk`
    TARGETS_FILE="${tsfile#*=}"
    echo "cat ./tsfile.mk ; TARGETS_FILE : $TARGETS_FILE"
else
    TARGETS_FILE="$1"
    echo "TARGETS_FILE=\$1 : $TARGETS_FILE"
fi


if [ ! -e ./targets/$TARGETS_FILE ];then
    echo "=========== ./targets/$TARGETS_FILE is not exist!!! =============="
    echo "nothing to do, exit!"
    exit 0 
fi

rm ./targets/$TARGETS_FILE/romfs/ -rf
make users_clean
make init
make users image

