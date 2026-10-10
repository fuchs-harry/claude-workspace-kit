# 3 · CLAUDE.md and context: how Claude remembers you

**Analogy:** A briefing note a new assistant reads every morning before work starts.

## CLAUDE.md
A plain text file (Markdown, i.e. text with `#` for headings and `-` for lists). Claude Code loads it automatically at the start of every session. Whatever is in it, Claude knows.

Claude loads, in this order:
1. Your personal one in your user folder (`~/.claude/CLAUDE.md`), if you created one: applies to **every** folder you open.
2. `CLAUDE.md` files in the opened folder **and all folders above it**. That's why project folders still follow the workspace rules.
3. `CLAUDE.md` files in sub-folders, but only when Claude starts working with files in there.
4. `CLAUDE.local.md` (personal notes for one folder that you don't want to share).

## Imports with @
A line like `@context/about-me.md` inside `CLAUDE.md` pulls that file in, as if it were written there. Your workspace imports `about-me.md` and `working-style.md`, so they are always known.

## context/
Everything about **you** that isn't tied to one project. Claude updates it as it learns (you'll see a short "Saved to context: …" line). You can edit it yourself any time; it's just text.

## Keep it short
Everything in `CLAUDE.md` and its imports is read every session and takes up space in Claude's attention. Short, clear rules work better than long essays. Details go into separate files that Claude reads when needed.

## Important limit
`CLAUDE.md` is **guidance, not a lock**. Claude follows it very reliably, but if something must never happen (like deleting files), that belongs in permissions → lesson 7.

## Try it
1. Ask: "What do you know about me right now, and where does it come from?"
2. Then tell Claude one new preference ("I like answers under 5 lines") and type `/update-context`. Open `context/working-style.md` and find the new line.
