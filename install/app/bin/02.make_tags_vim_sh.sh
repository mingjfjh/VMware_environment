#!/bin/bash
rm cscope.* tags || true
find ./ -name "*.sh" > cscope.files
#find ./ -name "*.c" >> cscope.files
cscope -bkq -i cscope.files
ctags ./* -R
touch .svn
