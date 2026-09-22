# Free tool setup — zero to first edit

You don't need to buy anything to execute an Edit Sheet. Pick **one** tool based on the device
you'll edit on. All three below are free for this kind of work. Links are the official sources —
never download an editor from anywhere else.

> Links and free-tier limits change. Verify on the official page before recommending a specific
> feature as "free".

## Pick by device

| You edit on… | Use | Why |
|---|---|---|
| A phone (iOS / Android) | **CapCut** | Free, fast, auto-captions, built for 9:16. Most creators start here. |
| A laptop, and you want simple | **CapCut desktop** | Same workflow as the phone app, bigger screen. |
| A laptop, and you want pro control | **DaVinci Resolve** (free version) | Full NLE, colour and audio tools, no watermark. Steeper learning curve. |
| An AI agent with a shell (Claude Code etc.) | **ffmpeg** | Command-line. The agent can drive it from the cut list. No UI. |

If in doubt: **CapCut on whatever device you're holding.** Move to Resolve when you outgrow it.

---

## CapCut

**Get it:** https://www.capcut.com/ → Download (desktop) or the App Store / Google Play (mobile).
Sign-in is optional for basic editing.

**Setup (5 minutes)**
1. Install and open. Choose **New project**.
2. Set the aspect ratio to **9:16** (Reels / TikTok / Shorts) before importing.
3. Import your raw clip.
4. In **Settings / Export** set 1080p, 30 fps (or match your source), highest quality.
5. Turn on **Auto captions** once — you'll replace the text with the Edit Sheet's lines.

**Good for:** cuts, auto-captions, text overlays, simple lower-thirds, music ducking, export presets
for every platform.
**Watch out for:** some templates, effects and cloud features are paid; the core edit is free.
Check the current free/pro split in-app.

---

## DaVinci Resolve (free)

**Get it:** https://www.blackmagicdesign.com/products/davinciresolve → **Download** → choose the
free **DaVinci Resolve** (not Studio). macOS, Windows, Linux. A short registration form is required.

**Setup (10 minutes)**
1. Install and open. **New project** → name it per the Edit Sheet file-name convention.
2. **Project Settings → Timeline resolution: 1080 × 1920** for vertical, frame rate = your source.
3. Import media to the **Media Pool**, drag to the timeline.
4. Use the **Edit** page for cuts and the **Fusion** or **Text+** title for captions and lower-thirds.
5. **Deliver** page → H.264, MP4, 1080p, high bitrate.

**Good for:** precise cuts, colour, audio, reusable title templates for a consistent brand look.
**Watch out for:** it's heavy; older laptops struggle. No built-in auto-captions in the free
version on all builds — check yours; otherwise caption from the Edit Sheet manually.

---

## ffmpeg (command line)

Only relevant if an AI agent with a shell, or you yourself, will drive it. No UI.

**Get it:** https://ffmpeg.org/download.html

| OS | Install |
|---|---|
| macOS (Homebrew) | `brew install ffmpeg` |
| macOS (no Homebrew) | Static build from https://evermeet.cx/ffmpeg/ → unzip → move `ffmpeg` and `ffprobe` to `~/.local/bin` (create it) → add to PATH |
| Windows | `winget install Gyan.FFmpeg` or a build from https://www.gyan.dev/ffmpeg/builds/ |
| Linux (Debian/Ubuntu) | `sudo apt install ffmpeg` |

**Verify:** `ffmpeg -version` prints a version line.

**Good for:** deterministic, repeatable cuts and exports; batch work; agents.
**Not good for:** anything you need to *see* while doing — captions styling, reframing by eye.

---

## What the base tier does with these

It **recommends** one and **maps the Edit Sheet onto it** (see `execute-in-your-tool.md`).
It does not install anything for you and does not run the edit. If you're in Claude Code,
`scripts/check-tools.sh` can tell you what's already on your machine.

---

*Reference from Video Specialist by Vinay Bisht (base tier).*
