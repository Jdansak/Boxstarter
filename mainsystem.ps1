

# http://boxstarter.org/package/url?



#update windows
set-ExecutionPolicy Unrestricted -Force


# Windows configuration
Rename-Computer -ComputerName surface-JRD
Set-TaskbarOptions -Size Small -Lock -Dock Top -Combine Always
Enable-RemoteDesktop
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions -EnableShowFullPathInTitleBar



Install-WindowsUpdate -acceptEula -getUpdatesFromMS
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


# python Stuff
choco install python3 
choco install pip
choco install pycharm-community 

Install-PackageProvider NuGet -Force
Import-PackageProvider NuGet -Force

Install-Module posh-git -Force
install-Module ISEsteroids -Force



Set-ExecutionPolicy RemoteSigned -force
