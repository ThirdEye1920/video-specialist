# memory/ — your preferences, on your machine

This folder fills up gradually as you use the skill. It records **how you like to work** so you
don't have to repeat yourself: your confirmed Brand Card, editing preferences, and what you
changed in past Edit Sheets.

It records. It does not judge. Nothing here scores your edits or tells you what to make next.

## What's stored

| File | Contents | Written when |
|---|---|---|
| `brand-card.md` | Your confirmed Brand Card (replaces re-pasting it) | You confirm a card, or change a field |
| `preferences.md` | One-line editing preferences, dated — e.g. "prefers 30 s over 45 s", "no jump-zooms", "hooks as questions" | You state a preference, or correct the same thing twice |
| `feedback-log.md` | Append-only log: date · piece · platform · which hook you chose · what you changed in revise | After each Edit Sheet, if you say yes to saving |
| `patterns.md` | After 5+ pieces: recurring choices, each marked *observed, not judged* | Proposed every 5 pieces; only saved lines you approve |

## Where it lives

**Here, only.** In Claude Code the skill writes these files. Nothing is sent anywhere — not to
the skill's author, not to any service. Delete the folder and it's gone.

**In Claude.ai or ChatGPT** (which can't write files on your machine) the skill instead gives you
a short **Memory Card** text block at the end of a session. Paste it at the start of the next
one — same content, you carry it.

## How it behaves

- **Start of a session:** if there's anything here, the skill loads it and tells you in one line
  what it applied. Never silently.
- **During revise:** each change you ask for is noted as a plain fact.
- **End of a session:** it offers to save. It never writes without a yes.
- **Every 5 pieces:** it proposes 2–3 pattern lines. You approve each one, or none.

## Reset

Say **"forget my preferences"**, or delete the files:

```bash
rm -f memory/brand-card.md memory/preferences.md memory/feedback-log.md memory/patterns.md
```

Keep this README.

## What this is not

Not a record of what *performed*. Not a strategy. Not a review. Those need results data, a brief
to judge against, and a review model — which is the pro tier / working with the author.

---

*Part of Video Specialist by Vinay Bisht (base tier).*
