Import-Module -Name HotelUserManagement



Get-ExpiringPasswords |
ConvertTo-Html | 
Out-File C:\ScriptOutput\Output.html
