#!/bin/bash
useradd -b /home -d /home/marikori_auto -m marikori_auto
mkdir /home/marikori_auto/.ssh
touch /home/marikori_auto/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6mlbkT0z+Tnb1yzh5H9P0hMZc+OXbbNcRmPYUWfIC1TzJY7TzoggvvLk0r2bsADApUZC4UEtr3aBrl5crQYXzbkoOyS3F+Z8bcNawECdz/gg9fSTG/+ZuE5EgnGdYUT1/TZ4qEPpFfQAQnfWdIK6hI911v5+rDm4fuFdmCn3LotyxKy2zkagDAqtqrveWFACkA67+KIQVEb3MUpUBdLkj1NZtlixiqhYhbh8eBdMEbc40avmeCq32JfyUWmnpLW4J9VWd5uYcv2m0Mf2zFiUqsHR/0iHMmFY3R+9hwAeHoMnHF7cmvBEYc9htLf9KCbFfFHZUKrvn9gccsB0sJSnJQ== root@rqmadapter" > /home/marikori_auto/.ssh/authorized_keys
chmod -R 700 /home/marikori_auto
chown -R marikori_auto:marikori_auto /home/marikori_auto

echo "Defaults:marikori_auto !requiretty" >> /etc/sudoers
echo "marikori_auto ALL=NOPASSWD: ALL" >> /etc/sudoers 