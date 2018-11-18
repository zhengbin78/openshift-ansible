#!/bin/bash

# This script provisions cloud resources for openshift.

echo $OS_AUTH_URL

echo "provision huawei cloud resources for openshift"
ansible-playbook --user root \
    -i playbooks/openstack/inventory.py \
    -i playbooks/openstack/huawei-inventory \
    --private-key ./openshift.pem \
    playbooks/openstack/openshift-cluster/provision.yml