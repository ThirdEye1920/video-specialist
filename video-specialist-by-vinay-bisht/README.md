# Video Specialist — by Vinay Bisht

**Base tier · v1.0.0 · chat-only**

Turn a transcript, shot notes or a rough description of your footage into a ready-to-execute
**Edit Sheet** — hook options, cut list, caption script, on-screen text, reframe notes and a
brand-consistency check — that you can run in *any* editor (CapCut, Premiere, Descript, your
phone) in minutes.

No new editing subscription. No timeline UI to learn. Your AI assistant plans the edit; your
existing tool makes the cut.

**Don't have an editor?** The skill picks a free one for your device (CapCut, DaVinci Resolve
free, or ffmpeg), links the official download, and then walks the Edit Sheet onto it
section by section. Nothing to buy, nothing you can't finish.

**It learns how you like to work.** Your confirmed Brand Card, your editing preferences and
what you change in each sheet accumulate in `memory/` — on your machine, never sent anywhere.
Next session it loads them and tells you what it applied. In Claude.ai or ChatGPT it hands you
a short Memory Card to paste back instead. It records your taste; it never scores your work.

## Who it's for

- Lean brand and content teams shipping daily short-form
- Founders and solo operators editing their own content
- Creators in food, lifestyle, fashion, skincare, fitness, vlogging and similar

## Why it works

The brief usually loses its voice between the idea and the export. This skill loads a small
**Brand Card** once and writes every hook, caption and CTA *from it* — so the piece that goes out
sounds like the brand that briefed it.

## Install

**Claude Code**
```bash
cp -R video-specialist-by-vinay-bisht ~/.claude/skills/
```
Then say: *"edit this for Reels"* and paste your transcript.

**Claude.ai (Projects)**
Create a Project → add `SKILL.md`, `templates/` and `references/` as project knowledge → paste the
body of `SKILL.md` into the project instructions.

**ChatGPT (Projects / Custom GPT)**
Paste the body of `SKILL.md` into the instructions field → upload the `templates/` and
`references/` files as knowledge.

## Use

1. Paste your transcript (timestamped is best), shot notes, or describe the footage.
2. Name the platform. Optionally fill the 60-second Brand Card.
3. Get the Edit Sheet. Ask for changes; ask for another platform.

## What's inside

```
video-specialist-by-vinay-bisht/
├── SKILL.md                     # the skill
├── README.md
├── templates/
│   ├── brand-card.md            # fill once, reuse every session (+ fallbacks)
│   └── edit-sheet.md            # the output skeleton
├── references/
│   ├── platform-specs.md        # aspect, duration, safe zones, caption rules
│   ├── free-tool-setup.md       # zero-to-first-edit: CapCut / Resolve / ffmpeg
│   └── execute-in-your-tool.md  # apply each sheet section in each tool
├── scripts/
│   ├── check-tools.sh           # macOS/Linux: detect installed tools, link downloads
│   └── check-tools.ps1          # Windows: same. Detect only — never installs
└── memory/                      # fills as you use it — yours, local, never sent anywhere
    ├── README.md                # what's stored, how it behaves, how to reset
    ├── brand-card.md            # your confirmed card
    ├── preferences.md           # dated one-line preferences
    ├── feedback-log.md          # append-only: what you chose and changed
    └── patterns.md              # after 5+ pieces, lines you approved
```

## What this base tier doesn't do

It plans the edit and remembers your preferences. It stops before creative strategy, the brief
itself, knowing what *performed*, scored review, and automated execution. Those are the parts of an end-to-end creative
system — brief → strategy → production → review — built around a specific brand.

**To build your first brand and creative system, email Vinay Bisht → vinbis9119@gmail.com**

---

Built by **Vinay Bisht** — brand storyteller & creative technologist.
Free to use and share with attribution. Not for resale.
