<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '785,687'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$ListBox1                        = New-Object system.Windows.Forms.ListBox
$ListBox1.text                   = "listBox"
$ListBox1.width                  = 80
$ListBox1.height                 = 30
$ListBox1.location               = New-Object System.Drawing.Point(28,58)

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 100
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(16,9)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "button"
$Button1.width                   = 60
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(13,49)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "label"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(186,530)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$PictureBox1                     = New-Object system.Windows.Forms.PictureBox
$PictureBox1.width               = 60
$PictureBox1.height              = 30
$PictureBox1.location            = New-Object System.Drawing.Point(20,147)
$PictureBox1.imageLocation       = "undefined"
$PictureBox1.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text                  = "checkBox"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 95
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(18,209)
$CheckBox1.Font                  = 'Microsoft Sans Serif,10'

$ComboBox1                       = New-Object system.Windows.Forms.ComboBox
$ComboBox1.text                  = "comboBox"
$ComboBox1.width                 = 100
$ComboBox1.height                = 20
@('1','2','3') | ForEach-Object {[void] $ComboBox1.Items.Add($_)}
$ComboBox1.location              = New-Object System.Drawing.Point(23,268)
$ComboBox1.Font                  = 'Microsoft Sans Serif,10'

$RadioButton1                    = New-Object system.Windows.Forms.RadioButton
$RadioButton1.text               = "radioButton"
$RadioButton1.AutoSize           = $true
$RadioButton1.width              = 104
$RadioButton1.height             = 20
$RadioButton1.location           = New-Object System.Drawing.Point(15,316)
$RadioButton1.Font               = 'Microsoft Sans Serif,10'

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 150
$Panel1.width                    = 300
$Panel1.location                 = New-Object System.Drawing.Point(151,15)

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 71
$Groupbox1.width                 = 170
$Groupbox1.text                  = "Group Box"
$Groupbox1.location              = New-Object System.Drawing.Point(169,203)

$MaskedTextBox1                  = New-Object system.Windows.Forms.MaskedTextBox
$MaskedTextBox1.multiline        = $false
$MaskedTextBox1.width            = 100
$MaskedTextBox1.height           = 20
$MaskedTextBox1.location         = New-Object System.Drawing.Point(163,322)
$MaskedTextBox1.Font             = 'Microsoft Sans Serif,10'

$ProgressBar1                    = New-Object system.Windows.Forms.ProgressBar
$ProgressBar1.width              = 200
$ProgressBar1.height             = 60
$ProgressBar1.location           = New-Object System.Drawing.Point(27,392)

$ListView1                       = New-Object system.Windows.Forms.ListView
$ListView1.text                  = "listView"
$ListView1.width                 = 80
$ListView1.height                = 30
$ListView1.location              = New-Object System.Drawing.Point(497,27)

$ListBox2                        = New-Object system.Windows.Forms.ListBox
$ListBox2.text                   = "listBox"
$ListBox2.width                  = 80
$ListBox2.height                 = 30
$ListBox2.location               = New-Object System.Drawing.Point(633,28)

$DataGridView1                   = New-Object system.Windows.Forms.DataGridView
$DataGridView1.width             = 300
$DataGridView1.height            = 250
$DataGridView1.location          = New-Object System.Drawing.Point(334,353)

$ErrorProvider1                  = New-Object system.Windows.Forms.ErrorProvider

$ToolTip1                        = New-Object system.Windows.Forms.ToolTip
$ToolTip1.isBalloon              = $true

$OkBtn                           = New-Object system.Windows.Forms.Button
$OkBtn.BackColor                 = "#0cf00a"
$OkBtn.text                      = "OK"
$OkBtn.width                     = 60
$OkBtn.height                    = 30
$OkBtn.location                  = New-Object System.Drawing.Point(12,22)
$OkBtn.Font                      = 'Microsoft Sans Serif,10'

$CnlBtn                          = New-Object system.Windows.Forms.Button
$CnlBtn.BackColor                = "#f70707"
$CnlBtn.text                     = "Cancel"
$CnlBtn.width                    = 60
$CnlBtn.height                   = 30
$CnlBtn.location                 = New-Object System.Drawing.Point(90,22)
$CnlBtn.Font                     = 'Microsoft Sans Serif,10'

$MaskedTextBox2                  = New-Object system.Windows.Forms.MaskedTextBox
$MaskedTextBox2.multiline        = $true
$MaskedTextBox2.width            = 100
$MaskedTextBox2.height           = 20
$MaskedTextBox2.location         = New-Object System.Drawing.Point(37,523)
$MaskedTextBox2.Font             = 'Microsoft Sans Serif,10'

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $true
$TextBox2.width                  = 100
$TextBox2.height                 = 20
$TextBox2.location               = New-Object System.Drawing.Point(13,98)
$TextBox2.Font                   = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($ListBox1,$TextBox1,$Button1,$Label1,$PictureBox1,$CheckBox1,$ComboBox1,$RadioButton1,$Panel1,$Groupbox1,$MaskedTextBox1,$ProgressBar1,$ListView1,$ListBox2,$DataGridView1,$MaskedTextBox2,$TextBox2))
$Groupbox1.controls.AddRange(@($OkBtn,$CnlBtn))




#Write your logic code here

[void]$Form.ShowDialog()