#!/bin/bash
read -p "What is your favorite operating system? " os

if [ $os == "Linux" ] ; then
	echo "great choice"
else
	echo "Is $os an operating system?"
fi
exit 0
