$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'
Set-StrictMode -Version Latest

$root = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$logDir = Join-Path $root 'aegis\logs'
$logPath = Join-Path $logDir ('windows-bootstrap-' + (Get-Date -Format 'yyyyMMdd-HHmmss') + '.log')

New-Item -ItemType Directory -Force -Path $logDir | Out-Null

function Write-Log {
    param([string]$Message)
    $line = '[{0}] {1}' -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $Message
    Add-Content -Path $logPath -Value $line -Encoding utf8
    Write-Host $line
}

if ($PSVersionTable.PSVersion.Major -lt 7) {
    throw 'PowerShell 7 or newer is required.'
}

Write-Log 'Charlie Unified Windows bootstrap starting.'
New-Item -ItemType Directory -Force -Path (Join-Path $root 'nexus\state') | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $root 'android\adb') | Out-Null
Write-Log 'Charlie Unified Windows bootstrap complete.'
