# Hooks in this workspace

Hooks are small automatic actions Claude Code runs at fixed moments (lesson `guide/08-hooks.md`). This workspace ships two identical sets:

| Folder | For |
|---|---|
| `sh/` | macOS, Linux (and Windows with Git Bash) |
| `ps/` | Windows PowerShell |

`/setup-hooks` detects your operating system and writes the matching set into `.claude/settings.local.json` (personal, per computer, not shared). `/start-here` runs it for you.

| Hook | Moment | What it does |
|---|---|---|
| `session-start` | A session starts | Tells Claude today's date, your OS, active projects; on first run it makes Claude offer `/start-here` and `/tour`; resets the counter |
| `user-prompt` | You send a message | If you say something like "remember", "from now on", "we decided", "I prefer", it flags the session |
| `stop` | Claude finishes an answer | Every 8 answers, or right after a flagged message, Claude runs the `/update-context` steps once (automatic context) |
| `notify` | Claude waits for you | Desktop notification (macOS/Linux) or a short beep (Windows) |

Change the rhythm: set the environment variable `CLAUDE_CONTEXT_EVERY` (e.g. `5`), or ask Claude to change the default in `stop.sh` / `stop.ps1`.

Turn everything off: ask Claude "remove the hooks from settings.local.json", or delete the `"hooks"` block there. Check what's active: type `/hooks`.

Counters live in `.claude/state/` (ignored by Git, safe to delete).
