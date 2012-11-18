#!/bin/bash

source config.sh

FILE=backup-$(date +%Y%m%d).sql

echo "Dumping the database"
mysqldump -u $DATABASE_USER -p$DATABASE_PASSWORD $DATABASE_NAME > $FILE

echo "Uploading the file"
ruby upload_file.rb $BUCKET_NAME $FILE

echo "Removing the file"
rm $FILE

echo "Done"
