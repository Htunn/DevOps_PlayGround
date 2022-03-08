# DTD_DevOps
> **Automate day to day DevOps and SysAdmin Related Tasks with Bash, Python and  AWS CLI**

![devops](https://technovids.com/us/wp-content/uploads/2020/06/Aws-DevOps-Online-Classes-600x360.png.webp)


### for folder_backup script

# how to use script

1. first create aws iam user with s3 full access permission
2. create aws access and secret access for s3 user
3. deploy awscli in desire linux instance

## use script in prefer user crontab
### use with user crontab 

> crontab -e

> @daily /home/ubuntu/backup_folder.sh
> @weekly /home/ubuntu/backup_folder.sh
> @monthly /home/ubuntu/backup_folder.sh

### for mongodb_backup script

# how to use script

1. first create aws iam user with s3 full access permission
2. create aws access and secret access for s3 user
3. deploy awscli in desire EC2 instance

## use script in prefer user crontab
### example

* @hourly /home/ubuntu/shellscripts/mongodb_backup/hourly/mongodb_backup.sh
* @daily /home/ubuntu/shellscripts/mongodb_backup/daily/mongodb_backup.sh
* @weekly /home/ubuntu/shellscripts/mongodb_backup/weekly/mongodb_backup.sh
* @monthly /home/ubuntu/shellscripts/mongodb_backup/monthly/mongodb_backup.sh
* * 23 * * * /home/ubuntu/shellscripts/mongodb_backup/mongodb_daily_remove.sh

