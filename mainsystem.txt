# http://boxstarter.org/package/url?



#update windows

Install-WindowsUpdate -acceptEula -getUpdatesFromMS



# Windows configuration
Rename-Computer -ComputerName surface-JRD
Update-ExecutionPolicy RemoteSigned
Enable-RemoteDesktop
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions -EnableShowFullPathInTitleBar


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

# python Stuff
choco install python3 
choco install pip
choco install pycharm-community 
