# Pre-requisites
## Linux Subsystem (tested in Windows 10, 1709)
Run the following command as an administrator in powershell:
```powershell
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -All -LimitAccess -NoRestart -ErrorAction Stop
```
## Ubuntu on Windows 
Install Ubuntu on Windows (Store link) : https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6
Install Ubuntu on Windows (AppX Download) : https://aka.ms/wsl-ubuntu-1604

## X server for Windows 
VcXsrv : https://sourceforge.net/projects/vcxsrv/files/latest/download
Xming ( not free unless you want a really old install ) : http://www.straightrunning.com/XmingNotes/

# Set up the Environment
* Clone this repo into your home folder of your Ubuntu user
* Run `sh ./initializeEnvironment.sh`

# References
* https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/steps_windows10.html#
* https://docs.microsoft.com/en-us/windows/wsl/install-win10
* https://docs.microsoft.com/en-us/windows/wsl/install-on-server
