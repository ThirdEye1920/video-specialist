# Platform specs — short-form video

Working defaults for the Edit Sheet. Platform limits change; **verify current caps before a
campaign** and prefer the user's stated target over these numbers.

## Aspect, resolution, duration

| Platform | Aspect | Resolution | Sweet-spot duration | Hard cap (verify) |
|---|---|---|---|---|
| Instagram Reels | 9:16 | 1080×1920 | 15–45 s | up to ~3 min |
| TikTok | 9:16 | 1080×1920 | 15–60 s | up to 10 min |
| YouTube Shorts | 9:16 | 1080×1920 | 20–60 s | up to 3 min |
| LinkedIn (native video) | 9:16 or 1:1 or 16:9 | 1080×1920 / 1080×1080 / 1920×1080 | 30–90 s | ~10 min |
| X | 16:9 or 1:1 (9:16 plays but crops in feed) | 1920×1080 / 1080×1080 | 20–60 s | ~2:20 standard |
| Facebook Reels | 9:16 | 1080×1920 | 15–45 s | ~90 s |

Frame rate: match the source (24 / 25 / 30 fps). Don't upsample.

## Safe zones (9:16, 1080×1920)

UI overlays vary by app and update often; these are conservative margins:

| Zone | Keep clear | Why |
|---|---|---|
| Top | ~250 px | status bar, "Following / For You", title |
| Bottom | ~320–400 px | caption text, sound, action bar |
| Right | ~120–150 px | like / comment / share column |
| Left | ~60 px | edge crop on some devices |

**Subject and captions live in the centre band.** Put burned-in captions between roughly
40 % and 75 % of frame height; never in the bottom 20 %.

For 1:1 and 16:9, keep ~5 % margin on all sides; feeds crop less aggressively.

## Caption line rules

| Aspect | Max chars per line | Lines per caption | On-screen per caption |
|---|---|---|---|
| 9:16 | 28–34 | 1–2 | 1–2.5 s |
| 1:1 | 32–38 | 1–2 | 1–2.5 s |
| 16:9 | 38–46 | 1–2 | 1.5–3 s |

- Break lines at natural phrase boundaries, never mid-phrase.
- One idea per caption. If a sentence needs three lines, it needs two captions.
- Keyword or number emphasis (bold / colour) at most once per caption.
- Sidecar SRT is fine on YouTube and LinkedIn; burned-in is safer on Reels/TikTok for sound-off
  viewing.

## The first three seconds

Nothing here is a secret — it's the shared baseline every editor works from:

- Cut to the strongest line or moment immediately; no logo, no "hey guys".
- Show the subject or product in frame 1.
- If there's on-screen text at the hook, it should be readable in under a second (≤ 5 words).
- Pattern breaks (a zoom, a cut-away, a text pop) every 2–4 s hold attention on 9:16.

## Audio

- Speech peaks around −6 dBFS, music ducked well under the voice.
- Sound-off viewing is common on LinkedIn and Instagram feed: captions carry the message.
- Match the Brand Card's music/mood note; if none, keep music under the voice and unbranded.

## Export

- H.264, MP4, high bitrate (≥ 10 Mbps for 1080p), AAC audio 48 kHz.
- First frame = poster frame: make sure it's not a black frame or a mid-blink.
- File name convention: `brand_platform_YYYY-MM-DD_vN.mp4`

---

*Reference from Video Specialist by Vinay Bisht (base tier).*
