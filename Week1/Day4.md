# AWS EC2 Connection & Automation Guide 

In this section, we focus on efficient ways to **connect to AWS EC2 instances** and automate tasks using AWS CLI.

## 📌 Prerequisites

- AWS Account
- EC2 Instance already created (preferably Linux)
- Key Pair (`.pem` file) downloaded


### Using AWS Console (UI)
1. Go to **EC2 Dashboard** → Select running instance.
2. Click on **Connect**.
3. Use browser-based shell to connect.
4. Execute basic commands (`touch filename`, `ls`) to verify login.

### Using Terminal (CLI)
1. Open your terminal.
2. Use the following SSH command:
   ```bash ssh -i "C:\Users\path-to-pemfile/your-key.pem ec2-user@<public-ip>```

### ⚙️ AWS CLI Setup & Authentication

Download AWS CLI

Install AWS CLI

Verify Installation

'''aws --version'''
#### Configure AWS CLI

'''aws configure'''

Enter Access Key ID and Secret Access Key

Set region (e.g., us-east-1)

Output format: json

### 🪣 Example AWS CLI Commands
#### List S3 Buckets

'''aws s3 ls'''


#### List EC2 Instances

'''aws ec2 describe-instances'''


