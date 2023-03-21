Function Gather-Info {
[CmdletBinding()]
Param()

  $IP4Address=(Get-NetIPAddress).IPAddress
  [array]$IPArray=$IP4Address.split(" ")
  $PCName=(Get-CimInstance -ClassName Win32_ComputerSystem).Name
  $Make=(Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
  $OS=(Get-CimInstance -ClassName Win32_OperatingSystem).Caption
  $Today=(Get-Date -Format MM/dd/yyyy)

  $ComputerInformation=@{ComputerName=$PCName;
                     DateOfIP="$Today";
                     IPAddress=$IPArray;
                     OperatingSystem=$OS;
                     Manufacturer="$Make";
                     WaranteeExpiration=[DateTime]"06/30/2020"}

  return $ComputerInformation

  }
