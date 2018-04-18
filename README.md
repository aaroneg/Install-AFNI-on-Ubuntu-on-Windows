# Warning
All of these scripts take a long time to complete. I suggest not making any attempt to run them if you need to restart your computer any time soon. 

# Pre-requisites
## Linux Subsystem (tested in Windows 10, 1709)
Run the following command as an administrator in powershell:
```powershell
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -All -LimitAccess -NoRestart -ErrorAction Stop
```
## Ubuntu on Windows 
* Install Ubuntu on Windows (Store link) : https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6
* Install Ubuntu on Windows (AppX Download) : https://aka.ms/wsl-ubuntu-1604

## X server for Windows 
* VcXsrv : https://sourceforge.net/projects/vcxsrv/files/latest/download
* Xming ( not free unless you want a really old install ) : http://www.straightrunning.com/XmingNotes/

# Install AFNI environment
## Set up the Environment
* Clone this repo into your home folder of your Ubuntu user
* cd into the new folder 
* Run `sh ./initializeEnvironment.sh`
* Close your Ubuntu window and re-open
* cd into the repo

## Install R
* Run `sh ./installR.sh`

## Make AFNI profiles, prepare for bootcamp and evaluate system:
* Run `sh ./createAfniProfiles.sh`

# Run AFNI
* Every time you run `afni` you need to be running your X server first. 
* Launch Ubuntu
* run `afni` 

# Mounting network shares automatically
```bash
echo "\\server\share /mnt/share     drvfs   defaults        0 0" | sudo tee --append /etc/fstab
echo "sudo mount -a" >> ~/.profile
``` 

# Notes
* The AFNI developers *really* want you to use tcsh. If you want to do this, you'll need to run this at minimum (untested)
```bash
chsh -s /usr/bin/tcsh
echo 'setenv R_LIBS ~/R' >> ~/.cshrc
```

# Repairing R Packages
```bash
export R_LIBS=$HOME/R
rPkgsInstall -pkgs ALL
```

# References
* https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/steps_windows10.html#
* https://docs.microsoft.com/en-us/windows/wsl/install-win10
* https://docs.microsoft.com/en-us/windows/wsl/install-on-server
* https://blogs.msdn.microsoft.com/wsl/2017/04/18/file-system-improvements-to-the-windows-subsystem-for-linux/
