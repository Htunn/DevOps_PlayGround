#!/bin/bash

# define $PATH and date 

export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=$(date +"%d-%b-%Y")

################################################################
################## Update below values  ########################

DB_BACKUP_PATH='/home/ubuntu/backup/mysql/hourly'
MYSQL_HOST='localhost'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='example'
DATABASE_NAME='mysql'
BACKUP_RETAIN_DAYS=30  ## Number of days to keep local backup copy

#################################################################

mkdir -p ${DB_BACKUP_PATH}/"${TODAY}"
echo "Backup started for database - ${DATABASE_NAME}"


sudo mysqldump -h ${MYSQL_HOST} \
		  -P ${MYSQL_PORT} \
		  -u ${MYSQL_USER} \
		  -p${MYSQL_PASSWORD} \
		  ${DATABASE_NAME} | gzip > ${DB_BACKUP_PATH}/"${TODAY}"/${DATABASE_NAME}-"${TODAY}".sql.gz

if [ $? -eq 0 ]; then
  echo "Database backup successfully completed"
else
  echo "Error found during backup"
fi


##### Remove backups older than {BACKUP_RETAIN_DAYS} days  #####

DBDELDATE=$(date +"%d-%b-%Y" --date="${BACKUP_RETAIN_DAYS} days ago")

if [ -n "${DB_BACKUP_PATH}" ]; then
      cd ${DB_BACKUP_PATH} || exit
      if [ -n "${DBDELDATE}" ] && [ -d "${DBDELDATE}" ]; then
            rm -rf "${DBDELDATE}"
      fi
fi


# transfer mysqldump file to  AWS S3 Storage

aws s3 cp  ${DB_BACKUP_PATH} s3://k8s-backup-htunn --recursive --region ap-southeast-1 --profile s3_upload

### End of script ####
