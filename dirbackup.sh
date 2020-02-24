#!/bin/bash

##This script backs up a directory of your choice
##echo -e works like \n and \t and creates spaces....

echo -e "What directory do you want to backup?-->\c"
read ANS


echo "Performing backup ....."
sleep 3
##The sed command replaces text
FILE='echo $ANS | sed s#/#-#g'
DATE='date +%F'

tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

echo "Backup completed successfully to ~/backup-FILE-DATE.tar.gz"
