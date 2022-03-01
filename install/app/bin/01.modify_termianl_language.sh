#the shell just usering source command

if [ "$1" == en  ]
then
    export LANG="en_US.UTF-8"
    export LANGUAGE="en_US"
else
    export LANG="zh_CN.UTF-8"
    export LANGUAGE="zh_CN:en"
fi
