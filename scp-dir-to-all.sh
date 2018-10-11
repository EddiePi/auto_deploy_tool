#/!bin/bash
user_name=$(whoami)
while read LINE
do
    scp -r $1 $whoami@$LINE:$2
done < slaves

