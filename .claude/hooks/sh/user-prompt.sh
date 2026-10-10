#!/usr/bin/env bash
# UserPromptSubmit hook (macOS, Linux, Windows Git Bash).
# Marks the session when the user says something worth remembering, so the Stop hook triggers update-context soon.
DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
INPUT=$(cat)
STATE="$DIR/.claude/state"
mkdir -p "$STATE"
if printf '%s' "$INPUT" | grep -Eiq 'remember|merk dir|merke dir|keep in mind|from now on|ab jetzt|ab sofort|we decided|wir haben entschieden|entschieden|decided|decision|entscheidung|i prefer|ich bevorzuge|lieber|always |immer |never |niemals|nie wieder|my name is|ich heiße|new client|neuer kunde|neue kundin|deadline'; then
  touch "$STATE/flag"
fi
exit 0
