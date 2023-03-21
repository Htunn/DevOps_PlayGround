Function Not-Advanced {}

Function Now-Advanced {
  [CmdletBinding()]Param(
    [Parameter(Mandatory=$True,HelpMessage="Enter the first two letters of your last name and your 4-digit employee number")]
    [ValidatePattern("[a-z][a-z][0-9][0-9][0-9][0-9]")]
  
  $MyNumber)

}
