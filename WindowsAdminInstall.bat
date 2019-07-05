@echo off
ECHO Installing and configuring chocolatey :) 
::  install chocolatey via CMD - need .NET 4+ Win7+/SVR2003+ PSv2+ - https://chocolatey.org/install
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
::  this is a feature to ignore all prompts from choco 
choco feature enable -n=allowGlobalConfirmation
::  this installs a chocolatey extension installer
choco install chocolatey-core.extension 

ECHO Installing prep software
::  installs an opensource pre-built OpenJDK binary https://adoptopenjdk.net/about.html
choco install adoptopenjdk8jre
::  This command installs all Visual Studio c++ redistributables 
choco install vcredist-all
::  This command installs and updates powershell
choco install powershell
:: This is an auto updater for chocolatey
choco install chocolateypackageupdater
:: This is a graphical interface for chocolatey
choco install chocolateygui
choco install googlechrome
choco install firefox
choco install 7zip.install
choco install ccleaner
choco install adobereader
choco install flashplayerplugin
choco install flashplayeractivex

ECHO Installing I.T. software 
choco install rufus
choco install vim
choco install telnet 
choco install procexp
choco install wireshark
choco install malwarebytes
choco install python
choco install FileZilla
choco install curl
choco install putty.install
choco install sysinternals
choco install nmap 
choco install advanced-ip-scanner
choco install winscp
choco install codeblocks
choco install pycharm-community
choco install mremoteng
choco install yumi 
choco install adblockplus-firefox 
choco install github-desktop 
choco install grepwin 
choco install burp-suite-free-edition 
choco install vmware-powercli-psmodule
choco install hexchat
choco install angryip 
choco install patch-my-pc 
choco install gns3 
choco install tftpd32 
choco install wget
choco install terminals 
choco install superputty
choco install sql-server-management-studio 
choco install treesizefree
choco install dbeaver
choco install wsl 
choco install wsl-ubuntu-1804 
choco install rsat 
choco install veeam-endpoint-backup-free
choco install bitwarden
choco install docker-desktop
choco install kubernetes-cli 
choco install grammarly 
choco install grammarly-chrome  
choco install mbsa 
choco install pingplotter 
choco install openvpn 
choco install beyondcompare
choco install visualstudio2017community 
choco install regscanner.install 
choco install ubiquiti-unifi-controller
choco install iperf3 
choco install autohotkey.portable 

::  Check for upgrades
choco upgrade 

ECHO Starting windows configs 
::  Checks for Windows updates, resetauthorization allows you to check more than once an hour
::  detectnow checks for missing updates, updatenow downloads and install missing updates
wuauclt.exe /resetauthorization /detectnow /updatenow
::  Checks for windows updates post Windows 10/1603
UsoClient.exe startscan

PAUSE
 
