#!/bin/bash

echo "Choose OS to launch:"
echo "1. Ubuntu"
echo "2. Amazon Linux"
read -p "Enter your choice (1 or 2): " os

KEY="your-key-name"
SG="security group id here"
SUBNET="subnet id here"
TYPE="t2.micro"

if [ "$os" == "1" ]; then
  AMI="Your ubuntu ami id"
  NAME="Ubuntu"
elif [ "$os" == "2" ]; then
  AMI="Your amazon linux ami id"
  NAME="Amazon"
else
  echo "Invalid input. Use 1 for Ubuntu or 2 for Amazon Linux."
  exit 1
fi

aws ec2 run-instances \
  --image-id $AMI \
  --count 1 \
  --instance-type $TYPE \
  --key-name $KEY \
  --security-group-ids $SG \
  --subnet-id $SUBNET \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$NAME}]"

