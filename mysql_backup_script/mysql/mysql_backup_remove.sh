#!/usr/bin/bash

# mongodb backup retention period in single day is 23 hours

# delete mysql backup of AWS S3 bucket  at 23 hours

aws s3 rm s3://k8s-backup-htunn --recursive --region ap-southeast-1 --profile s3_upload

# delete local mongodb  hourly backup

rm -rf /home/ubuntu/backup/mysql/hourly
