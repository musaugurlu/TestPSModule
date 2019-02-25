Install-WindowsFeature AD-Domain-Services -Restart -Confirm:$false

Import-Module ActiveDirectory
Import-Module ADDSDeployment

Install-ADDSForest -CreateDnsDelegation:$false -DomainName “musaugurlu.com” -DomainNetbiosName “MUSAUGURLU” -SafeModeAdministratorPassword (ConvertTo-SecureString "Sup3rS3cureP@ssw0rd" -AsPlainText -Force) -InstallDns:$true  -NoRebootOnCompletion:$True -Force:$true

Get-Forest
