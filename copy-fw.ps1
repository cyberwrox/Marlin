rm N:\*.bin

$latest = (get-childitem D:\Source\GitHub\cyberwrox\MarlinFirmware\Marlin\.pio\build\STM32F103RE_creality\*.bin | Sort-Object -Descending -Property LastWriteTime | Select -First 1)
$latest
copy $latest N:\

# $vol = get-wmiobject -Class Win32_Volume | where{$_.Name -eq 'N:\'}  
# $vol.DriveLetter = $null  
# $vol.Put()  
# $vol.Dismount($false, $false)
