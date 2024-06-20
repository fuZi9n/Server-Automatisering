$outputFile = "EventLogErrors.txt"

$errors = Get-WinEvent -FilterHashtable @{LogName='Application','System'; Level=2}

if ($errors.Count -eq 0) {
    Write-Host "No error events found."
    exit
}

$errors | Select-Object TimeCreated, Id, LevelDisplayName, Message | Format-Table -AutoSize | Out-String | Set-Content $outputFile

Write-Host "Error events have been exported to $outputFile"
