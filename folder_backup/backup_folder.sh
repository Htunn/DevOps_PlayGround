#!/usr/bin/bash
 
export PATH=/bin:/usr/bin:/usr/local/bin

######################################################################
######################################################################

# Define backup folder Directories

BACKUP_FOLDER="folder_name"


######################################################################
######################################################################
echo "You have choosen to backup all backup folders"
for FOLDER_NAME in ${BACKUP_FOLDER}; do
  if [ -d "${FOLDER_NAME}" ]; then
	aws s3 cp  "${FOLDER_NAME}" s3://test-bucket-htunn/"${FOLDER_NAME}" --recursive --region ap-southeast-1 --profile s3_upload

  echo "successfully backup to AWS S3"
 else
    echo "${FOLDER_NAME} does not exist"
  	echo "pls specify Backup Folder"
		break
 fi
done


