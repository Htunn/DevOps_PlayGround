#!/usr/bin/bash
 
export PATH=/bin:/usr/bin:/usr/local/bin

######################################################################
######################################################################

# Define backup folder Directories

BACKUP_FOLDER="/usr/share/nginx/html/customer"


######################################################################
######################################################################
echo "You have choosen to backup this ${BACKUP_FOLDER}"
for FOLDER_NAME in ${BACKUP_FOLDER}; do
  if [ -d "${FOLDER_NAME}" ]; then
  rsync -arAXvz  --delete -e 'ssh -p 77' "${FOLDER_NAME}/" ubuntu@db-ha-b:"${FOLDER_NAME}"

  echo "successfully backup to HA Infra"
 else
    echo "${FOLDER_NAME} does not exist"
    echo "pls specify Backup Folder"
    break
 fi
done
