# Execute the Edit Sheet in your tool

The Edit Sheet has eight sections. This maps each one onto CapCut, DaVinci Resolve and ffmpeg.
Keep the sheet open on one side, the editor on the other, and go top to bottom.

Tool UIs change; menu names below are approximate. The *order of operations* is what matters.

---

## Before you start (all tools)

1. Create the project at the sheet's **aspect and resolution** (§6) — changing it later is painful.
2. Import the raw clip. Do not trim in the import dialog; you'll cut from the sheet.
3. Name the project per §8: `brand_platform_YYYY-MM-DD_v1`.

---

## §1 Hook + §2 Cut list + §3 Structure → the cut

The cut list is in **raw-clip order**. The structure (§3) is in **edit order**. Do the cut list
first, then re-arrange to match the structure.

### CapCut
1. Put the playhead at each **timestamp** in the cut list → **Split**.
2. Select every segment marked **Cut** → delete. Gaps close automatically ("ripple").
3. For **Trim** rows: split again at the inner points the note describes, delete the unwanted part.
4. Drag the **Keep** segments into the order shown in §3 (the hook segment moves to the front).
5. Check the running total against §3. Tighten by trimming heads/tails, not by speeding up.

### DaVinci Resolve
1. Edit page → playhead at each timestamp → **Ctrl/Cmd + B** (blade) at every cut-list row.
2. Select **Cut** segments → **Ripple delete** (Shift + Delete) so gaps close.
3. Trim rows: blade the inner points, ripple delete.
4. Re-order clips to match §3 (drag with **Shift** to insert rather than overwrite).
5. Read the timeline duration in the top-right; match §3's running total.

### ffmpeg
Cut each **Keep** segment, then concatenate in §3 order. Times are `start` and `end` from the
cut list (after any trim).

```bash
# 1. cut segments (re-encode for frame-accurate cuts)
ffmpeg -i raw.mp4 -ss 00:00:26 -to 00:00:30 -c:v libx264 -c:a aac seg_hook.mp4
ffmpeg -i raw.mp4 -ss 00:00:17 -to 00:00:26 -c:v libx264 -c:a aac seg_01.mp4
# ... one per Keep row

# 2. list in §3 order
printf "file 'seg_hook.mp4'\nfile 'seg_01.mp4'\n" > order.txt

# 3. join
ffmpeg -f concat -safe 0 -i order.txt -c copy roughcut.mp4
```

---

## §4 Caption script → captions

### CapCut
1. **Text → Auto captions** once, to get timing for free.
2. Open each caption and **replace its text** with the sheet's lines, line-break where the sheet
   shows ⏎. One sheet row = one caption.
3. Style: font and colour from §5 / the Brand Card. Position inside the centre band per §6 —
   never the bottom 20 %.
4. Apply the style to all captions (**Apply to all** or a saved text preset).

### DaVinci Resolve
1. **Effects → Titles → Text+** onto a track above the video, one per caption row.
2. Type the lines, set font/colour from the Brand Card, position per §6.
3. Copy the first styled Text+ and paste for the rest, changing only the text.
   (If your build has **Auto Subtitle** on the timeline, use it for timing, then edit text.)

### ffmpeg
Write an `.srt` from §4 (one entry per row, start/end from §3's beats), then burn in:

```bash
ffmpeg -i roughcut.mp4 -vf "subtitles=captions.srt:force_style='FontName=Inter,FontSize=22,PrimaryColour=&HFFFFFF&,Alignment=10,MarginV=60'" -c:a copy captioned.mp4
```

Or keep the `.srt` as a sidecar where the platform supports it (§8 says which).

---

## §5 On-screen text & lower-thirds

### CapCut
**Text → Add text** for each row. Headline at the hook, callouts at their beats, CTA in the last
3 s, handle plate per the Brand Card rule. Use a coloured shape behind text for chips
(**Stickers / Shapes**). Keep inside the safe zone from §6.

### DaVinci Resolve
Another **Text+** track. For chips, add a **Background** in the Text+ inspector or a rectangle
from **Effects → Generators → Solid Color** under the text. Save the plate as a **preset** so it's
identical next time.

### ffmpeg
`drawtext` per element, timed with `enable='between(t,a,b)'`:

```bash
-vf "drawtext=text='Save this for tonight':fontfile=Inter-Bold.ttf:fontsize=40:fontcolor=white:x=(w-text_w)/2:y=h*0.72:enable='between(t,32,35)'"
```

---

## §6 Reframe & safe zones

### CapCut
Turn on the **safe-zone / UI overlay guide** (in the preview settings on most versions). Keep the
subject in the centre band; scale or reposition the clip per the sheet. Add attention holds as
**keyframed scale** (a small zoom-in over 1–2 s) at the beats listed.

### DaVinci Resolve
**View → Safe Area** on. Use **Inspector → Transform** to scale/reposition per the sheet;
keyframe **Zoom** for attention holds.

### ffmpeg
Crop and scale to 9:16 from a 16:9 source, centred:

```bash
-vf "crop=ih*9/16:ih,scale=1080:1920"
```

Shift the crop's `x` if the subject isn't centred.

---

## §7 Brand consistency check

Do this **before** export, with the Brand Card open:
- Play through once with the sound off — captions carry the message?
- Any "never say" word on screen?
- Colours, font, plate position, CTA copy as the sheet says?
- Nothing shown or claimed that the raw footage doesn't support?

Fix anything ✘, then go to §8.

---

## §8 Export

| | CapCut | DaVinci Resolve | ffmpeg |
|---|---|---|---|
| Container / codec | MP4 · H.264 | Deliver → H.264 · MP4 | `-c:v libx264 -c:a aac` |
| Resolution / fps | 1080p (1080×1920 for 9:16) · match source | Timeline settings | `-vf scale=1080:1920 -r <source>` |
| Quality | Highest / bitrate high | Restrict to ≥ 10 000 kb/s | `-crf 18 -preset slow -b:a 192k` |
| Poster frame | Set **Cover** to the frame the sheet names | Set in-point on that frame for the thumbnail | `-ss <t> -frames:v 1 poster.jpg` |
| File name | per §8 | per §8 | per §8 |

Upload the MP4, paste the caption/description, and add the sidecar `.srt` if the platform takes it.

---

*Reference from Video Specialist by Vinay Bisht (base tier).*
