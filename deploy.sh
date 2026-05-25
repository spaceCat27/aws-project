#!/bin/bash

set -e

cd terraform

terraform init
terraform apply -auto-approve

IP=$(terraform output -raw public_ip)

sleep 30

cd ../ansible

echo "[web]" > inventory.ini
echo "$IP ansible_user=ubuntu" >> inventory.ini

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.ini playbook.yml
