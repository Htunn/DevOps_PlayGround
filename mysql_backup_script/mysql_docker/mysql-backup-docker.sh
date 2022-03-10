#!/bin/bash

# define $PATH and date 

export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d%b%Y"`

################################################################
################## Update below values  ########################

DB_BACKUP_PATH='/Data/backup/mysql/'
MYSQL_HOST='localhost'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_CONTAINER_NAME=''
MYSQL_PASSWORD='example'
DATABASE_NAME='mysql'
BACKUP_RETAIN_DAYS=30   ## Number of days to keep local backup copy

#################################################################

mkdir -p ${DB_BACKUP_PATH}/${TODAY}
echo "Backup started for database - ${DATABASE_NAME}"

docker exec ${MYSQL_CONTAINER_NAME} /usr/bin/mysqldump \
		  -u ${MYSQL_USER} \
		  -p${MYSQL_PASSWORD} \
		  ${DATABASE_NAME} | gzip > ${DB_BACKUP_PATH}/${TODAY}/${DATABASE_NAME}-${TODAY}.sql.gz

if [ $? -eq 0 ]; then
  echo "Database backup successfully completed"
else
  echo "Error found during backup"
fi


##### Remove backups older than {BACKUP_RETAIN_DAYS} days  #####

DBDELDATE=`date +"%d%b%Y" --date="${BACKUP_RETAIN_DAYS} days ago"`

if [ ! -z ${DB_BACKUP_PATH} ]; then
      cd ${DB_BACKUP_PATH}
      if [ ! -z ${DBDELDATE} ] && [ -d ${DBDELDATE} ]; then
            rm -rf ${DBDELDATE}
      fi
fi

# transfer mysqldump file to AWS S3 Storage

aws s3 cp  ${DB_BACKUP_PATH} s3://k8s-backup-htunn --recursive --region ap-southeast-1


### End of script ####
