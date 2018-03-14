import-module servermanager
 import-module ADDSDeployment
 
Install-WindowsFeature AD-Domain-Services, DNS -IncludeAllSubFeature -IncludeManagementTools

$PlainPassword = ''
$SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Win2012R2" `
-DomainName "nsxguru.internal" `
-DomainNetbiosName "NSXGURU" `
-ForestMode "Win2012R2" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-SafeModeAdministratorPassword $SecurePassword `
-Force:$true
