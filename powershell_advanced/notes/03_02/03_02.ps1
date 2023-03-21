Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$AdmissionsAccount = New-Object System.Windows.Forms.Form
  $AdmissionsAccount.Text = "Create a New Account"
  $AdmissionsAccount.Size = New-Object System.Drawing.Size(300,300)
  $AdmissionsAccount.MaximizeBox = $false
  $AdmissionsAccount.MinimizeBox = $false
  $AdmissionsAccount.ControlBox = $true

$TextBox_FName = New-Object System.Windows.Forms.TextBox
  $TextBox_FName.Location = New-Object System.Drawing.Size(25,40)
  $TextBox_FName.Size = New-Object System.Drawing.Size(250,20)
  $TextBox_FName.Text = "First Name"
  $AdmissionsAccount.Controls.Add($TextBox_FName)

$TextBox_LName = New-Object System.Windows.Forms.TextBox
  $TextBox_LName.Location = New-Object System.Drawing.Size(25,70)
  $TextBox_LName.Size = New-Object System.Drawing.Size(250,20)
  $TextBox_LName.Text = "Last Name"
  $AdmissionsAccount.Controls.Add($TextBox_LName)

$TextBox_UName = New-Object System.Windows.Forms.TextBox
  $TextBox_UName.Location = New-Object System.Drawing.Size(25,100)
  $TextBox_UName.Size = New-Object System.Drawing.Size(250,20)
  $TextBox_UName.Text = "User Name"
  $AdmissionsAccount.Controls.Add($TextBox_UName)

$TextBox_Job = New-Object System.Windows.Forms.TextBox
  $TextBox_Job.Location = New-Object System.Drawing.Size(25,130)
  $TextBox_Job.Size = New-Object System.Drawing.Size(250,20)
  $TextBox_Job.Text = "Job Title"
  $AdmissionsAccount.Controls.Add($TextBox_Job)
  
$TextBox_EmID = New-Object System.Windows.Forms.TextBox
  $TextBox_EmID.Location = New-Object System.Drawing.Size(25,160)
  $TextBox_EmID.Size = New-Object System.Drawing.Size(250,20)
  $TextBox_EmID.Text = "Employee ID"
  $AdmissionsAccount.Controls.Add($TextBox_EmID)
  
$Button_Close = New-Object System.Windows.Forms.Button
  $Button_Close.Location = New-Object System.Drawing.Size(25,200)
  $Button_Close.Size = New-Object System.Drawing.Size(120,25)
  $Button_Close.TextAlign = "MiddleCenter"
  $Button_Close.Text = "Create User Account"
  $Button_Close.Add_Click({$AdmissionsAccount.Close()})
  $AdmissionsAccount.Controls.Add($Button_Close)

$AdmissionsAccount.Add_Shown({$AdmissionsAccount.Activate()})
[Void]$AdmissionsAccount.ShowDialog()

$NewUser = [ordered]@{FirstName=($TextBox_FName).Text; LastName=($TextBox_LName).Text; Username=($TextBox_UName).Text;  Title=($TextBox_Job).Text; Employee=($TextBox_EmID).Text}

Return $NewUser