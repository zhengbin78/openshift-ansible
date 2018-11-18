#!/bin/bash

# This script installs openshift cluster.

echo $OS_AUTH_URL

echo "install openshift cluster on huawei cloud"
ansible-playbook --user root \
    -i playbooks/openstack/inventory.py \
    -i playbooks/openstack/huawei-inventory \
    --private-key ./openshift.pem \
    playbooks/openstack/openshift-cluster/install.yml
