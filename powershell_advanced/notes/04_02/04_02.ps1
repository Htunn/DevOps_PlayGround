$XMLPath = 'C:\ScriptOutput\roster.xml'
$EmployeeRoster = [xml](Get-Content $XMLPath) 


$EmployeeRoster.roster.employee | Format-Table



$EmployeeRoster.SelectSingleNode("//employee[8]")



# Place the workspace in a variable
$Bernie = $EmployeeRoster.roster.employee[7]



# Update an existing element
$Bernie.jobdescription = 'Landscaping'



# Save changes
$EmployeeRoster.Save($XMLPath)
