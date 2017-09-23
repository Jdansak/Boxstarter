# http://boxstarter.org/package/url?https://raw.githubusercontent.com/Jdansak/Boxstarter/master/mainsystem.ps1

$mac = ((Get-NetAdapter -Physical | 
where-object {$_.name -match '^[WI|ether]\w+'} | 
Where-Object {$_.status -Match 'Up'})[0] | 
select -ExpandProperty MacAddress) -replace '-', ''
$mac = 'D' + $mac


#update windows
#set-ExecutionPolicy Unrestricted -Force


# Windows configuration
Rename-Computer -ComputerName $mac -force 
#Set-TaskbarOptions -Size Small -Lock -Dock Top -Combine Always
#Enable-RemoteDesktop
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions -EnableShowFullPathInTitleBar




choco install chocolatey
choco install 7zip.install 
choco install visualstudiocode
choco install dropbox
choco install calibre   
choco install expresso 
choco install citrix-receiver 
choco install virtualbox 
choco install vagrant
choco install rufus 
choco install cygwin 
choco install cyg-get 

# python Stuff
choco install python3 
choco install pip
choco install pycharm-community 

#games
choco install battle.net 
choco install steam


#cygwin Stuff
cyg-get ssh
cyg-get rsync
cyg-get nano
cyg-get tmux

#VS code stuff
code --install-extension fdidron.theme-panictheme
ms-vscode.powershell

Install-PackageProvider NuGet -Force
Import-PackageProvider NuGet -Force

Install-Module posh-git -Force
install-Module ISEsteroids -Force


Install-WindowsUpdate -acceptEula -getUpdatesFromMS
Set-ExecutionPolicy RemoteSigned -force
