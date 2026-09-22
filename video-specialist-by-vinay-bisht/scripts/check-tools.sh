#!/usr/bin/env bash
# check-tools.sh — Video Specialist by Vinay Bisht (base tier)
# Reports which free editing tools are present on this machine. Detects only. Installs nothing.
# Usage: bash scripts/check-tools.sh

set -u

ok()   { printf "  \033[32m✔\033[0m %s\n" "$1"; }
miss() { printf "  \033[31m✘\033[0m %s\n" "$1"; }
note() { printf "    → %s\n" "$1"; }

echo "Video Specialist — tool check"
echo "-----------------------------"

# ffmpeg
if command -v ffmpeg >/dev/null 2>&1; then
  ok "ffmpeg  $(ffmpeg -version 2>/dev/null | head -1 | awk '{print $3}')"
else
  miss "ffmpeg not found"
  note "macOS: brew install ffmpeg   (or static build: https://evermeet.cx/ffmpeg/)"
  note "Windows: winget install Gyan.FFmpeg   Linux: sudo apt install ffmpeg"
fi

# GUI editors (macOS / Linux paths; Windows uses check-tools.ps1)
found_gui=0
for app in "/Applications/CapCut.app" "$HOME/Applications/CapCut.app"; do
  [ -d "$app" ] && { ok "CapCut  ($app)"; found_gui=1; break; }
done
for app in "/Applications/DaVinci Resolve/DaVinci Resolve.app" "/opt/resolve"; do
  [ -d "$app" ] && { ok "DaVinci Resolve  ($app)"; found_gui=1; break; }
done
if [ "$found_gui" -eq 0 ]; then
  miss "No CapCut or DaVinci Resolve found"
  note "CapCut: https://www.capcut.com/"
  note "DaVinci Resolve (free): https://www.blackmagicdesign.com/products/davinciresolve"
fi

echo
echo "Setup guide: references/free-tool-setup.md"
echo "How to apply the Edit Sheet: references/execute-in-your-tool.md"
echo
echo "This script only detects. Nothing was installed or changed."
