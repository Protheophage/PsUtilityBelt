##Publish to AOTW_PSRepo
Publish-Module -Path \\kite\userhome\cconnolly\Documents\GIT\Repos\Asset_Tracking\Asset_Tracking -Repository AOTW_PSRepo -Verbose

added line
nother test line

	##Tell user what is happening
	$wshell = New-Object -ComObject Wscript.Shell
	$wshell.Popup("Checking that $($comp) is not already in Asset Log.",3,$cmpFnd.asset_name,0x0)





    	if($cmpFnd -ne $null)
	{
		##Show popup for user
		$wshell = New-Object -ComObject Wscript.Shell
		$wshell.Popup(($cmpFnd | ForEach-Object { "$($_.asset_name) is already registered as follows:`nAsset ID: $($_.asset_id)`nSerial Number: $($_.serial_number)"}),0,$cmpFnd.asset_name,0x0)
		Break
	}






Function Out-Text
{
	<#
	.SYNOPSIS
	Create text doc on users desktop with registered asset information.
	#>
	Param
	(
		$Path
	)
	$Path = "$($env:USERPROFILE)\Desktop\Registered_Asset.txt"
	If (!(Test-Path $Path))
	{
		New-Item $Path -ItemType File
		$AsstLst | ForEach-Object {"`r`nDate Added: $($_.date_added)`r`nDate Updated: $($_.date_updated)`r`nAsset name: $($_.asset_name)`r`nAsset ID: $($_.asset_id)`r`nSerial Number: $($_.serial_number)`r`nManufacturer: $($_.manufacturer)`r`nModel: $($_.model)`r`nDescription: $($_.description)`r`nProduct Key: $($_.product_key)`r`nStatus: $($_.status)`r`nPurchase Price: $($_.purch_price)" | Add-Content -Path $Path}
		Add-Content -Path $Path -Value "`r`nPLEASE REMEMBER TO DELETE THIS FILE WHEN YOU ARE FINISHED WITH IT."
		notepad.exe $Path
	}
	Else
	{
		$AsstLst | ForEach-Object {"`r`nDate Added: $($_.date_added)`r`nDate Updated: $($_.date_updated)`r`nAsset name: $($_.asset_name)`r`nAsset ID: $($_.asset_id)`r`nSerial Number: $($_.serial_number)`r`nManufacturer: $($_.manufacturer)`r`nModel: $($_.model)`r`nDescription: $($_.description)`r`nProduct Key: $($_.product_key)`r`nStatus: $($_.status)`r`nPurchase Price: $($_.purch_price)" | Add-Content -Path $Path}
		Add-Content -Path $Path -Value "`r`nPLEASE REMEMBER TO DELETE THIS FILE WHEN YOU ARE FINISHED WITH IT."
		notepad.exe $Path
	}
	$AsstLst | ForEach-Object {$assetnumber = $($_.asset_id);$assetmodel = $($_.model);New-DymoLabel -AstNum $assetnumber -AstModel $assetmodel}
}








##Download Files From Websites
    $url = "http://website.com/downloads/Iwantthisfile.txt" 
    $path = "C:\temp\thisisthefile.txt" 
   # param([string]$url, [string]$path) 
      
    if(!(Split-Path -parent $path) -or !(Test-Path -pathType Container (Split-Path -parent $path))) { 
      $path = Join-Path $pwd (Split-Path -leaf $path) 
    } 
      
    "Downloading [$url]`nSaving at [$path]" 
    $client = new-object System.Net.WebClient 
    $client.DownloadFile($url, $path) 
    #$client.DownloadData($url, $path) 
      
    $path

	#
	    $SysIntsPath = "C:\SysInternals"
	If (!(Test-Path $SysIntsPath))
	{
		$SysIntsZip = "$SysIntsPath\SysInternals.zip"
        New-Item $SysIntsPath -ItemType Directory
        $URL = "https://download.sysinternals.com/files/SysinternalsSuite.zip" 
        $WebClient = New-Object System.Net.WebClient
		$WebClient.DownloadFile($URL,$SysIntsZip)
		$WebClient.Dispose()	
	}

	#
	$BaseURL = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/'
			$URL = $BaseURL + $dl
			$Destination = Join-Path -Path $HOME -ChildPath "Downloads\$dl"
			$WebClient = New-Object System.Net.WebClient
			$WebClient.DownloadFile($URL,$Destination)
			$WebClient.Dispose()



Parameter Examples{

	<# 
	.NAME
		Untitled
	.PARAMETER PosSetReq
		Examples of setting Position Set and Mandatory
	.PARAMETER ValFromPipe
		Examples of setting ValueFromPipeline types
	.PARAMETER Validators
		Examples of setting parameter validations
	.PARAMETER Detailers
		Examples of setting Type, Alias, and HelpMessage

	#>
	function Untitled
	{

	[OutputType([PSObject],ParameterSetName="ParamSet")]
	Param
	(
	[Parameter(Mandatory=$true,
		ParameterSetName="ParamSet",
		Position=1)]
		$PosSetReq,
	[Parameter(ValueFromPipeline=$true,
		ValueFromPipelineByProperty=$true,
		ValueFromRemainingArguments=$true)]
		$ValFromPipe,
	[Parameter()]
		[AllowNull()]
		[AllowEmptyString()]
		[AllowEmptyCollection()]
		[ValidateNotNull()]
		[ValidateNotNullorEmpty()]
		[ValidateLength(1,2)]
		[ValidateLength(1,2)]
		$Validators,
	[Parameter(HelpMessage="Get some help")]
		[Alias("Deets")]
		[VarType]
		$Detailers
	)
	#Function Logic:

	}

}