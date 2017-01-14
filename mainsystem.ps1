

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
choco install greenshot 
choco install 7zip.install 
choco install conemu
choco install emacs 
choco install dropbox
choco install git.install
choco install poshgit
choco install paint.net
choco install calibre   
choco install expresso 

# python Stuff
choco install python3 
choco install pip
choco install pycharm-community 

Install-PackageProvider NuGet -Force
Import-PackageProvider NuGet -Force

Install-Module posh-git -Force
install-module iSEsteroids -Force

Set-ExecutionPolicy RemoteSigned -force
