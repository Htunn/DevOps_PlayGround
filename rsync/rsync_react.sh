#!/usr/bin/bash
 
export PATH=/bin:/usr/bin:/usr/local/bin

######################################################################
######################################################################

# Define backup folder Directories

BACKUP_FOLDER="admin  merchant"


######################################################################
######################################################################
echo "You have choosen to backup this ${BACKUP_FOLDER}"
for FOLDER_NAME in ${BACKUP_FOLDER}; do
  if [ -d "${FOLDER_NAME}" ]; then
	rsync -aAXgr  --delete -e ssh  "${FOLDER_NAME}/" ubuntu@k8s-worker1:"${FOLDER_NAME}"

  echo "successfully backup to HA Infra"
 else
    echo "${FOLDER_NAME} does not exist"
  	echo "pls specify Backup Folder"
		break
 fi
done





