Function Gather-Info {
[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True ValueFromPipelineByPropertyName=$True)]
  $Name
  )

  $IP4Address=(Invoke-Command -ComputerName $Name -ScriptBlock{(Get-NetIPAddress $Name).IPAddress})
  [array]$IPArray=$IP4Address.split(" ")
  $PCName=$Name
  $Make=(Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $Name).Manufacturer
  $OS=(Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $Name).Caption
  $Today=(Get-Date -Format MM/dd/yyyy)

  $htable=[ordered]@{ComputerName=$PCName;DateOfIP="$Today";IPAddress=$IPArray;OperatingSystem=$OS;Manufacturer="$Make";WaranteeExpiration=[DateTime]"06/30/2020"}

  return $htable

  }

Get-ADUser -Filter * | Gather-Info | Add-ToAssetDB 
# Get-ADUser requires the Active Directory module to be installed.
# Add-ToAssetDB is not an included function. It represents an idea that you may choose to pursue.