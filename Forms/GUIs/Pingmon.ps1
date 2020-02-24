<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Pingmon
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '786,529'
$Form.text                       = "Pingmon"
$Form.TopMost                    = $false

$browse_1                        = New-Object system.Windows.Forms.Button
$browse_1.text                   = "Browse"
$browse_1.width                  = 114
$browse_1.height                 = 28
$browse_1.location               = New-Object System.Drawing.Point(54,13)
$browse_1.Font                   = 'Microsoft Sans Serif,10'

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 72
$Groupbox1.width                 = 227
$Groupbox1.text                  = "List 1"
$Groupbox1.location              = New-Object System.Drawing.Point(18,22)

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 395
$Groupbox2.width                 = 225
$Groupbox2.text                  = "Monitor 1"
$Groupbox2.location              = New-Object System.Drawing.Point(19,114)

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 395
$Groupbox3.width                 = 225
$Groupbox3.text                  = "Monitor 3"
$Groupbox3.location              = New-Object System.Drawing.Point(533,114)

$Groupbox4                       = New-Object system.Windows.Forms.Groupbox
$Groupbox4.height                = 395
$Groupbox4.width                 = 225
$Groupbox4.text                  = "Monitor 2"
$Groupbox4.location              = New-Object System.Drawing.Point(274,114)

$Groupbox5                       = New-Object system.Windows.Forms.Groupbox
$Groupbox5.height                = 72
$Groupbox5.width                 = 227
$Groupbox5.text                  = "List 2"
$Groupbox5.location              = New-Object System.Drawing.Point(271,22)

$Groupbox6                       = New-Object system.Windows.Forms.Groupbox
$Groupbox6.height                = 72
$Groupbox6.width                 = 227
$Groupbox6.text                  = "List3"
$Groupbox6.location              = New-Object System.Drawing.Point(533,22)

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $true
$TextBox1.width                  = 187
$TextBox1.height                 = 300
$TextBox1.location               = New-Object System.Drawing.Point(18,35)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $true
$TextBox2.width                  = 187
$TextBox2.height                 = 300
$TextBox2.location               = New-Object System.Drawing.Point(20,35)
$TextBox2.Font                   = 'Microsoft Sans Serif,10'

$TextBox3                        = New-Object system.Windows.Forms.TextBox
$TextBox3.multiline              = $true
$TextBox3.width                  = 187
$TextBox3.height                 = 300
$TextBox3.location               = New-Object System.Drawing.Point(22,35)
$TextBox3.Font                   = 'Microsoft Sans Serif,10'

$browse_2                        = New-Object system.Windows.Forms.Button
$browse_2.text                   = "Browse"
$browse_2.width                  = 114
$browse_2.height                 = 28
$browse_2.location               = New-Object System.Drawing.Point(61,13)
$browse_2.Font                   = 'Microsoft Sans Serif,10'

$browse_3                        = New-Object system.Windows.Forms.Button
$browse_3.text                   = "Browse"
$browse_3.width                  = 114
$browse_3.height                 = 28
$browse_3.location               = New-Object System.Drawing.Point(60,13)
$browse_3.Font                   = 'Microsoft Sans Serif,10'

$start_mon1                      = New-Object system.Windows.Forms.Button
$start_mon1.text                 = "Start"
$start_mon1.width                = 60
$start_mon1.height               = 30
$start_mon1.location             = New-Object System.Drawing.Point(17,349)
$start_mon1.Font                 = 'Microsoft Sans Serif,10'

$start_mon2                      = New-Object system.Windows.Forms.Button
$start_mon2.text                 = "Start"
$start_mon2.width                = 60
$start_mon2.height               = 30
$start_mon2.location             = New-Object System.Drawing.Point(21,349)
$start_mon2.Font                 = 'Microsoft Sans Serif,10'

$start_mon3                      = New-Object system.Windows.Forms.Button
$start_mon3.text                 = "Start"
$start_mon3.width                = 60
$start_mon3.height               = 30
$start_mon3.location             = New-Object System.Drawing.Point(21,349)
$start_mon3.Font                 = 'Microsoft Sans Serif,10'

$l_file1                         = New-Object system.Windows.Forms.Label
$l_file1.text                    = "textfile.txt"
$l_file1.AutoSize                = $true
$l_file1.width                   = 25
$l_file1.height                  = 10
$l_file1.location                = New-Object System.Drawing.Point(10,50)
$l_file1.Font                    = 'Microsoft Sans Serif,7'

$l_file2                         = New-Object system.Windows.Forms.Label
$l_file2.text                    = "textfile.txt"
$l_file2.AutoSize                = $true
$l_file2.width                   = 25
$l_file2.height                  = 10
$l_file2.location                = New-Object System.Drawing.Point(11,50)
$l_file2.Font                    = 'Microsoft Sans Serif,7'

$l_file3                         = New-Object system.Windows.Forms.Label
$l_file3.text                    = "textfile.txt"
$l_file3.AutoSize                = $true
$l_file3.width                   = 25
$l_file3.height                  = 10
$l_file3.location                = New-Object System.Drawing.Point(12,50)
$l_file3.Font                    = 'Microsoft Sans Serif,7'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Stop"
$Button1.width                   = 60
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(145,349)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$ProgressBar1                    = New-Object system.Windows.Forms.ProgressBar
$ProgressBar1.width              = 187
$ProgressBar1.height             = 12
$ProgressBar1.location           = New-Object System.Drawing.Point(18,16)

$ProgressBar2                    = New-Object system.Windows.Forms.ProgressBar
$ProgressBar2.width              = 187
$ProgressBar2.height             = 12
$ProgressBar2.location           = New-Object System.Drawing.Point(20,16)

$ProgressBar3                    = New-Object system.Windows.Forms.ProgressBar
$ProgressBar3.width              = 187
$ProgressBar3.height             = 12
$ProgressBar3.location           = New-Object System.Drawing.Point(22,16)

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Stop"
$Button2.width                   = 60
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(147,349)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Stop"
$Button3.width                   = 60
$Button3.height                  = 30
$Button3.location                = New-Object System.Drawing.Point(149,349)
$Button3.Font                    = 'Microsoft Sans Serif,10'

$Groupbox1.controls.AddRange(@($browse_1,$l_file1))
$Form.controls.AddRange(@($Groupbox1,$Groupbox2,$Groupbox3,$Groupbox4,$Groupbox5,$Groupbox6))
$Groupbox2.controls.AddRange(@($TextBox1,$start_mon1,$Button1,$ProgressBar1))
$Groupbox4.controls.AddRange(@($TextBox2,$start_mon2,$ProgressBar2,$Button2))
$Groupbox3.controls.AddRange(@($TextBox3,$start_mon3,$ProgressBar3,$Button3))
$Groupbox5.controls.AddRange(@($browse_2,$l_file2))
$Groupbox6.controls.AddRange(@($browse_3,$l_file3))

$browse_1.Add_Click({ browse })
$start_mon1.Add_Click({ startping1 })
$browse_2.Add_Click({ browse2 })
$browse_3.Add_Click({ browse3 })
$Button1.Add_Click({ $Script:Results = Start-BackgroundJob -Job ${Function:startping1} })



#Write your logic code here



#Browse file

function browse {
$openFileDialog = New-Object windows.forms.openfiledialog   
    $openFileDialog.initialDirectory = [System.IO.Directory]::GetCurrentDirectory()   
    $openFileDialog.title = "Select txt containing serverlist"   
    $openFileDialog.filter = "Txt file (*.txt)| *.txt"   
    $openFileDialog.ShowHelp = $True   
    Write-Host "Select Downloaded Settings File... (see FileOpen Dialog)" -ForegroundColor Green  
    $result = $openFileDialog.ShowDialog()   # Display the Dialog / Wait for user response 
    # in ISE you may have to alt-tab or minimize ISE to see dialog box 
    $result 
    if($result -eq "OK")    {    
            Write-Host "Selected Downloaded Settings File:"  -ForegroundColor Green  
            $l_file1.text = $OpenFileDialog.filename   
            # $OpenFileDialog.CheckFileExists 
             
            # Import-AzurePublishSettingsFile -PublishSettingsFile $openFileDialog.filename  
            # Unremark the above line if you actually want to perform an import of a publish settings file  
            Write-Host "Import Settings File Imported!" -ForegroundColor Green 
        } 
        else { Write-Host "Import Settings File Cancelled!" -ForegroundColor Yellow} 
}

#Browse file

function browse2 {
$openFileDialog = New-Object windows.forms.openfiledialog   
    $openFileDialog.initialDirectory = [System.IO.Directory]::GetCurrentDirectory()   
    $openFileDialog.title = "Select txt containing serverlist"   
    $openFileDialog.filter = "Txt file (*.txt)| *.txt"   
    $openFileDialog.ShowHelp = $True   
    Write-Host "Select Downloaded Settings File... (see FileOpen Dialog)" -ForegroundColor Green  
    $result = $openFileDialog.ShowDialog()   # Display the Dialog / Wait for user response 
    # in ISE you may have to alt-tab or minimize ISE to see dialog box 
    $result 
    if($result -eq "OK")    {    
            Write-Host "Selected Downloaded Settings File:"  -ForegroundColor Green  
            $l_file2.text = $OpenFileDialog.filename   
            # $OpenFileDialog.CheckFileExists 
             
            # Import-AzurePublishSettingsFile -PublishSettingsFile $openFileDialog.filename  
            # Unremark the above line if you actually want to perform an import of a publish settings file  
            Write-Host "Import Settings File Imported!" -ForegroundColor Green 
        } 
        else { Write-Host "Import Settings File Cancelled!" -ForegroundColor Yellow} 
}

#Browse file

function browse3 {
$openFileDialog = New-Object windows.forms.openfiledialog   
    $openFileDialog.initialDirectory = [System.IO.Directory]::GetCurrentDirectory()   
    $openFileDialog.title = "Select txt containing serverlist"   
    $openFileDialog.filter = "Txt file (*.txt)| *.txt"   
    $openFileDialog.ShowHelp = $True   
    Write-Host "Select Downloaded Settings File... (see FileOpen Dialog)" -ForegroundColor Green  
    $result = $openFileDialog.ShowDialog()   # Display the Dialog / Wait for user response 
    # in ISE you may have to alt-tab or minimize ISE to see dialog box 
    $result 
    if($result -eq "OK")    {    
            Write-Host "Selected Downloaded Settings File:"  -ForegroundColor Green  
            $l_file3.text = $OpenFileDialog.filename   
            # $OpenFileDialog.CheckFileExists 
             
            # Import-AzurePublishSettingsFile -PublishSettingsFile $openFileDialog.filename  
            # Unremark the above line if you actually want to perform an import of a publish settings file  
            Write-Host "Import Settings File Imported!" -ForegroundColor Green 
        } 
        else { Write-Host "Import Settings File Cancelled!" -ForegroundColor Yellow} 
}


#ping 1

function startping1 {
    
    do{
    $ServerName = Get-Content ($l_file1.text)
  
foreach ($Server in $ServerName) {  
  
        if (test-Connection -ComputerName $Server -Count 2 -Quiet ) {   
          progress
            $textbox1.AppendText("$Server is Pinging")
            $textbox1.AppendText("`n")
          
                    } else  
                      
                  {  $textbox1.Appendtext("$Server not pinging")
                              $textbox1.AppendText("`n")
              
                    }      
          
} 
    start-sleep -Seconds 10
}until($infinity)
    
    
}


#ping 2

function startping2 {
    
    do{
    $ServerName = Get-Content ($l_file2.text)
  
foreach ($Server in $ServerName) {  
  
        if (test-Connection -ComputerName $Server -Count 2 -Quiet ) {   
          
            $textbox2.AppendText("$Server is Pinging")
            $textbox2.AppendText("`n")
          
                    } else  
                      
                  {  $textbox2.Appendtext("$Server not pinging")
                              $textbox2.AppendText("`n")
              
                    }      
          
} 
    start-sleep -Seconds 10
}until($infinity)
    
    
}

#ping 3

function startping3 {
    
    do{
    $ServerName = Get-Content ($l_file3.text)
  
foreach ($Server in $ServerName) {  
  
        if (test-Connection -ComputerName $Server -Count 2 -Quiet ) {   
          
            $textbox3.AppendText("$Server is Pinging")
            $textbox3.AppendText("`n")
          
                    } else  
                      
                  {  $textbox3.Appendtext("$Server not pinging")
                              $textbox3.AppendText("`n")
              
                    }      
          
} 
    start-sleep -Seconds 10
}until($infinity)
    
    
}



function progress {

    While ($i -le 100) {
        $progressbar1.Value = $i
        Start-Sleep -m 1
        "VALLUE EQ"
        $i += 10
    }
}





#jobba

function Start-BackgroundJob {
    param(
        [ScriptBlock]
            $Job = {},
        [HashTable]
            $JobVariables = @{}
    )
    
    #Create our runspace & a powershell object to run in
    $Runspace = [runspacefactory]::CreateRunspace()
    $Runspace.Open()
    
    $Powershell = [powershell]::Create()
    $Powershell.Runspace = $Runspace

#Add code for the function to be run
    $Powershell.AddScript($Job) | Out-Null
    
    #Send variables across pipeline 1 by 1 and make them available for our imported function
    foreach ($Variable in $JobVariables.GetEnumerator()) {
        $Powershell.AddParameter($Variable.Name, $Variable.Value) | Out-Null
        
         #Start job
    $BackgroundJob = $Powershell.BeginInvoke()
    
    #Wait for code to complete and keep GUI responsive
    do {
        [System.Windows.Forms.Application]::DoEvents()
        Start-Sleep -Milliseconds 1
    } while (!$BackgroundJob.IsCompleted)
        
            $Result = $Powershell.EndInvoke($BackgroundJob)
    
    #Clean up
    $Powershell.Dispose() | Out-Null
    $Runspace.Close() | Out-Null
    
    #Return our results to the GUI
    $Result
        
        
    }
    }



[void]$Form.ShowDialog()