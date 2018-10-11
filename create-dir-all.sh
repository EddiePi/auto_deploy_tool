#!/bin/bash
if [ ! -n "$1" ]; then
    echo "no directory specified, existing"
    exit -1
fi
user_name=$(whoami)
while read LINE
do
    echo "creating dir on $LINE"
    ssh $user_name@$LINE "[ -d $1 ] && echo ok || mkdir -p $1" &
done < slaves
