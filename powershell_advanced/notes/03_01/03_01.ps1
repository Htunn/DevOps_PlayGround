# import modules that contain on-prem user and mailbox functions
Import-Module LandonHotelAD
Import-Module LHExchange









# gather information
$UserFirstName = Read-Host -Prompt "Enter the User's first name"
$UserLastName = Read-Host -Prompt "Enter the User's last name"
$Username = Read-Host -Prompt "Enter the username"
$JobTitle = Read-Host -Prompt "Enter the job title"
$EmpID = Read-Host -Prompt "Enter the employee ID#"






# create a basic user account with all company requirements
New-LHADUser -Fname $UserFirstName -Lname $UserLastName -UserName $UserName -Password $Password -Job $JobTitle -ID $EmpID







# create an exchange with all company requirements
Enable-LHMailbox -User $Username








Write-Host "The user account and mailbox were successfully created."
