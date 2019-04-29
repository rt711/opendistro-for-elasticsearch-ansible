#!/bin/bash
Environment=$1
ansible-playbook -i inventory/hosts site.yml -e "Environment=$Environment" -k -K --vault-pass ../opendistro-vaultfile
