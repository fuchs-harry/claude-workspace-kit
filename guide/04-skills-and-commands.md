# 4 · Skills and slash commands

**Analogy:** A recipe card. Instead of explaining every time how you want a weekly report done, you write the recipe once. Then you say "weekly report" and Claude follows it exactly.

## Slash commands
Anything you type starting with `/`.
- **Built-in** ones come with Claude Code: `/help`, `/clear` (fresh start), `/compact` (shrink a long chat), `/memory`, `/permissions`, `/model`, `/rewind` (undo), `/init`, `/agents`, `/hooks`, `/mcp`. Type `/` to see the full list.
- **Your own** ones come from skills: `/start-here`, `/new-project`, `/onboarding-help`, `/update-context`, `/wrap-up`.

## Skills
A skill is a folder with one file, `SKILL.md`:
```
.claude/skills/weekly-report/SKILL.md
```
```markdown
---
name: weekly-report
description: Writes my weekly status report. Use when I say "weekly report".
---
1. Read the Status and Open to-dos in every active project.
2. Write 5 bullets: done, next, blocked.
3. Save to outputs/ of the main project with today's date.
```
- The part between `---` lines tells Claude the name and **when** to use it. A good description means Claude also uses the skill on its own when it fits, even if you don't type the command.
- Everything below is the recipe: plain language steps.
- A skill folder can also hold extra files (examples, templates) the recipe points to.

## Where skills live
| Place | Works for |
|---|---|
| `.claude/skills/` in this workspace | This workspace only |
| `~/.claude/skills/` in your user folder | Every folder you open |
| Plugins | Shared with others → lesson 11 |

(Older guides mention `.claude/commands/`. That still works, but skills are the current way.)

## When to make a skill
When you've asked for the same kind of thing three times, or explained the same steps twice.

## Try it
Say: "Create a skill called `quick-summary` that summarises any file I name in 5 bullets and saves nothing." Then type `/quick-summary guide/01-what-is-claude-code.md`.
