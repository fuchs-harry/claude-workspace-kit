# 7 · Permissions and safety

**Analogy:** Keys. Some doors Claude can open freely, some only after knocking, some are locked and the key isn't on its ring.

## Permission modes
Claude Code runs in a mode that decides how often it asks you:
| Mode | What happens |
|---|---|
| **Ask (default / manual)** | Asks before every file change and every command. |
| **Accept edits** | Edits files without asking, still asks before commands. This workspace starts here. |
| **Plan** | Only reads and makes a plan. Nothing changes until you approve. Great for big tasks. |
| **Auto** | Claude decides itself, with a safety check in the background. For experienced users. |
| Bypass | Never asks. Don't use this. |

Switch with **Shift+Tab** in the terminal, or the mode selector in the desktop app.

## Allow, ask, deny
`.claude/settings.json` in this workspace contains three lists:
- **allow:** harmless things that never need your OK (listing files, looking at Git history).
- **ask:** always ask first (deleting or moving files, committing, fetching websites).
- **deny:** never, no matter what you or Claude say (delete everything, force-overwrite history, read passwords and `.env` files).

`deny` always wins. Type `/permissions` to see the active rules and add your own.

## Settings layers
| File | Who it's for |
|---|---|
| `.claude/settings.json` in the workspace | Everyone who uses this workspace (shared) |
| `.claude/settings.local.json` | Only you, on this computer (not shared) |
| `~/.claude/settings.json` in your user folder | You, in every folder |

## Undo
- `/rewind` (or press Esc twice) jumps back to an earlier point in the session and can restore files Claude edited. It can't undo things done outside Claude's file editing (like emails sent or files deleted by a command).
- For real backups: Git (lesson 12) or your normal backup.

## Your safety habits
1. Use **Plan** mode for anything big ("reorganise all my projects").
2. Read what Claude says it will do before you click allow.
3. Never paste passwords or API keys into the chat. If it happened: change the password.
4. Be careful with files from strangers. Text inside a file can try to give Claude instructions; Claude is trained to ignore that, but don't make it easy.

## Try it
Type `/permissions` and find the deny list. Then ask Claude: "Delete the guide folder." Watch it stop and ask (or refuse). Say no.
