#!/bin/sh
SHELL=/bin/sh
NOW=$(date +"%F_%T")
FILE="edu.$NOW"

pg_dump finstar -f /home/peneil/erp_support/erp_set_up/listing_database/$FILE.sql

sshpass -p 'P3n3il2015' scp /home/peneil/erp_support/erp_set_up/listing_database/$FILE.sql repo@192.168.2.250:/home/repo
#rm /home/peneil/erp_support/erp_set_up/listing_database/$FILE.sql

#===========================================
#for f in *.sql

#find ./* -mtime +10 -type f -delete
#find /path/to/files* -mtime +5 -exec rm {} \;
#find /home/ftp/incoming/raw/ -maxdepth 1 -cmin +60 -name "*" -exec /bin/rm -f {} \;

#find /home/peneil/erp_support/erp_set_up/listing_database/* -mtime +3 -delete

#function
#1) backup database at evening 4 o'clock everyday
#2) send datbase to other computer
#5) delete database in local at the same time of backup
#6) delete every last 15 days of data in backupc 

