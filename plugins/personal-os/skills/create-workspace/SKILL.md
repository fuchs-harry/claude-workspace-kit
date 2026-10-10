---
name: create-workspace
description: Builds a complete personal AI workspace in the current (empty) folder from the Claude Workspace Kit - master CLAUDE.md, AGENTS.md, context/, projects/ with template, the example project, 12 guide lessons, safety settings, slash commands (/start-here, /tour, /new-project, /onboarding-help, /update-context, /setup-hooks, /wrap-up), the onboarding guide agent and OS-specific hooks. Use when the user types /create-workspace, says "set up my AI workspace", "create the workspace", "install the workspace kit".
---

# Create workspace

Reply in the user's language. The user is not a programmer.

## 1. Check the folder
- Show the current folder path in plain words and list what's in it.
- If it already has a `CLAUDE.md` or `.claude/` folder: stop and ask. Never overwrite. Offer a sub-folder instead (e.g. `Claude-Workspace`).
- If it's clearly the wrong place (home folder, Desktop, Downloads, a system folder): suggest creating `Claude-Workspace` inside Documents and ask.

## 2. Copy the kit
The full kit ships with this skill in `${CLAUDE_SKILL_DIR}/template/`. Copy **everything** from there (including the hidden `.claude/` folder and `.gitignore`) into the target folder, keeping the structure. Use a single copy command for the platform (`cp -R "${CLAUDE_SKILL_DIR}/template/." <target>` on macOS/Linux/Git Bash, `Copy-Item -Recurse` in PowerShell). Then list the top-level result.

If the template folder is missing, tell the user to download the kit from https://github.com/fuchs-harry/claude-workspace-kit (Code → Download ZIP) and unzip it instead.

## 3. Hand over
Say, in this order:
1. "Your workspace is ready." One line per main folder (what it's for).
2. "Important: open this folder in Claude Code (Code tab → choose folder) and confirm that you trust it. Only then do the slash commands and safety rules switch on."
3. "Then type `/start-here` (5-minute setup), then `/tour` (guided tour with an example project)."
