# 5 · Memory

**Analogy:** Two notebooks. One is on the shared shelf (your workspace files). The other is Claude's private notebook on your computer.

## 1. Workspace memory (the one you control)
`CLAUDE.md`, `context/` and each project's `CLAUDE.md`. Visible, editable, can be shared or backed up. This workspace is built around it: Claude writes lasting facts and decisions here and tells you when it does (`/update-context`).

## 2. Auto memory (Claude's own notes)
Claude Code can also keep its own notes about a folder you work in, stored in your user folder (under `~/.claude/projects/…/memory/`). It saves things like "user prefers X" or "this project uses Y" by itself and reads them next time. They stay on your computer and are not part of the workspace folder.
- Type `/memory` to see and edit what's loaded, including these notes.
- You can say "forget that" or "remember that …" any time.

## What memory is not
- The chat itself is not memory. When a session ends, only what was written to files survives.
- Memory is not a database of everything. Keep it to what matters next week.

## Which one to use
| Kind of information | Best place |
|---|---|
| Rules you want to be able to read and share | `CLAUDE.md` / `context/` |
| Project goals, decisions, status | the project's `CLAUDE.md` |
| Small personal habits Claude noticed | auto memory is fine |

## Try it
Type `/memory` and look at what's loaded. Then ask: "Which of these files would you update if I told you I switched from Gmail to Outlook?"
