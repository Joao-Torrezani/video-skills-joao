---
name: "motion-reel"
description: "Make a product or showreel motion video rendered from code. Use when the user asks for a launch video, showreel, product reel, animated explainer or motion ad."
---

# Motion reel

## Inputs to collect first
Product + URL, duration, formats (9:16 / 1:1 / 16:9), brand colors + fonts,
a reference (frame, video or image folder), music (file, "from the audio library", "synthesize" or "none").
Ask only for what is missing; never invent product data, metrics or screens.
If the user gives no music, consider the audio library below (pick by the video's emotion), but only if a track actually helps this video.

## When the video has João on camera (fixed rule)
If the video uses footage of João (talking head, selfie, him on camera), lettering and motion go OVER his footage, never on a solid color background. He keeps appearing, so the video keeps its energy.
- No full-screen solid or gradient color card, no filled box behind text. His footage is the background.
- Never cover his face: mark the face area on 3 to 5 stills first and keep all text and moving elements out of it, including the paths of entry and exit animations.
- Legibility, in this order: (1) cleanest area of the frame + contrasting text color; (2) soft text shadow or thin outline, no box; (3) only if still unreadable, a light blur on his footage while the text is on screen (start at 4 to 8 px at 1080 wide, easing in and out with the text in ~0.2 s). Never so dark or blurred that it reads as a background.
- Product UI, prints, icons and illustrations float over his footage (transparent PNG, no solid plate behind).
- Solid backgrounds only if he explicitly asks for that shot. Pure product reels with no footage of him keep the normal rules below.

## Sound principle: less is more (read before choosing any audio)
Music and SFX are tools, never quotas. Nothing in the library is mandatory, and there is no minimum number of tracks or effects.
- Use sound only where it makes the viewer's experience better: it guides attention, marks a moment that matters, or sets the emotion. If a sound does not clearly do one of these, leave it out.
- Silence and clean voice are valid choices. A video with one track and two well-placed effects is better than one with an effect on every cut.
- One music track per video by default. Do not switch tracks mid-video unless the story truly changes emotion (and say why in the shotlist).
- SFX go only on the moments that deserve emphasis (the main reveal, a key result, the hook). Most shots have no SFX. Repetitive SFX on every element or every cut tires the viewer and cheapens the video.
- When in doubt, remove the sound. Before final render, review every SFX and music change and ask: "would the viewer miss this if it were gone?" If not, cut it.

## Audio library (music + SFX)
Location on the user's computer (Windows): `C:\Users\olase\Music\Musicas e efeitos sonoros`

Structure:
```
musicas/<emocao>/<titulo>_<artista>.mp3   engracado | historia | motivacao | seriedade | triste
efeitos/<nome>.mp3                        short SFX (0.3 to 16 s)
CATALOGO.md / catalogo.json               when to use each file + exact segment timestamps
CLAUDE.md                                 library rules
```

How to access it:
1. If the session is linked to the user's computer, call device_request_folder_access for `~/Music` (or the folder above) if it is not connected yet, then device_stage_files only the files this video needs (catalogo.json + the chosen track + chosen SFX). Copy them into ./audio.
2. If the computer is not linked or not reachable, look in /mnt/user-data/uploads for a `Musicas-e-efeitos-sonoros.zip` or folder and unzip it into ./audio_library.
3. If neither works, tell the user the library is not reachable and ask them to link the computer or attach the zip. Do not silently fall back to synthesized music; only synthesize if the user agrees.

Always read `catalogo.json` (or CATALOGO.md) from the library before choosing: it is the source of truth if it differs from the summary below.

### Choosing music (in this order)
1. First decide whether the video needs music at all (see the sound principle).
2. Pick ONE main emotion from the script/caption. It defines the folder.
3. Inside the folder, pick by "when to use".
4. Never start at 0:00 by default. Cut the catalog segment (inicio/fim).
5. Align the track's strong moment (drop/climax, `momento_forte`) with the video's strong moment (reveal, turn, result). Build the beat grid (beats.py) on the CUT segment, not the full file.
6. With voiceover: music -18 to -24 dB under the voice (ducking). No voice: full volume.
7. Low intros (Runaway, Outro, Experience): normalize / raise gain on the segment.
8. Segments marked `estimada` were chosen by energy analysis; say so to the user and suggest listening before final.

Summary (segments measured on the library files):
- engracado: fluffing-a-duck (0:00 on, trapalhada/bastidores/expectativa vs realidade); frolic-curb-your-enthusiasm (0:00-0:10, only as end punchline after a fail, with freeze frame); scheming-weasel-faster (0:00 on, travessura/correria).
- historia: runaway-instrumental (0:00-0:45, beat in at 0:38: put the reveal there; low intro); 7-years-instrumental (0:00-0:50 narrate, beat 1:07, climax 2:55-3:30 estimada; timeline/trajetoria); a-good-man-with-a-broken-heart (0:10-1:43 estimada; depoimento).
- motivacao: outro_m83 (build 1:35-2:18, climax 2:18-3:20; epic/launch/result; first 55 s near silence); memory-reboot (0:10-0:40 or 2:55-3:25 estimada; transformation, cuts on beat); in-this-shirt (3:15-4:20 estimada; personal transformation/POV).
- seriedade: the-beast-sicario (0:45-1:20, hit 1:06; alt 2:05-2:58 estimada; alert/suspense/shocking number); paris_else (0:30-1:30, beat in 0:35; luxury/premium product/calm authority); violin_toneloom (0:00-2:55 estimada; sober explanation).
- triste: experience_einaudi (narrate 0:00-0:50, peak 1:50-2:30, climax 3:35-4:35 estimada; low intro); idea-10_gibran-alcocer (0:00 on, strongest 1:20-1:30; delicate/gratitude).

### Choosing SFX (only where they earn their place)
Use library files, not synthesized, when an effect is justified. This list says which file fits which kind of moment; it does NOT mean every such moment gets an effect.
- pop-bolha (1.1 s): emoji, icon, short text, sticker, bullet appearing.
- clique-mouse (0.4 s): click, button, list check.
- camera-shutter (0.3 s): photo appearing, image/scene swap, screenshot; pair with a 2-3 frame white flash.
- whoosh (1.2 s): fast zoom, fast transition, element sliding in. Peak of the whoosh lands mid-movement.
- virar-pagina (1.4 s): prints, documents, cards, slides appearing or changing.
- digitando-teclado (15.8 s): text being typed on screen; trim to the exact length of the text animation.
- riser (4.2 s): before a reveal; the END of the riser lands exactly on the reveal frame.
- magic-reveal (2.1 s): at the reveal/transformation/product appearing; can start on the frame the riser ends.
Rules: never two SFX on the same frame. SFX sit over the music with no ducking. Prefer reserving the strongest combo (riser + magic-reveal) for the single main reveal of the video.
Combos when justified: strong reveal = riser ending on reveal frame + magic-reveal same frame. Proof/prints = virar-pagina on the prints that matter. Fast scene change = whoosh (+ camera-shutter if it is a photo). For lists, an effect on items is optional; if used, keep it subtle and consider skipping it when items come in fast.

### SFX Kit (CC0): when the library lacks an effect or is not reachable
Before synthesizing any effect, use the SFX Kit by Wyzowl (CC0, 320 sounds with sync point, level and how far to lower each one under a voice).
- Get it: in the Ola studio it is already at `/home/claude/estudio/vendor/sfx-kit`; elsewhere `git clone --depth 1 https://github.com/wyzowl/sfx-kit.git ./sfx-kit`. Read its `GUIDE.md` once; choose from `sounds.json` by `use_for`, `avoid_for` and `fits_seconds`.
- Place: start = moment - `sync.at` (divide by the rate if you change it). Where the sound's body overlaps a voiceover, lower it by `under_voiceover_db`. Copy only the chosen files into ./audio.
- Kit equivalents for this skill's moments: element/text appearing = `pop-small-in`; slide or fast transition = `whoosh-medium-soft`; app demo swipe = `swipe-fast-soft`; tap or click = `click-tap-medium`; prints/pages = `props-page-turn`; reveal = `riser-2s-soft` ending on `shimmer-medium-bright`; number counting = `data-countup-medium` then `data-number-land`; logo at the end = `sting-warm-short`.
- The sound principle above still rules: the kit is a source, not a quota.
- Zero-copyright music: if the user wants to avoid commercial songs, the CC0 tracks of agent-video-editor (`/home/claude/estudio/vendor/agent-video-editor/skills/editing-videos/library/music/`, or `git clone --depth 1 https://github.com/kmilo93sd/agent-video-editor.git`) are safe for commercial use; `node library/search.mjs --category music` lists them with LUFS.
- With a voiceover, time text with the editing judge's rules (agent-video-editor `references/graphics-and-text.md`): a graphic enters at most 0.5 s before its word and is never empty; on-screen text lasts at least max(1.5 s; words x 0.33 s + 0.5 s).

Cut example:
```bash
ffmpeg -ss 00:02:18 -t 40 -i musicas/motivacao/outro_m83.mp3 -af "afade=t=in:d=0.3,afade=t=out:st=38.5:d=1.5" audio/track.wav
```

Copyright note: music tracks are commercial songs downloaded from YouTube. When delivering, remind the user that the safest way to post on Instagram is to publish with the same song from Instagram's own audio library, to avoid muted or blocked videos.

## Pipeline
1. Gather assets from the URL with Playwright into ./assets. List them.
2. If a reference exists, write docs/style_guide.md from it (palette hex, type, shot lengths, transitions, camera, texture, how text enters/exits). Take the grammar, never the content.
3. Decide if the video needs music. If yes, choose the track from the audio library (or the user's file), cut the catalog segment to audio/track.wav, then measure: `python beats.py audio/track.wav > beats.json`. Synthesize music only if the user asked or agreed. Without music, build the timing grid from the voiceover or the script.
4. Write docs/shotlist.md on the beat grid (every shot: time, frames, camera, text, and SFX only if justified, otherwise "none"). For each SFX listed, add a short reason (what moment it marks). Mark where the track's strong moment lands. Show it and wait for OK.
5. Build index.html with window.seek(t) using closed-form springs (lib/motion.js: spring, track, swapAlpha, loopT). A value with many targets = sum of one spring per change.
6. Render one frame per beat as a contact sheet, LOOK at it, score 1-10 on hook (first 2s), phone readability, motion quality, variety, brand accuracy, sound (sync AND restraint: sound helps the viewer, no unnecessary effects), and, when João is on camera, face never covered and no solid background over his footage. Fix the 3 worst problems. 3 rounds minimum, until every score is 8+.
7. Render with Playwright frame by frame + ffmpeg (H.264 yuv420p CRF 16, 60fps, 4 subframes blended) -> do a final sound review (remove any SFX the viewer would not miss) -> place the remaining library SFX per the shotlist (an effect the library lacks comes from the SFX Kit; synthesize only if neither has it and it is truly needed) -> mix to -14 LUFS -> out/final.mp4, all formats (reframe per format, never crop).
8. Deliver final.mp4, contact.png, poster.png, loop_check.mp4. Say which track/segment and SFX were used (and why), and what you'd improve next.

## Hard rules
- Real product UI only. Never invent screens.
- No Math.random (seeded mulberry32 only), no timers, no CSS transitions, no requestAnimationFrame in render mode, no state carried between frames.
- Banned: corner labels and frame borders, centered title on gradient, everything fading in, glow on UI chrome, generic particle bursts, sound effects used just to fill space, solid color cards or boxes over João's footage.
- One display face, one UI face, one accent color. Something new every 2-4 seconds.
- Tiny overshoot on UI, none on type. Never will-change on anything the camera scales.
- API keys live in .env only.