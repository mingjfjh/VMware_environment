#!/bin/bash
rm cscope.* tags 
#chmod 777 -R ./*
#echo "chmod 777 -R ./*"
find ./ -name "*.h" > cscope.files
find ./ -name "*.c" >> cscope.files
cscope -bkq -i cscope.files
ctags ./* -R
[ ! -f .svn ] && {
    echo "touch .svn"
    touch .svn
}
