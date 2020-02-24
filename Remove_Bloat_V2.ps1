##Command to get Provisioned Packages list
#Get-AppxprovisionedPackage -online | Select DisplayName, packageName

##Command to get installed packages
#Get-AppxPackage -allusers | Select Name, PackageFullName

##Un-install desired packages
#Add any desired package name to the list below after gathering them from the above commands
$AppList = "7EE7776C.LinkedInforWindows",
		   "DB6EA5DB.MediaSuiteEssentialsforDell",
		   "DB6EA5DB.Power2GoforDell",
		   "DB6EA5DB.PowerDirectorforDell",
		   "DB6EA5DB.PowerMediaPlayerforDell",
		   "DB6EA5DB.PowerMediaPlayerforDell",
		   "Microsoft.BingWeather",
		   "Microsoft.DesktopAppInstaller",
		   "Microsoft.Microsoft3DViewer",
		   "Microsoft.MicrosoftSolitaireCollection",
		   "Microsoft.MPEG2VideoExtension",
		   "Microsoft.Office.OneNote",
		   "Microsoft.OneConnect",
		   "Microsoft.People",
		   "Microsoft.Print3D",
		   "Microsoft.SkypeApp",
		   "Microsoft.Wallet",
		   "Microsoft.WindowsCamera",
		   "microsoft.windowscommunicationsapps",
		   "Microsoft.WindowsFeedbackHub",
		   "Microsoft.WindowsMaps",
		   "Microsoft.WindowsSoundRecorder",
		   "Microsoft.XboxGameCallableUI",		   
		   "Microsoft.Xbox.TCUI",
		   "Microsoft.XboxApp",
		   "Microsoft.XboxGameOverlay",
		   "Microsoft.XboxIdentityProvider",
		   "Microsoft.XboxSpeechToTextOverlay",
		   "Microsoft.ZuneMusic",
		   "Microsoft.ZuneVideo",
		   "Microsoft.AAD.BrokerPlugin",
		   "Microsoft.Windows.PeopleExperienceHost",
		   "Microsoft.Windows.PinningConfirmationDialog",
		   "Microsoft.Windows.SecHealthUI",
		   "Microsoft.Windows.SecondaryTileExperience",
		   "Microsoft.Windows.SecureAssessmentBrowser",
		   "DB6EA5DB.Power2GoforDell",
		   "InputApp",
		   "46928bounde.EclipseManager",
		   "AdobeSystemsIncorporated.AdobePhotoshopExpress",
		   "ActiproSoftwareLLC.562882FEEB491",
		   "Microsoft.BingTranslator",
		   "Microsoft.BingNews",
		   "D5EA27B7.Duolingo-LearnLanguagesforFree",
		   "Microsoft.Advertising.Xaml",
		   "Microsoft.Advertising.Xaml",
		   "Microsoft.FreshPaint",
		   "Microsoft.Office.Sway",
		   "Microsoft.XboxGameOverlay",
		   "Microsoft.Wallet",
		   "Microsoft.Xbox.TCUI",
		   "Microsoft.BingWeather",
		   "Microsoft.XboxSpeechToTextOverlay",
		   "Microsoft.Messaging",
		   "DB6EA5DB.PowerDirectorforDell",
		   "Microsoft.OneConnect",
		   "DB6EA5DB.MediaSuiteEssentialsforDell",
		   "7EE7776C.LinkedInforWindows",
		   "Microsoft.WindowsFeedbackHub",
		   "Microsoft.XboxIdentityProvider",
		   "Microsoft.DesktopAppInstaller",
		   "Microsoft.Office.OneNote",
		   "DB6EA5DB.PowerMediaPlayerforDell",
		   "Microsoft.MicrosoftOfficeHub",
		   "Microsoft.XboxApp",
		   "Microsoft.SkypeApp",
		   "Microsoft.WindowsMaps",
		   "microsoft.windowscommunicationsapps",
		   "Microsoft.People",
		   "Microsoft.WindowsSoundRecorder",
		   "Microsoft.ZuneVideo",
		   "Microsoft.ZuneMusic",
		   "Microsoft.WindowsCamera"
		   
ForEach ($App in $AppList)
 {
 $PackageFullName = (Get-AppxPackage $App).PackageFullName
 $ProPackageFullName = (Get-AppxProvisionedPackage -online | where {$_.Displayname -eq $App}).PackageName
 write-host $PackageFullName
 Write-Host $ProPackageFullName
 if ($PackageFullName)
 {
 Write-Host "Removing Package: $App"
 remove-AppxPackage -package $PackageFullName -AllUsers
 }
 else
 {
 Write-Host "Unable to find package: $App"
 }
 if ($ProPackageFullName)
 {
 Write-Host "Removing Provisioned Package: $ProPackageFullName"
 Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
 }
 else
 {
 Write-Host "Unable to find provisioned package: $App"
 }
 }
 
#Enable remote registry service
Set-Service -Name RemoteRegistry -StartupType Automatic
#Enable Windows Update Service
Set-Service -Name wuauserv -StartupType Automatic
#Enable Windows Modules Installer
Set-Service -Name TrustedInstaller -StartupType Automatic
#enable network discovery
Get-NetFirewallRule -DisplayGroup 'Network Discovery'|Set-NetFirewallRule -Profile 'Private, Domain' -Enabled true -PassThru
#enable file and printer sharing
Get-NetFirewallRule -DisplayGroup 'File and Printer Sharing'|Set-NetFirewallRule -Profile 'Private, Domain' -Enabled true -PassThru

 ##Remove One-Drive
 taskkill /f /im OneDrive.exe
 C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
 New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
 New-ItemProperty -Path "HKCR:CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Name System.IsPinnedToNameSpaceTree -PropertyType Dword -Value 0 -Force

 ##Uninstall non-appx applications
 #Get list of applications
 #get-package | select name
 
 #Uninstall Desired Applications
 #Add any desired package name to the list below after gathering them from the above commands
 $Appslst = "Dell Digital Delivery",
			"Dell SupportAssist",
			"Dell Command | Update",
			"Dell SupportAssistAgent",
			"OneDrive"
ForEach ($Apps in $Appslst)
{
write-Host "Removing Application : $Apps"
 Uninstall-Package -name $Apps -force
 }
 echo "Completed"


