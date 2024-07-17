#!/bin/bash

component=$1
environment=$2  #don't use env, because its a reserve word in linux

yum install python3.12-devel python3.12-pip -y
pip3.12 install ansible ansible-core==2.16 botocore boto3
ansible-pull -U https://github.com/RAVIRAVEEN/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main.tf.yaml