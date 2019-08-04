#!/bin/bash
#(@)/ph
# A very simple telephone list
# Type "ph new name number" to add to the list, or
# just type "ph name" to get a phone number

PHONELIST=phonelist.txt

#If no command line parameters ($#), there is a problem

if [ $# -lt 1 ] ; then 
	echo "Whose phone number did you want?"
	exit 1
fi

# Add new phone
if [ $1 = "new"  ] ; then
	shift
	echo $* >> $PHONELIST
	echo $* added to database
	exit 0
fi

#does the file have anything yet?
if [ ! -s  $PHONELIST ] ; then
	echo "No names in the phonelist yet!"
	exit 1
else
	grep -i -q "$*" $PHONELIST  #quietly search the file
	if [ $? -ne 0 ] ; then
		echo "sorry, name not found"
		exit 1
	else grep -i "$*" $PHONELIST
	fi
fi
exit 0
