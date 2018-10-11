# auto_deploy_tool
automatical deployment for large-scale cluster

purpose:
1. create a new user with sudo (no password) privilige on each node
2. allow ssh without password under the user
3. append specified text after ~/.bashrc

prerequisite:
1. There are already a user with sudo (no password) previlige on each node of the cluster.
2. The master node can ssh to every worker node without password under the user account.

usage:
create-sudo-user.sh <USERNAME> <PASSWD>
exec
