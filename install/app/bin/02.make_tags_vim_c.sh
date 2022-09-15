#!/bin/bash
rm cscope.* tags || true
find ./ -name "*.h" > cscope.files
find ./ -name "*.c" >> cscope.files
cscope -bkq -i cscope.files
ctags ./* -R
[ ! -f .svn ] && {
    echo "touch .svn"
    touch .svn
}
