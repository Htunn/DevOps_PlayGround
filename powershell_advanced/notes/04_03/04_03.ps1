$XMLPath = 'C:\ScriptOutput\roster.xml'
$EmployeeRoster = [xml](Get-Content $XMLPath) 


$EmployeeRoster.roster.employee | Format-Table


$EmployeeRoster.SelectSingleNode("//employee[8]")
$Bernie = $EmployeeRoster.roster.employee[7]


#Add an element
$Bernie.AppendChild($EmployeeRoster.CreateElement("pe_1Year"))
$Bernie.pe_1Year = "7/18/2018 Exceeds"


#Add a node, or employee
$NewHire = $Bernie.Clone()
$NewHire.id = '191919'
$NewHire.name = 'Blair, Jovanny'
$NewHire.jobdescription = 'Front Desk Supervisor'
$NewHire.date_of_hire = '8/20/2018'
$NewHire.email_address = 'jblair@landonhotel.com'
$EmployeeRoster.roster.AppendChild($NewHire)


#Save changes
$EmployeeRoster.Save($XMLPath)
