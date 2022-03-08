#!/usr/bin/bash
 
export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d-%b-%Y"`
 
######################################################################
######################################################################
 
DB_BACKUP_PATH='/home/ubuntu/backup/mongo/hourly'
MONGO_HOST='localhost'
MONGO_PORT='27017'

# If mongodb is protected with username password.
# Set AUTH_ENABLED to 1 
# and add MONGO_USER and MONGO_PASSWD values correctly

AUTH_ENABLED=1
MONGO_USER="root"
MONGO_PASSWD="example"
AUTH_DATABASE="admin"


# Set DATABASE_NAMES to "ALL" to backup all databases.
# or specify databases names seprated with space to backup 
# specific databases only.

#DATABASE_NAMES='ALL'
DATABASE_NAMES='example'

## Number of days to keep local backup copy
BACKUP_RETAIN_DAYS=1
 
######################################################################
######################################################################
 
mkdir -p ${DB_BACKUP_PATH}/${TODAY}

AUTH_PARAM=""

if [ ${AUTH_ENABLED} -eq 1 ]; then
	AUTH_PARAM=" --username ${MONGO_USER} --password ${MONGO_PASSWD} "
fi

if [ ${DATABASE_NAMES} = "ALL" ]; then
	echo "You have choose to backup all databases"
	mongodump --host ${MONGO_HOST} --port ${MONGO_PORT} ${AUTH_PARAM} --out ${DB_BACKUP_PATH}/${TODAY}/
else
	echo "Running backup for selected databases"
	for DB_NAME in ${DATABASE_NAMES}
	do
		mongodump --host ${MONGO_HOST} --port ${MONGO_PORT} --db ${DB_NAME} --authenticationDatabase ${AUTH_DATABASE} ${AUTH_PARAM} --out ${DB_BACKUP_PATH}/${TODAY}/
	done
fi

 
######## Remove backups older than {BACKUP_RETAIN_DAYS} days  ########
 
DBDELDATE=`date +"%d-%b-%Y" --date="${BACKUP_RETAIN_DAYS} days ago"`
 
if [ ! -z ${DB_BACKUP_PATH} ]; then
      cd ${DB_BACKUP_PATH}
      if [ ! -z ${DBDELDATE} ] && [ -d ${DBDELDATE} ]; then
            rm -rf ${DBDELDATE}
      fi
fi

# backup mongodb dump to aws s3 bucket

aws s3 cp  ${DB_BACKUP_PATH} s3://test-s3-bucket --recursive --region ap-southeast-1 --profile s3_upload
