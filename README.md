##AWS-Backup

A simple ruby script that will dump a MySQL database, and back it up to S3. This is adapted from the AWS SDK examples: https://github.com/aws/aws-sdk-ruby.

###Installation

Install the aws ruby gem:

    gem install aws-sdk

Take a copy of config_sample.sh and call it config.sh. Enter your database details, and the name of your bucket on S3. 
Take a copy of config_sample.yml and call it config.yml, and enter your S3 credentials. 

To run, you can then just run the backup.sh script. It will dump your database, with the date in the filename, upload that file to S3, then remove the dumped .sql file.

