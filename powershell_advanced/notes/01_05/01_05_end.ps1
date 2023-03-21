Function Gather-Info {
<#
.SYNOPSIS
 Collect Details about a lot of Computers
.DESCRIPTION
 This function collects the computer name, operating system, IP addresses and the current date (for historical data in DHCP environments).
.PARAMETER Name
 Specifies the computer name for which the information is collected
.EXAMPLE
 Gather-Info -Name localhost
#>


[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True,ValueFromPipelineByPropertyName=$True)]
  [String[]]
  $Name
  )


# Collect IP Address(es) and split the single string into an array of IP’s
  $IP4Address=(Invoke-Command -ComputerName $Name -ScriptBlock{(Get-NetIPAddress).IPAddress})
  [array]$IPArray=$IP4Address.split(" ")

#Collect additional information about the computer from the input parameter 
  $PCName=$Name
  $Make=(Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $Name).Manufacturer
  $OS=(Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $Name).Caption
  $Today=(Get-Date -Format MM/dd/yyyy)


  $ComputerInformation=@{ComputerName=$PCName;
                         DateOfIP="$Today";
                         IPAddress=$IPAddie;
                         OperatingSystem=$OS;
                         Manufacturer="$Make";
                         WaranteeExpiration=[DateTime]"06/30/2020"}

#Return the collected information to the pipeline and as a hash table variable
  return $ComputerInformation

  }


(Get-ADComputer -Filter *).Name | Gather-Info | Out-File C:\ScriptOutput\ComputerInventory.txt -Append
