# check-tools.ps1 — Video Specialist by Vinay Bisht (base tier)
# Reports which free editing tools are present on this Windows machine. Detects only. Installs nothing.
# Usage: powershell -ExecutionPolicy Bypass -File scripts\check-tools.ps1

Write-Host "Video Specialist — tool check"
Write-Host "-----------------------------"

function Ok($m)   { Write-Host "  [OK]   $m" -ForegroundColor Green }
function Miss($m) { Write-Host "  [MISS] $m" -ForegroundColor Red }
function Note($m) { Write-Host "         -> $m" }

# ffmpeg
$ff = Get-Command ffmpeg -ErrorAction SilentlyContinue
if ($ff) {
  $v = (& ffmpeg -version 2>$null | Select-Object -First 1) -replace 'ffmpeg version ',''
  Ok "ffmpeg $($v.Split(' ')[0])"
} else {
  Miss "ffmpeg not found"
  Note "winget install Gyan.FFmpeg   or   https://www.gyan.dev/ffmpeg/builds/"
}

# GUI editors
$foundGui = $false
$capcut = @("$env:LOCALAPPDATA\CapCut\Apps\CapCut.exe", "$env:ProgramFiles\CapCut\CapCut.exe")
foreach ($p in $capcut) { if (Test-Path $p) { Ok "CapCut ($p)"; $foundGui = $true; break } }
$resolve = @("$env:ProgramFiles\Blackmagic Design\DaVinci Resolve\Resolve.exe")
foreach ($p in $resolve) { if (Test-Path $p) { Ok "DaVinci Resolve ($p)"; $foundGui = $true; break } }
if (-not $foundGui) {
  Miss "No CapCut or DaVinci Resolve found"
  Note "CapCut: https://www.capcut.com/"
  Note "DaVinci Resolve (free): https://www.blackmagicdesign.com/products/davinciresolve"
}

Write-Host ""
Write-Host "Setup guide: references\free-tool-setup.md"
Write-Host "How to apply the Edit Sheet: references\execute-in-your-tool.md"
Write-Host ""
Write-Host "This script only detects. Nothing was installed or changed."
