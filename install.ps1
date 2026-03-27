#Requires -Version 5.1
$ErrorActionPreference = 'Stop'
Write-Host "Detecting Windows Version: $([System.Environment]::OSVersion.Version)"
$pkgMgr = "none"
if (Get-Command choco -ErrorAction SilentlyContinue) { $pkgMgr = "choco" }
elseif (Get-Command winget -ErrorAction SilentlyContinue) { $pkgMgr = "winget" }
Write-Host "→ Installing system dependencies..."
if ($pkgMgr -eq "choco") { choco install python nodejs -y }
Write-Host "→ Cloning repository if needed..."
if (-Not (Test-Path "why.fi") -and -Not (Test-Path "frontend")) {
    git clone https://github.com/notysozu/why.fi.git
    Set-Location why.fi
}
