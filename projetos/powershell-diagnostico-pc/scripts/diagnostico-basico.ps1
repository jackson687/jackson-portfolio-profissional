$ErrorActionPreference = "SilentlyContinue"

Write-Host "=== Diagnóstico básico do computador ===" -ForegroundColor Cyan
Write-Host ""

$computer = Get-CimInstance Win32_ComputerSystem
$os = Get-CimInstance Win32_OperatingSystem

Write-Host "Computador: $($computer.Name)"
Write-Host "Fabricante: $($computer.Manufacturer)"
Write-Host "Modelo: $($computer.Model)"
Write-Host "Sistema: $($os.Caption)"
Write-Host "Versão: $($os.Version)"
Write-Host "Arquitetura: $($os.OSArchitecture)"
Write-Host "Memória total: $([math]::Round($computer.TotalPhysicalMemory / 1GB, 2)) GB"
Write-Host "Última inicialização: $($os.LastBootUpTime)"
