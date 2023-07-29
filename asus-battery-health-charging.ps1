if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Please run this script as an administrator."
    exit 1
}


$chargeLimit = Read-Host "Enter the desired charging limit (0-100)%"


if (-not [int]::TryParse($chargeLimit, [ref]$null) -or $chargeLimit -lt 0 -or $chargeLimit -gt 100) {
    Write-Host "Invalid input. The charging limit must be an integer between 0 and 100."
    exit 1
}


$chargeLimit = [int]$chargeLimit


$chargingStartThreshold = $chargeLimit - 1
$chargingStopThreshold = $chargeLimit + 1


powercfg -SETDCVALUEINDEX SCHEME_CURRENT SUB_BATTERY BATTERYTHRESHOLDSTART $chargingStartThreshold
powercfg -SETDCVALUEINDEX SCHEME_CURRENT SUB_BATTERY BATTERYTHRESHOLDSTOP $chargingStopThreshold
powercfg -SETACVALUEINDEX SCHEME_CURRENT SUB_BATTERY BATTERYTHRESHOLDSTART $chargingStartThreshold
powercfg -SETACVALUEINDEX SCHEME_CURRENT SUB_BATTERY BATTERYTHRESHOLDSTOP $chargingStopThreshold


powercfg -S SCHEME_CURRENT

Write-Host "Charging battery limit set to $chargeLimit%"
