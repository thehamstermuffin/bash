#!/bin/bash
# (@)/my_backup
# a very simple backup script

# change TAPE device to match your system
# Check /var/log/messages to determine your tape device
# You may also need to add scsi-tape to support your kernel
TAPE=/dev/rft0

#Rewind the tape device
mt $TAPE rew
#Get a list of home directories
HOMES=`grep /home /etc/passwd | cut -f6 -d':'`
#Back up the data in those directories
tar cvf $TAPE $HOMES
#Rewind and eject the tape
mt #TAPE rewoffl

