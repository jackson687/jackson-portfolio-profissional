$ErrorActionPreference = "SilentlyContinue"

Write-Host "=== Verificação de espaço em disco ===" -ForegroundColor Cyan
Write-Host ""

Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
    Select-Object DeviceID,
        @{Name="TotalGB";Expression={[math]::Round($_.Size / 1GB, 2)}},
        @{Name="LivreGB";Expression={[math]::Round($_.FreeSpace / 1GB, 2)}},
        @{Name="LivrePercentual";Expression={[math]::Round(($_.FreeSpace / $_.Size) * 100, 1)}} |
    Format-Table -AutoSize

Write-Host "Recomendação: investigar discos com pouco espaço livre antes de remover arquivos."
