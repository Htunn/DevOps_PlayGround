# DTD_DevOps
> **Automate day to day DevOps and SysAdmin Related Tasks with Bash, Python and  AWS CLI**

![devops](https://media.istockphoto.com/photos/devops-concept-picture-id1339667588?b=1&k=20&m=1339667588&s=170667a&w=0&h=76ssSYlJyLSj6mVwGBUi5QM8twe6Lr5QlNbHoCT_bfg=)


# for folder_backup script
### how to use script

1. first create aws iam user with s3 full access permission
2. create aws access and secret access for s3 user
3. deploy awscli in desire linux instance

## use script in prefer user crontab
### use with user crontab 

> crontab -e

* @daily /home/ubuntu/backup_folder.sh
* @weekly /home/ubuntu/backup_folder.sh
* @monthly /home/ubuntu/backup_folder.sh

# for mongodb_backup script
### how to use script

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

