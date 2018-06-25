#!/bin/bash
sleep 30
curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/getUserMetadata -o ~/ipaddress.txt
