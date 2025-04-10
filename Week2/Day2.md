# Day 2 – Live AWS Project Using Shell Scripting for DevOps

In this session, we build a real-time AWS resource tracker using Shell Scripting and the AWS CLI, a commonly used task for DevOps engineers to manage cloud infrastructure efficiently.

## 🧠 Key Concepts Covered

Why Organizations Move to Cloud:

Manageability: Avoid maintaining physical infrastructure.

Cost-Effectiveness: Pay-as-you-go model helps avoid unnecessary expenses.

### Problem Scenario:

Unused resources (like idle EC2 instances or unattached EBS volumes) can increase costs.

DevOps engineers must track resource usage to maintain cost efficiency.

### Project Objective:

Create a shell script that tracks:

Number of EC2 instances

S3 buckets

Lambda functions

IAM users

Generate a daily report of AWS resource usage.

Automate script execution using cron jobs.

#### 🛠️ Tools & Technologies

Shell Scripting (Bash)

AWS CLI

Cron Jobs (for automation)

JQ (for JSON parsing)

#### 📄 Script Overview

Author & metadata added at the top of the script (author name, date, version).

Script includes clear comments and echo statements for readability and user experience.

Uses AWS CLI commands:

```aws s3 ls``` – List S3 buckets

```aws ec2 describe-instances``` – List EC2 instances (parsed using jq for instance IDs)

```aws lambda list-functions``` – List Lambda functions

```aws iam list-users``` – List IAM users

Output is logged into a file for reporting.

#### 🧩 Enhancements

Added set -x for debug mode.

Used jq to extract specific values (e.g., instance IDs) from CLI output.

Improved script readability with descriptive print statements.

#### ⏱️ Automation

Script is scheduled to run daily at a specific time using Cron Jobs, ensuring reports are generated even if the user is unavailable.

Example cron job setup:

```0 18 * * * /path/to/aws_resource_tracker.sh```

#### 
✅ Prerequisites

AWS CLI installed and configured (aws configure)

IAM credentials with appropriate permissions

jq installed for JSON parsing

#### 📌 Notes

This script serves as a foundational DevOps project and can be extended further.

While simple, it reflects real-world practices and can be showcased in your portfolio or resume.

