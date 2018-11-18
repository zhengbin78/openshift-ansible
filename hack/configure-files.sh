#!/bin/bash

# This script configures keystonerc file and private-key file.

echo "configure keystonerc file"
. ./keystonerc

echo "configure private-key file"
chmod 400 ./openshift.pem
