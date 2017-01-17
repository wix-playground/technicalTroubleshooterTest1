#!/bin/bash
echo "Starting traceroutes for domain ${1}"
function trrt {
	echo "running traceroute on ${1} and appending to file trrt.txt" | tee -a trrt.txt
	traceroute -w 3 -q 2 -m 10 $1 >> trrt.txt
	printf "\n"
}
trrt $1
trrt static.wixstatic.com
trrt files.wix.com
trrt static.parastorage.com
less ./trrt.txt
