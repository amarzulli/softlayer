Set-DNSClientServerAddress -InterfaceAlias 'PrivateNetwork-A' -ServerAddresses '10.118.86.66'
Install-WindowsFeature -Name 'Hyper-V' -IncludeAllSubFeature -IncludeManagementTools
$Password = 'Csa5hsuf'
$secpasswd = ConvertTo-SecureString $Password -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("administrator", $secpasswd)
add-computer -DomainName 'nsxguru.internal' -Credential $mycreds -Restart -Force


