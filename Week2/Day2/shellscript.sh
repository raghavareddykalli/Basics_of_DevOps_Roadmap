#!/bin/bash

##### This sheel script is used to track resources in AWS


# Author Name : Kalli Raghava Reddy

# Date : 2025-04-10

## Resources that are being tracked

# AWS S3 Buckets

# AWS EC2 Instances

# AWS Lambda Functions

# AWS IAM Users

set -x

echo "List s3 buckets"

aws s3 ls > resource

echo "List ec2 instances"

aws ec2 describe-instances >> resource

echo "List lamda functions"

aws lambda list-functions >> resource

echo "List IAM Users"

aws iam list-users >> resource
