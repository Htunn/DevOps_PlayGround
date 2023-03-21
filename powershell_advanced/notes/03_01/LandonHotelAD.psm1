Function Export-LHADUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }


Function Import-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }






Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Export-CafeUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landoncafe,DC=com"

    Get-ADUser -Filter * -SearchBase $Location |
    Select-Object SamAccountName,Enabled,GivenName,Surname,EmailAddress |
    Export-CSV -Path $ExportName
 
    }



Function Import-HotelUsers
    {
    Param (
        [string] $OUName
        )

    $ExportName = "C:\DataFiles\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=landonhotel,DC=com"

    New-ADOrganizationalUnit -Name $OUName -Path "DC=landonhotel,DC=com" -ProtectedFromAccidentalDeletion $False

    $LCPassword = "Action1!" | ConvertTo-SecureString -AsPlainText -Force

    Import-CSV $ExportName    |
    New-ADUser -Path $Location -AccountPassword $LCPassword -Enabled $TRUE

    }



Function Hello-World
    {
    Write-Host "Well, hello there, world!"
    }