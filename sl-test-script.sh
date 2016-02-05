#!/bin/bash

useradd sysadm
passwd sysadm <<EOF
sysadm
sysadm
EOF
mkdir /home/sysadm/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAnTBJwpyc3Ea7tVh0UkvsP4n72NiIwaXJsPYTawWA9VlI7PVzy8WPwBLSrw4h5xzQcL8XoGG8ynfscu4xoDWwMJkijQcQbPJa8S5nXEGVMhHl03qEwbY7t5C2gDafXVri8pssVGPTmIn124UUXdEaMlFGmuEzkDvhCEhTR43Oh3YqPDb/zAORJRYHAIkomU3fKyYAnVx6PrTLf+kWhikaICf1zB2Da4iIXzbIzmyRgvxISX2FEix7gwVwcNTyfbe4ijXjHWnDCFc+ktRTx83e1VnWh8VtgVvcKHlTxSUfN7O6uZPxJLf8ktwSVb6PKfatIdq2y3hJ6+E/tREfYXbamQ== rsa-key-20160205" > /home/sysadm/.ssh/authorized_keys

chown sysadm /home/sysadm/.ssh
chown sysadm /home/sysadm/.ssh/authorized_keys
chmod 700 /home/sysadm/.ssh
chmod 400 /home/sysadm/.ssh/authorized_keys

echo "sysadm	ALL=(ALL)	NOPASSWD:ALL" >> /etc/sudoers

sed '/PasswordAuthentication yes/d' /etc/ssh/sshd_config > /tmp/sshd_config
echo "PasswordAuthentication no" >> /tmp/sshd_config
mv /tmp/sshd_config /etc/ssh/sshd_config
chmod 400 /etc/ssh/sshd_config

service sshd restart
