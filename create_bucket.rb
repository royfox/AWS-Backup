require File.expand_path(File.dirname(__FILE__) + '/samples_config')

bucket_name = ARGV[0]
unless bucket_name
  puts "Usage: create_bucket.rb <BUCKET_NAME>"
  exit 1
end

# get an instance of the S3 interface using the default configuration
s3 = AWS::S3.new

# create a bucket
bucket = s3.buckets.create(bucket_name)

puts bucket

