#!/bin/bash
if [ ! -n "$1" ]; then
    echo "no script specified, existing"
    exit -1
fi
user_name=$(whoami)
while read LINE
do
    echo "exec script on $LINE"
    ssh $user_name@$LINE "$1" &
done < slaves

