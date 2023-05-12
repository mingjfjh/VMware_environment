#the shell just usering source command

echo 'please use "source" commond!!!'

if [ "$1" == "en" -o "$1" == "EN" ]
then
    export LANG="en_US.UTF-8"
    export LANGUAGE="en_US"
else
    export LANG="zh_CN.UTF-8"
    export LANGUAGE="zh_CN:en"
fi
