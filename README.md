# EC2 Launch Automation Script

This Bash script allows you to launch an AWS EC2 instance by selecting an operating system (Ubuntu or Amazon Linux) interactively. It automatically assigns the appropriate AMI and sets a Name tag for the instance.

## 📌 Features

- Interactive OS selection (Ubuntu or Amazon Linux)
- Automatically sets the instance name based on OS
- Uses pre-defined key pair, security group, subnet, and instance type
- Tags the instance with a `Name` visible in the AWS Console

## 🛠️ Prerequisites

- AWS CLI configured (`aws configure` or `export` method)
- Proper IAM permissions to launch EC2 instances
- Valid key pair, security group ID, and subnet ID in your AWS account

## 🚀 How to Use

1. Edit the script to replace:
   - `KEY` with your key pair name
   - `SG` with your security group ID
   - `SUBNET` with your subnet ID
   - `AMI` values with valid AMIs for your region

2. Make the script executable:
   ```bash
   chmod +x launch-ec2.sh
