##AWS-Backup

A simple ruby script that will dump a MySQL database, and back it up to S3. This is adapted from the AWS SDK examples: https://github.com/aws/aws-sdk-ruby.

###Installation

Install the aws ruby gem:

    gem install aws-sdk

Take a copy of config_sample.sh and call it config.sh. Enter your database details, and the name of your bucket on S3. 
Take a copy of config_sample.yml and call it config.yml, and enter your S3 credentials. 

To run, you can then just run the backup.sh script. It will dump your database, with the date in the filename, upload that file to S3, then remove the dumped .sql file.

Example output:

    Dumping the database
    Uploading the file
    Uploaded backup-20121118.sql to:
    https://my-bucket-name.s3.amazonaws.com/backup-20121118.sql
    
    Use this URL to download the file:
    https://my-bucket-name.s3.amazonaws.com/backup-20121118.sql?AWSAccessKeyId=00000000000000&Expires=000000000000&Signature=000000000000000
    Removing the file
    Done

