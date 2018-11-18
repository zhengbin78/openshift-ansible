#!/bin/bash

# This script provisions cloud resources for openshift and installs openshift cluster.

echo $OS_AUTH_URL

echo "provision huawei cloud resources for openshift and install openshift cluster on huawei cloud"
ansible-playbook --user root \
    -i playbooks/openstack/inventory.py \
    -i playbooks/openstack/huawei-inventory \
    --private-key ./openshift.pem \
    playbooks/openstack/openshift-cluster/provision_install.yml
