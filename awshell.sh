#AWS s3
#AWS ec2
#AWS Lambda
#AWS IAM user

set -x #debug mode execution
#list S3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list ec2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
echo "print list of lambda function"
aws lambda list-functions

#list IAM
echo "print list of IAM users"
aws iam list-users
