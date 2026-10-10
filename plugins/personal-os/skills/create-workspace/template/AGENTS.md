# AGENTS.md

This workspace keeps its master instructions in `CLAUDE.md` (for Claude Code). Other AI coding tools (Codex, Cursor, Gemini CLI, …) read `AGENTS.md` instead, so this file points them to the same rules.

**Read `CLAUDE.md` in this folder and follow it.** Also read every file in `context/` and, when working inside a project, `projects/<name>/CLAUDE.md`.

Short version for tools that don't follow links:
- The user is not a programmer. Explain in plain language.
- Context lives in files: `context/` (the user), `projects/<name>/` (one folder per project with `CLAUDE.md`, `docs/`, `outputs/`).
- Ask before deleting, sending, publishing or spending money. Never read `.env` files or secrets.
- Write lasting facts and decisions back into `context/` or the project's `CLAUDE.md` (Claude Code does this automatically via hooks; other tools should do it at the end of each task).

Keep this file and `CLAUDE.md` in sync: when the rules change, change `CLAUDE.md` first, then update the short version here.
