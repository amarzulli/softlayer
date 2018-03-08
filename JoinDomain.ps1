Set-DNSClientServerAddress -InterfaceIndex 2 -ServerAddresses '10.118.86.66'

$Password = 'NH88manR'
$secpasswd = ConvertTo-SecureString $Password -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("administrator", $secpasswd)

add-computer –domainname nsxguru.internal -Credential $mycreds -restart –force
