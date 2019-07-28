# ADBupdater
Collection of scripts to mass-update or install an APK on Android devices via ADB.

ADB tools obviously required. Make sure that the adb binary is in your $PATH variable.

## General
Provide a text file with all your devices in it. IP or hostname doesn't matter as long as your computer can resolve it. Have a look at the `devices.txt.example` file for an example

## Powershell
Run the script with two commandline arguments: `path` and `apk`.

```powershell
.\adbupdater.ps1 -path .\devices.txt -apk Pogo.apk
```

The script will run the install process for each device simultaneously, could cause a bit of load on the network.

## Bash
soon(tm)
