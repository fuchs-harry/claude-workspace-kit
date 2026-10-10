# context/

Everything Claude should know about **you**, independent of any single project.

| File | Contents | Loaded |
|---|---|---|
| `about-me.md` | Who you are, what you do, recurring people | Every session (imported in `CLAUDE.md`) |
| `working-style.md` | Language, tone, format, how much Claude should ask | Every session (imported in `CLAUDE.md`) |
| `decisions.md` | Decisions and learnings that span projects | When relevant |
| `voice.json` | How you write: tone, phrases, openers, emojis, examples per channel. Kept current by the voice-keeper agent; used by `/draft` | Whenever Claude writes a text for you |

Add your own files here (e.g. `brand-voice.md`, `pricing.md`, `clients.md`). To have one loaded in every session, add a line `@context/<file>.md` to `CLAUDE.md`, or ask Claude to do it. Keep imported files short: everything imported costs space in every session.
