#!/bin/bash

# move to script directory
cd "$(dirname "$0")"

# install dependencies
apt install ansible git -y

mkdir /etc/ansible
cd /etc/ansible

echo '- src: https://github.com/florianutz/Debian9-CIS' >> /etc/ansible/requirements.yml

ansible-galaxy install -p roles -r /etc/ansible/requirements.yml

cat > /etc/ansible/harden.yml << EOF
- name: Harden Server
  hosts: localhost
  connection: local
  become: yes
	debian9cis_avahi_server: false  
	debian9cis_cups_server: false  
	debian9cis_dhcp_server: false  
	debian9cis_ldap_server: false  
	debian9cis_telnet_server: false  
	debian9cis_nfs_server: false  
	debian9cis_rpc_server: false  
	debian9cis_ntalk_server: false  
	debian9cis_rsyncd_server: false  
	debian9cis_tftp_server: false  
	debian9cis_rsh_server: false  
	debian9cis_nis_server: false  
	debian9cis_snmp_server: false  
	debian9cis_squid_server: false  
	debian9cis_smb_server: false  
	debian9cis_dovecot_server: false  
	debian9cis_httpd_server: false  
	debian9cis_vsftpd_server: false  
	debian9cis_named_server: false  
	debian9cis_bind: false  
	debian9cis_vsftpd: false  
	debian9cis_httpd: false  
	debian9cis_dovecot: false  
	debian9cis_samba: false  
	debian9cis_squid: false  
	debian9cis_net_snmp: false

  roles:
    - debian9_cis
EOF

ansible-playbook /etc/ansible/harden.yml