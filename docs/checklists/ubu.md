## Checklist for Ubuntu 16.04 to 20.04
### This checklist should be done **after** running the hardening scripts located in this repository.

1. Audit installed packages
	* `apt list --installed`
	* `snap list`
2. Audit open ports
	* `lsof -i -P -n | grep LISTEN`
	* `netstat -tulpn | grep LISTEN`
	* `ss -tulpn | grep LISTEN`
3. Audit running processes
	* `ps -aux`
4. Audit files
	* `find / -name "*.ext"`
	* `ls -la`