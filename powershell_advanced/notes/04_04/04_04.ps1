Get-Service | Export-Clixml C:\ScriptOutput\Services.xml

Get-Service | ConvertTo-Json | Out-File C:\ScriptOutput\Services.json
