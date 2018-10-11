#!/bin/bash
if [ ! -n "$1" ]; then
    echo "user name is null, exiting"
    exit -1
fi
if [ ! -n "$2" ]; then
    echo "password is null, exiting"
    exit -1
fi
# create new user
res=$(sudo useradd $1 -m -s /bin/bash 2>&1)
if [ -n "$res" ]; then
    echo "$res, exiting"
    exit -1
fi

# create password for the user
sudo passwd $1 <<EOF
$2
$2
EOF

#add sudo privilege
echo "$1  ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a "/etc/sudoers"

