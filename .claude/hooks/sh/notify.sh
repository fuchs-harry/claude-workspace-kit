#!/usr/bin/env bash
# Notification hook: tells you when Claude is waiting for you. Picks the right method per operating system.
cat >/dev/null 2>&1
MSG="Claude is waiting for you"
case "$(uname -s)" in
  Darwin) osascript -e "display notification \"$MSG\" with title \"Claude Code\"" >/dev/null 2>&1 ;;
  Linux) command -v notify-send >/dev/null 2>&1 && notify-send "Claude Code" "$MSG" ;;
  MINGW*|MSYS*|CYGWIN*) powershell.exe -NoProfile -Command "[console]::beep(880,250)" >/dev/null 2>&1 ;;
esac
exit 0
