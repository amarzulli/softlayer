Set-DNSClientServerAddress -InterfaceIndex 2 -ServerAddresses '10.118.86.66'

$Password = 'BKzHGy5c'
$secpasswd = ConvertTo-SecureString $Password -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("administrator", $secpasswd)

add-computer –DomainName 'nsxguru.internal' -Credential $mycreds -Restart -Force

