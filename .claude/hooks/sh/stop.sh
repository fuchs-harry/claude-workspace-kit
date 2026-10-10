#!/usr/bin/env bash
# Stop hook (macOS, Linux, Windows Git Bash): automatic /update-context.
# Runs every time Claude finishes an answer. Every N answers (default 8), or right after the user said
# something worth remembering, it asks Claude to run the update-context steps once.
DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
INPUT=$(cat)

# Claude is already continuing because of this hook: let it stop, no loop.
if printf '%s' "$INPUT" | grep -Eq '"stop_hook_active"[[:space:]]*:[[:space:]]*true'; then
  exit 0
fi

STATE="$DIR/.claude/state"
mkdir -p "$STATE"
N=$(cat "$STATE/turns" 2>/dev/null)
case "$N" in ''|*[!0-9]*) N=0 ;; esac
N=$((N + 1))
EVERY="${CLAUDE_CONTEXT_EVERY:-8}"

if [ -f "$STATE/flag" ] || [ "$N" -ge "$EVERY" ]; then
  echo 0 > "$STATE/turns"
  rm -f "$STATE/flag"
  printf '%s\n' '{"decision":"block","reason":"Automatic context check (workspace hook). Follow the steps in .claude/skills/update-context/SKILL.md for this session so far: save only lasting facts, preferences, project decisions or status changes. Ask only the required confirmation before changing the master CLAUDE.md. If nothing is worth saving, reply with exactly: (context up to date). Otherwise list what you saved, one short line each."}'
  exit 0
fi

echo "$N" > "$STATE/turns"
exit 0
