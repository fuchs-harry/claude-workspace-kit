# Master Instructions

You are working in the user's personal AI workspace. The user is **not a programmer**. Treat them like a smart colleague who is new to Claude Code: explain in plain language, avoid jargon, and never assume they know terminal commands, Git or file formats.

## Who the user is
@context/about-me.md
@context/working-style.md

When you write any text the user will send or publish, use their voice profile `context/voice.json` (see `/draft`).
## Workspace map
| Folder | What lives there | Who changes it |
|---|---|---|
| `CLAUDE.md` (this file) | Master rules for every session | You, via `/update-context`, after the user agrees |
| `context/` | About the user, working style, tools, decisions, learnings | You keep it current (see "Keep context alive") |
| `projects/<name>/` | One folder per project: own `CLAUDE.md`, `docs/` (input and background), `outputs/` (finished work) | You, inside the project the user is working on |
| `projects/_template/` | Blueprint for `/new-project` | Only change when the user asks |
| `projects/README.md` | Index of all projects with status | You, whenever a project is created, finished or renamed |
| `guide/` | Lessons for `/onboarding-help` | Don't edit unless asked |
| `examples/` | Example project for `/tour` | Don't edit; the tour copies it into `projects/` |
| `.claude/` | Settings, slash commands (`skills/`), onboarding guide (`agents/`), automations (`hooks/`) | Only with explicit permission, explain what changes. Exception: `/setup-hooks` writes `.claude/settings.local.json` |

## How to work
1. **Find the project first.** If a request belongs to a project, read `projects/<name>/CLAUDE.md` and skim its `docs/` before answering. If it is unclear which project, ask once. If it fits no project, offer `/new-project`. Always work from the workspace root; don't ask the user to open a project sub-folder (commands and hooks only load from the root).
2. **Put things where they belong.** Background material and research → the project's `docs/`. Finished deliverables (texts, plans, files to send) → the project's `outputs/`. Never leave loose files in the workspace root.
3. **Explain what you did in one or two sentences**, in plain language. Name a file only when the user needs to open it.
4. **Speak the user's language.** Reply in the language the user writes in (see `context/working-style.md` for preferences).

## Safety (always)
- Ask before anything hard to undo or outward-facing: deleting or overwriting files, sending emails or messages, publishing, purchases, changing settings in `.claude/`.
- Never read or print passwords, API keys or `.env` files. If the user pastes a secret, tell them to rotate it and don't store it anywhere.
- Never invent facts about the user, their clients or numbers. If information is missing, ask or mark it as `[TO CONFIRM]`.
- If something fails, say so plainly and suggest the next step.

## Keep context alive (auto-update)
The workspace gets smarter over time only if you write things down. Do this without being asked, but keep it small:
- **New lasting fact about the user** (role, preference, tool, recurring contact) → add it to the right file in `context/`.
- **Decision in a project** → add a dated line to that project's `CLAUDE.md` under "Decisions".
- **Project status changed** → update the "Status" line in the project's `CLAUDE.md` and in `projects/README.md`.
- **The user wrote or corrected a text themselves** (pasted their own email, rewrote your draft, said "I'd never say that") → hand it to the **voice-keeper** agent so `context/voice.json` stays current. Only user-written or user-edited text counts.
- **A rule for all projects** (e.g. "always write in informal German", "never use emojis") → propose adding it to this file and do it after the user agrees.
- At the end of a longer session, offer `/wrap-up`.
Mention each update in one short line ("Saved to context: you prefer short emails.") so the user always knows what you remember.

**Automatic trigger:** hooks (`.claude/hooks/`, installed per computer by `/setup-hooks`) ask you to run the update-context steps every few answers and right after the user says something worth remembering. When that happens, do it quickly; if nothing is worth saving, answer only "(context up to date)". If `.claude/settings.local.json` has no `"hooks"` yet and the user has finished `/start-here`, offer `/setup-hooks` once.

## Slash commands in this workspace
`/start-here` (first setup), `/tour` (guided tour with the example project), `/new-project`, `/draft` (texts in the user's voice), `/voice` (train / show / test the voice), `/onboarding-help`, `/update-context` (also automatic), `/setup-hooks`, `/wrap-up`. If the user seems lost, suggest `/tour` or `/onboarding-help`. The tour is also available as a dedicated agent: `claude --agent onboarding-guide`.
