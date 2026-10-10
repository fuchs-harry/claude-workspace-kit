# 8 Â· Hooks (automations)

**Analogy:** A motion-sensor light. You don't switch it on; it reacts automatically when something happens.

## What a hook is
A small automatic action that runs at a specific moment, every time, without Claude having to remember:
| Moment | Example use |
|---|---|
| `SessionStart` (a session begins) | Fetch the newest version of shared files |
| `PreToolUse` (before Claude does something) | Block a dangerous command, double-check a rule |
| `PostToolUse` (after Claude did something) | Tidy up a file after it was edited |
| `Stop` (Claude finishes answering) | Remind you to `/wrap-up`, check that links still work |
| `Notification` | Show a desktop notification when Claude needs you |

Hooks are configured under `"hooks"` in `.claude/settings.json` (shared) or `.claude/settings.local.json` (only your computer). Type `/hooks` to see them.

## Rules vs. hooks
- A rule in `CLAUDE.md` says "please always do X". Claude usually does.
- A hook makes X happen **every** time, guaranteed, because it isn't Claude doing it but the program.

## The hooks in your workspace
This workspace comes with four ready-made hooks, in two versions: `.claude/hooks/sh/` for macOS and Linux, `.claude/hooks/ps/` for Windows. `/setup-hooks` (part of `/start-here`) detects your system and switches on the right version, only for your computer (`.claude/settings.local.json`).
| Hook | What it does for you |
|---|---|
| Session start | Claude knows today's date, your system and your active projects; on the first run it offers setup and tour |
| Your message | Notices phrases like "remember", "from now on", "we decided" |
| Claude finishes | Every 8 answers, or right after such a phrase, Claude saves what it learned (`/update-context`) and tells you in one line |
| Claude waits | Notification (Mac/Linux) or a short beep (Windows) |
Details, rhythm and how to switch off: `.claude/hooks/README.md`.

## Your own hooks
Hooks run small programs, and Windows and Mac differ, so let Claude write them: "Set up a hook that â€¦ Explain what it does and how to remove it." Then check with `/hooks`.

## Try it
Type `/hooks` and find the four automations. Then say "From now on, start every answer with a one-line summary" and watch Claude save it automatically when it finishes.
