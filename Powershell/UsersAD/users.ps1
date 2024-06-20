Import-Module ActiveDirectory

$outputFile = "ADUsers.txt"

$users = Get-ADUser -Filter * -Property DisplayName, SamAccountName, EmailAddress

$users | Select-Object DisplayName, SamAccountName, EmailAddress | Format-Table -AutoSize | Out-String | Set-Content $outputFile

Write-Host "Active Directory brugere er exporteret til filen $outputFile"
