#!/usr/bin/bash

# mongodb backup retention period in single day is 23 hours

# delete mogodb backup of AWS S3 bucket ( alphasirius-mongodb-uat-hourly ) at 23 hours

aws s3 rm s3://test-s3-bucket --recursive --region ap-southeast-1 --profile s3_upload

# delete local mongodb  hourly backup

rm -rf /home/ubuntu/backup/mongo/hourly
