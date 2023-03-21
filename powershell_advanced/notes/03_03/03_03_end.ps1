Import-Module -Name HotelUserManagement


$Header = @"
<style>
TABLE {border-width: 1px; border-style: solid; border-color: black; border-collapse: collapse;}
TH {border-width: 1px; padding: 3px; border-style: solid; border-color: black; background-color: #357EC7;}
TD {border-width: 1px; padding: 3px; border-style: solid; border-color: black;}
</style>
"@


Get-ExpiringPasswords |
ConvertTo-Html -Head $Header | 
Out-File C:\ScriptOutput\Output.html
