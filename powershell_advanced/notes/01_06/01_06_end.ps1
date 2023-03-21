Function Get-InTrouble{
[CmdletBinding(SupportsShouldProcess)]Param()
  Get-AdUser -Filter * | Remove-ADUser
}



Function Stop-Everything{
[CmdletBinding(SupportsShouldProcess)]Param()
  Get-Service | Stop-Service
}
