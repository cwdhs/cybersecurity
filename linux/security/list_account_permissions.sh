#!/bin/bash

while read username; do
	content=$(groups "$username");

	if [[ "$content" != "$username : $username" ]]; then
		echo "$content";
	fi
done <<< $(cat /etc/passwd | grep -Po "^[\w-]+");