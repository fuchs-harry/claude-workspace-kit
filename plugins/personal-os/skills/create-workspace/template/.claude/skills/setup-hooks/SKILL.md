---
name: setup-hooks
description: Detects the user's operating system (macOS, Linux, Windows) and installs the matching automatic hooks (session start status, automatic update-context, notifications) into .claude/settings.local.json, then tests them. Use when the user types /setup-hooks, during /start-here, when hooks don't seem to work, or after moving the workspace to another computer.
---

# Set up automations (hooks)

Explain in one sentence first: "I'll switch on a few automations: I'll check your projects when a session starts, save what I learn automatically from time to time, and notify you when I'm waiting." Then do it. Reply in the user's language.

## 1. Detect the operating system
Run `uname -s` with the shell tool. If that fails or you only have PowerShell, run `$PSVersionTable.OS` or `[System.Environment]::OSVersion.Platform`.
| Result | Variant |
|---|---|
| `Darwin` | macOS → `sh` |
| `Linux` | Linux → `sh` |
| `MINGW*`, `MSYS*`, `CYGWIN*`, `Win32NT`, or Windows paths like `C:\` | Windows → `ps` |

Tell the user in plain words which system you found.

## 2. Make the scripts runnable
- `sh`: `chmod +x .claude/hooks/sh/*.sh`.
- `ps`: nothing to do (scripts run with `-ExecutionPolicy Bypass`, only for these files).

## 3. Write the hooks into `.claude/settings.local.json`
This file is personal and per computer. Read it first if it exists and **keep every other key**; only replace the `"hooks"` key. Create the file if missing.

For `sh`:
```json
{
  "hooks": {
    "SessionStart": [{ "hooks": [{ "type": "command", "command": "bash \"$CLAUDE_PROJECT_DIR/.claude/hooks/sh/session-start.sh\"", "timeout": 15 }] }],
    "UserPromptSubmit": [{ "hooks": [{ "type": "command", "command": "bash \"$CLAUDE_PROJECT_DIR/.claude/hooks/sh/user-prompt.sh\"", "timeout": 10 }] }],
    "Stop": [{ "hooks": [{ "type": "command", "command": "bash \"$CLAUDE_PROJECT_DIR/.claude/hooks/sh/stop.sh\"", "timeout": 10 }] }],
    "Notification": [{ "hooks": [{ "type": "command", "command": "bash \"$CLAUDE_PROJECT_DIR/.claude/hooks/sh/notify.sh\"", "timeout": 10 }] }]
  }
}
```

For `ps`:
```json
{
  "hooks": {
    "SessionStart": [{ "hooks": [{ "type": "command", "command": "powershell -NoProfile -ExecutionPolicy Bypass -File .claude/hooks/ps/session-start.ps1", "timeout": 20 }] }],
    "UserPromptSubmit": [{ "hooks": [{ "type": "command", "command": "powershell -NoProfile -ExecutionPolicy Bypass -File .claude/hooks/ps/user-prompt.ps1", "timeout": 15 }] }],
    "Stop": [{ "hooks": [{ "type": "command", "command": "powershell -NoProfile -ExecutionPolicy Bypass -File .claude/hooks/ps/stop.ps1", "timeout": 15 }] }],
    "Notification": [{ "hooks": [{ "type": "command", "command": "powershell -NoProfile -ExecutionPolicy Bypass -File .claude/hooks/ps/notify.ps1", "timeout": 15 }] }]
  }
}
```

## 4. Test (from the workspace root)
Feed each script a sample input and check the result:
- Session start: `echo '{}' | <runner> session-start` → prints "Workspace status …".
- Stop loop guard: `echo '{"stop_hook_active": true}' | <runner> stop` → prints nothing.
- Stop trigger: create the flag file `.claude/state/flag`, then `echo '{"stop_hook_active": false}' | <runner> stop` → prints a JSON line with `"decision":"block"`.
`<runner>` is `bash .claude/hooks/sh/<name>.sh` or `powershell -NoProfile -ExecutionPolicy Bypass -File .claude/hooks/ps/<name>.ps1`.
Afterwards reset with `echo 0 > .claude/state/turns` and remove the flag file. If a test fails, try the other variant (on Windows, `sh` works too when Git Bash is installed), and tell the user plainly what happened.

## 5. Activate
Hooks are read when a session starts. Tell the user: "Start a new session (or type `/hooks` to review and confirm them). From then on I save important things automatically and tell you in one line." Mention they can switch it off any time ("remove the hooks").

## Rules
- Only touch `.claude/settings.local.json`, never the shared `.claude/settings.json`, for hooks.
- Never install hooks from anywhere other than `.claude/hooks/` in this workspace.
