# Copia as skills deste repositorio para ~/.claude/skills (Claude Code).
# Uso: powershell -ExecutionPolicy Bypass -File .\scripts\instalar.ps1

$ErrorActionPreference = "Stop"
$origem  = Join-Path $PSScriptRoot "..\skills"
$destino = Join-Path $HOME ".claude\skills"

New-Item -ItemType Directory -Force -Path $destino | Out-Null

Get-ChildItem -Path $origem -Directory | ForEach-Object {
    $alvo = Join-Path $destino $_.Name
    if (Test-Path $alvo) { Remove-Item $alvo -Recurse -Force }
    Copy-Item $_.FullName $alvo -Recurse
    Write-Host "Instalada: $($_.Name)"
}

Write-Host "Pronto. Skills em $destino"
