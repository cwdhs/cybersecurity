#!/bin/bash

# move to script directory
cd "$(dirname "$0")"

# install dependencies
apt install ansible git -y

mkdir /etc/ansible
cd /etc/ansible

echo '- src: https://github.com/florianutz/Ubuntu1804-CIS' >> /etc/ansible/requirements.yml;

ansible-galaxy install -p roles -r /etc/ansible/requirements.yml

cat > /etc/ansible/harden.yml << EOF
- name: Harden Server
  hosts: localhost
  connection: local
  become: yes

  roles:
    - ubuntu1804_cis
EOF

ansible-playbook /etc/ansible/harden.yml