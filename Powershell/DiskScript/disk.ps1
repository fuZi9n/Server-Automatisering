$outputFile = "DiskInfo.txt"

$disks = Get-PhysicalDisk | Select-Object DeviceID, MediaType, Size, OperationalStatus

$disks | Format-Table -AutoSize | Out-String | Set-Content $outputFile

Write-Host "Disk information has been exported to $outputFile"
