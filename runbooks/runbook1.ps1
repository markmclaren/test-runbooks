<#
Get-Process
$myCredential = Get-AutomationPSCredential -Name 'MyCredential'
Set-ModuleCredential -Cred $myCredential -Conn "https://ps.outlook.com/PowerShell-LiveID?PSVersion=5.1.14393.187" 
Get-Mailbox -ResultSize unlimited
#>
#Import-Module -Name ExchangeModule #-Verbose
#$myCredential = Get-AutomationPSCredential -Name 'MyCredential'
#$myCredential = Get-AutomationPSCredential -Name 'MyCredential'
#$userName = $myCredential.UserName
#$securePassword = $myCredential.Password
#$password = $myCredential.GetNetworkCredential().Password

#$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force 
#$cred = New-Object System.Management.Automation.PSCredential ($userName, $secpasswd) 
#Set-ModuleCredential -Cred $cred -Conn "https://ps.outlook.com/PowerShell-LiveID?PSVersion=5.1.14393.187" 
#Get-Mailbox #Or any other Exchange Cmdlet



# Pull credential from Automation assets
$credObject = Get-AutomationPSCredential -Name "MyCredential"
 
#Connect to Exchange Online
$ExchangeOnlineSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/PowerShell-LiveID -Credential $credObject -Authentication Basic -AllowRedirection
Import-Module (Import-PSSession -Session $ExchangeOnlineSession -AllowClobber -DisableNameChecking) -Global
Get-Mailbox -ResultSize unlimited