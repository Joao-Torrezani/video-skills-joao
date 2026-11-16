# Gera um .zip por skill em dist/, pronto para subir no Claude.
# Uso: powershell -ExecutionPolicy Bypass -File .\scripts\empacotar.ps1

$ErrorActionPreference = "Stop"
$raiz   = Join-Path $PSScriptRoot ".."
$origem = Join-Path $raiz "skills"
$dist   = Join-Path $raiz "dist"

New-Item -ItemType Directory -Force -Path $dist | Out-Null

Get-ChildItem -Path $origem -Directory | ForEach-Object {
    $zip = Join-Path $dist "$($_.Name).zip"
    if (Test-Path $zip) { Remove-Item $zip -Force }
    Compress-Archive -Path $_.FullName -DestinationPath $zip
    Write-Host "Gerado: $zip"
}
