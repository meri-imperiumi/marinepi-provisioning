#!/bin/bash -evx
# set role path in ansible.cfg or ANSIBLE_ROLES_PATH environment variable

role=$1

shift 1

cat > /tmp/play.yml <<PLAYBOOK
---
- hosts: all
  roles:
  - $role
PLAYBOOK

ansible-playbook /tmp/play.yml -i $1, -u pi
