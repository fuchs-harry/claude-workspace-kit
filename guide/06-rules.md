# 6 · Rules

**Analogy:** House rules on the fridge versus a note on one specific drawer ("handle with care, glasses inside").

## Three ways to give Claude rules
| Where | Applies | Example |
|---|---|---|
| Root `CLAUDE.md` | Everything in this workspace | "Reply in German, deliverables in English." |
| A project's `CLAUDE.md` → "Project rules" | Only that project | "Client is formal: always use 'Sie'." |
| `.claude/rules/*.md` | Only files that match a pattern | A rule for all `outputs/` files: "Every finished text gets a date in the file name." |

## Rules for specific files
A file in `.claude/rules/` can say which files it's about:
```markdown
---
paths: ["projects/**/outputs/**"]
---
Finished files are named YYYY-MM-DD_topic_vN, and never overwritten: save a new version instead.
```
Claude reads that rule only when it works on matching files. That keeps the main `CLAUDE.md` short.

## Writing good rules
- One rule, one line, concrete. "Max 120 words per email" beats "keep emails short-ish".
- Say why, if it's not obvious. Claude follows rules better when it knows the reason.
- If a rule must **never** be broken (deleting, sending), add a permission too → lesson 7. Rules are guidance; permissions are locks.

## Try it
Tell Claude: "Add a rule for all projects: every finished file in outputs/ starts with today's date." Watch where it puts the rule and ask why it chose that place.
