param(
    [Parameter(Mandatory=$true)][string]$path,
    [Parameter(Mandatory=$true)][string]$apk
    )

[string[]]$devices = Get-Content -Path $path #read devices in array
adb devices #start the ADB server 
workflow install {
    param(
        $devices,
        $apk
    )
    foreach -parallel ($ip in $devices) { 
        adb connect ${ip}`:5555
        adb -s ${ip}`:5555 install -r $apk
        sleep 2
        "${ip} done" 
    }
}

install $devices $apk
