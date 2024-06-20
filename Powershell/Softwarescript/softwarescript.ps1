#Variabel til at definere output filen
$outputFile = "InstalledSoftware.txt"

$installedSoftware = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" `
                   , "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*" `
                   , "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" `
                   | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate


$installedSoftware = $installedSoftware | Where-Object { $_.DisplayName -ne $null }


$installedSoftware | Format-Table -AutoSize | Out-String | Set-Content $outputFile

Write-Host "Liste over installeret software findes i $outputFile"
