#!/usr/bin/env bash
# SessionStart hook (macOS, Linux, Windows Git Bash).
# Whatever this prints is added to Claude's context at the start of a session.
DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
cat >/dev/null 2>&1   # read and ignore the JSON input
STATE="$DIR/.claude/state"
mkdir -p "$STATE"
echo 0 > "$STATE/turns"
rm -f "$STATE/flag"

case "$(uname -s)" in
  Darwin) OS="macOS" ;;
  Linux) OS="Linux" ;;
  MINGW*|MSYS*|CYGWIN*) OS="Windows (Git Bash)" ;;
  *) OS="$(uname -s)" ;;
esac

echo "Workspace status (automatic, $(date +%Y-%m-%d), $OS):"
if grep -q "\[TO FILL\]" "$DIR/context/about-me.md" 2>/dev/null; then
  echo "- FIRST RUN: context/about-me.md is not filled yet. Greet the user in one or two warm sentences and offer: /start-here (5-minute setup), then /tour (15-minute guided tour with an example project)."
else
  if [ -f "$STATE/tour-progress.md" ] && ! grep -q "status: done" "$STATE/tour-progress.md" 2>/dev/null; then
    echo "- The guided tour is unfinished (.claude/state/tour-progress.md). Offer to continue with /tour."
  fi
  ACTIVE=$(grep -E "\|[[:space:]]*active[[:space:]]*\|" "$DIR/projects/README.md" 2>/dev/null | cut -d'|' -f2 | sed 's/^ *//;s/ *$//' | paste -sd, - 2>/dev/null)
  [ -n "$ACTIVE" ] && echo "- Active projects: $ACTIVE"
fi
echo "- Auto-context is on: a hook will occasionally ask you to run the update-context steps. Keep that quick and quiet."
exit 0
