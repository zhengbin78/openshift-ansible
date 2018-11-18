#!/bin/bash

# This script installs ansible and prerequisite

echo "install operation system prerequisite"
yum update -y
yum install -y epel-release  
yum install -y git yum-utils   gcc  python-devel  python-pip 

echo "install ansible and prerequisite"
pip install --upgrade pip
pip install ansible
pip install jinja2
pip install shade
pip install jmespath
pip install dnspython
pip install python-openstackclient
pip install python-heatclient
