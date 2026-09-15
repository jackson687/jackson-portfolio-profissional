$ErrorActionPreference = "SilentlyContinue"

Write-Host "=== Diagnóstico básico de rede ===" -ForegroundColor Cyan
Write-Host ""

$config = Get-NetIPConfiguration | Where-Object { $_.NetAdapter.Status -eq "Up" } | Select-Object -First 1

if ($null -eq $config) {
    Write-Host "Nenhum adaptador de rede ativo foi encontrado." -ForegroundColor Yellow
    exit
}

Write-Host "Adaptador: $($config.InterfaceAlias)"
Write-Host "IPv4: $($config.IPv4Address.IPAddress)"
Write-Host "Gateway: $($config.IPv4DefaultGateway.NextHop)"
Write-Host "DNS: $($config.DNSServer.ServerAddresses -join ', ')"
Write-Host ""

$gateway = $config.IPv4DefaultGateway.NextHop

if ($gateway) {
    Write-Host "Teste do gateway: $gateway"
    Test-Connection -ComputerName $gateway -Count 2
}

Write-Host ""
Write-Host "Teste de resolução DNS: www.microsoft.com"
Resolve-DnsName www.microsoft.com -ErrorAction SilentlyContinue | Select-Object -First 3
