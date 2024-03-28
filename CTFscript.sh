#!/bin/bash

#stabilise shell
python3 -c 'import pty;pty.spawn("/bin/bash")'

#id command
id
#current user
whoami
#working direcotry
pwd
#show files
ls -la
#permissions
sudo -l
#check for user.txt
results_user=$(find / -type f -name "user.txt" 2>/dev/null)

#check if found
if [ -n "#results_user" ]; then
	echo "Following results found"
	echo "$results_user"
else
	echo "no results found"
fi

#check for root.txt
results_root=$(find / -type f -name "root.txt" 2>/dev/null)

#check if found
if [ -n "$results_root" ]; then
    echo "Found the following instances of root.txt:"
    echo "$results_root"
else
    echo "root.txt file not found on the system."
fi

