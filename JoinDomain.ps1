Set-DNSClientServerAddress –interfaceIndex 12 –ServerAddresses (“10.118.86.66”)
$Password = 'N0webs4U!'
$secpasswd = ConvertTo-SecureString $Password -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("nsxguru/administrator", $secpasswd)

add-computer –domainname nsxguru.internal -Credential $mycreds -restart –force
