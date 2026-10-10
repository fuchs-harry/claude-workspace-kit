---
name: update-context
description: Saves what was learned in this conversation into the workspace so the next session already knows it - lasting facts about the user into context/, project decisions and status into the project CLAUDE.md and projects/README.md, rules for all projects into the master CLAUDE.md (after asking). Also keeps AGENTS.md in sync. Use when the user types /update-context, says "remember this", "save that", "update my context", "keep that in mind for next time", or after a decision was made.
---

# Update context

Goal: the workspace remembers. Write down only what will still matter next week. Reply in the user's language.

## 1. Collect
Go through the conversation (or what the user just said) and sort what's worth keeping:

| Kind | Where it goes |
|---|---|
| Fact about the user (role, tool, recurring person, goal) | `context/about-me.md` |
| Preference (tone, format, language, how much to ask) | `context/working-style.md` → "Learned preferences", dated line |
| Decision or learning that affects several projects | `context/decisions.md`, newest on top |
| Decision inside a project | `projects/<name>/CLAUDE.md` → "Decisions" table, dated |
| Project status or to-dos changed | `projects/<name>/CLAUDE.md` → "Status" and "Open to-dos"; same status in `projects/README.md` |
| New background material for a project | `projects/<name>/docs/` (new file or added to `brief.md`) |
| Text the user wrote or edited themselves (own email, corrected draft, "I'd never say that") | hand to the **voice-keeper** agent → `context/voice.json` |
| Rule for **every** session (e.g. "always informal German", "never emojis") | master `CLAUDE.md` → **ask first** |

Skip small talk, one-off tasks, and anything already written down. Never save passwords, keys, health data or other people's private data.

## 2. Write
- Make the smallest change that captures it. Edit existing lines instead of adding duplicates. If a new fact contradicts an old one, replace the old one.
- Dates in `YYYY-MM-DD`.
- For a change to the master `CLAUDE.md`: show the exact line you'd add, ask "Should I add this rule for all future sessions?", and only write after a yes. Then update the short version in `AGENTS.md` if the rule belongs there too.
- Keep `CLAUDE.md` and the files it imports (`context/about-me.md`, `context/working-style.md`) short. They are loaded into every session; long files make Claude slower and less focused. If one grows beyond about one screen, propose moving details into a separate file in `context/` that is read on demand.

## 3. Report
List what you saved in short lines, e.g.:
- Saved to `context/working-style.md`: you prefer drafts as bullet points.
- `vienna-gym-launch`: decided on €29 price, status → waiting.
Ask if anything should be removed.
