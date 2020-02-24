Add-Type -assembly System.Windows.Forms
#[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
#[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

##Create Form
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = "Test Form"
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true
$main_form.StartPosition = "CenterScreen"

##Allows user to use "ENTER" and "ESC" keyboard keys
$main_form.KeyPreview = $True
$main_form.Add_KeyDown({
    if ($_.KeyCode -eq "Enter")
    {
        $main_form.Close()
    }
    ELSEIF ($_.KeyCode -eq "Escape")
    {
        BREAK
    }
})

##Adds "OK" button to the form
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.point(200,350)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$main_form.AcceptButton = $OKButton
$main_form.Controls.Add($OKButton)

##Adds a "Cancel" button to the form
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.point(300,350)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "Cancel"
$CancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$main_form.CancelButton = $CancelButton
$main_form.Controls.Add($CancelButton)

##Add a label to the form in front of dropdown
$Label = New-Object System.Windows.Forms.Label
$Label.Location  = New-Object System.Drawing.point(0,10)
$Label.Size = New-Object System.Drawing.Size(380,20)
$Label.AutoSize = $true
$Label.Text = "AD users"
$main_form.Controls.Add($Label)

##Add a dropdown to the form
$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
##This gets all usernames from AD and assigns to $Users
$Users = get-aduser -filter * -Properties SamAccountName
##This Foreach populates the dropdown with values from $Users
Foreach ($User in $Users)
{
    $ComboBox.Items.Add($User.SamAccountName);
}
$ComboBox.Location  = New-Object System.Drawing.Point(60,10)
$main_form.Controls.Add($ComboBox)

##Add label in front of results
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "Last Password Set:"
$Label2.Location  = New-Object System.Drawing.Point(0,40)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)

##Add blank label to be filled later with results
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Text = ""
$Label3.Location  = New-Object System.Drawing.Point(110,40)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)

##Add clickable button
$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.point(400,10)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Check"
$main_form.Controls.Add($Button)

##Set what happens when button is clicked
$Button.Add_Click(
{
    $Label3.Text =  [datetime]::FromFileTime((Get-ADUser -identity $ComboBox.selectedItem -Properties pwdLastSet).pwdLastSet).ToString('MM dd yy : hh ss')
}
)

##Adds a label for the text box
$TxtBox1Name = New-Object System.Windows.Forms.Label
$TxtBox1Name.Location = New-Object System.Drawing.point(10,80) 
$TxtBox1Name.AutoSize = $true
$TxtBox1Name.Text = "Text Box 1"
$main_form.Controls.Add($TxtBox1Name)

##Adds a fillable text box
$TxtBox1 = New-Object System.Windows.Forms.TextBox
$TxtBox1.Location = New-Object System.Drawing.Point(110,80)
$TxtBox1.Size = New-Object System.Drawing.Size(280,15)
$main_form.Controls.Add($TxtBox1)

##Sets the form as active, and the dropdown as the focus
$main_form.Add_Shown({$main_form.Activate(); $ComboBox.focus})

##Sets the form on top
$main_form.Topmost = $True

##Make the form display
$main_form.ShowDialog()

<# ##Makes the form display, and sets the cancel button to force a BREAK
###For use when form is a function
IF ($main_form.ShowDialog() -eq [System.Windows.Forms.DialogResult]::Cancel)
{
    BREAK
} #>

##Sets contents of TxtBox1 to return to pipeline & returns to pipeline
$Returns = @{
    'TxtBox1' = $TxtBox1.text
}
$Returns = [PSObject]$Returns
$Returns