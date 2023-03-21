Function Get-ExpiringPasswords
  { 
  Get-ADUser -filter {Enabled -eq $True -and PasswordNeverExpires -eq $False} -Properties "DisplayName","msDS-UserPasswordExpiryTimeComputed" |
  
  Where {
    $Difference = New-Timespan (Get-Date) ([datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed"))
    $Difference.Days -le 45 -and $Difference.Days -ge 0
    } |

  Select-Object -Property "DisplayName",@{Name="Password Expires";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}}
  }


$Header = @"
<style>
TABLE {border-width: 1px; border-style: solid; border-color: black; border-collapse: collapse;}
TH {border-width: 1px; padding: 3px; border-style: solid; border-color: black; background-color: #6495ED;}
TD {border-width: 1px; padding: 3px; border-style: solid; border-color: black;}
</style>
"@


Get-ExpiringPasswords |
ConvertTo-Html -Head $Header | 
Out-File C:\ScriptOutput\Output.html
