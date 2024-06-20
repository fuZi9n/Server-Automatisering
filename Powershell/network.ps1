# variabel så vi kan genbruge det senere i scriptet
$netAdapters = Get-NetAdapter

foreach ($adapter in $netAdapters) {
    Write-Host "Adapter Name: $($adapter.Name)"
    Write-Host "Interface Description: $($adapter.InterfaceDescription)"
    Write-Host "Status: $($adapter.Status)"
    Write-Host "MAC Address: $($adapter.MacAddress)"
    Write-Host "Link Speed: $($adapter.LinkSpeed) bps"

    $ipAddresses = Get-NetIPAddress -InterfaceIndex $adapter.IfIndex
    foreach ($ip in $ipAddresses) {
        Write-Host "IP Address: $($ip.IPAddress)"
        Write-Host "Address Family: $($ip.AddressFamily)"
        Write-Host "Prefix Length: $($ip.PrefixLength)"
        Write-Host "Default Gateway: $($ip.DefaultGateway)"
    }

    Write-Host "----------------------------------------"
}
