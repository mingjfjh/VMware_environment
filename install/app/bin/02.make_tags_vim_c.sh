#!/bin/bash
rm cscope.* tags GTAGS 
[ ! -f .svn ] && {
    echo "touch .svn"
    touch .svn
}
#chmod 777 -R ./*
#echo "chmod 777 -R ./*"
find ./ -name "*.h" > cscope.files
find ./ -name "*.c" >> cscope.files
cscope -bkq -i cscope.files
#ctags -R --langmap=c:+.inl -h +.inl --fields=+aiKSz . 
ctags -R --languages=c,c++  --langmap=c++:+.inl -h +.inl --c-kinds=+x --fields=+zaiSK --extra=+qf
#gtags
