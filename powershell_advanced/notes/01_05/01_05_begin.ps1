Function Gather-Info {
[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True,ValueFromPipelineByPropertyName=$True)]
  [String[]]
  $Name
  )



  $IP4Address=(Invoke-Command -ComputerName $Name -ScriptBlock{(Get-NetIPAddress).IPAddress})
  [array]$IPArray=$IP4Address.split(" ")


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
