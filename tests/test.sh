#!/bin/sh

echo "SCENARIO 1: create Secgroup"
ansible-playbook test.yml -e "secgroups=ansible-test02 localaction=create" || exit 1
echo "SCENARIO 2: show Secgroup"
ansible-playbook test.yml -e "secgroups=ansible-test02 localaction=show" || exit 1
echo "SCENARIO 3: list Secgroup"
ansible-playbook test.yml -e "localaction=list" || exit 1
echo "SCENARIO 4: delete Secgroup"
ansible-playbook test.yml -e "secgroups=ansible-test02 localaction=delete" || exit 1
