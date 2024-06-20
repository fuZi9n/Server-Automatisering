Import-Module ActiveDirectory

$Username = brugernavn
$FirstName = fornavn
$LastName = efternavn

New-ADUser -Name $Username -GivenName $FirstName -Surname $LastName -SamAccountName $Username -UserPrincipalName "$Username@ussr.ru" -Path "CN=Users,DC=ussr,DC=ru" -AccountPassword (ConvertTo-SecureString "Kode1234!" -AsPlainText -Force) -Enabled $true -PasswordNeverExpires $true -ChangePasswordAtLogon $false