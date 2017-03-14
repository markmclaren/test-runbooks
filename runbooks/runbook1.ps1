<#
Get-Process
$myCredential = Get-AutomationPSCredential -Name 'MyCredential'
Set-ModuleCredential -Cred $myCredential -Conn "https://ps.outlook.com/PowerShell-LiveID?PSVersion=5.1.14393.187" 
Get-Mailbox -ResultSize unlimited
#>
Import-Module -Name ExchangeModule -Verbose
$myCredential = Get-AutomationPSCredential -Name 'MyCredential'
Set-ModuleCredential -Cred $myCredential -Conn "https://ps.outlook.com/PowerShell-LiveID?PSVersion=5.1.14393.187" 
Get-Mailbox -ResultSize unlimited
