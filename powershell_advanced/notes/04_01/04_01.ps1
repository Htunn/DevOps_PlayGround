$XMLPath = 'C:\ScriptOutput\roster.xml'
$EmployeeRoster = [xml](Get-Content $XMLPath) 


$EmployeeRoster.roster.employee | Format-Table


# *.SelectNodes is a method of xml style variables, //name is xpath syntax
$EmployeeRoster.SelectNodes("//name")


$EmployeeRoster.SelectNodes("//pe_3month")


$EmployeeRoster.SelectSingleNode("//employee[4]")           
