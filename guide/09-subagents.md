# 9 · Subagents (helpers)

**Analogy:** Claude is a project manager who can send interns off on errands. Each intern gets one task, works in a separate room, and comes back with a short report.

## Why that's useful
- **Parallel work:** "Research five competitors" can become five helpers working at the same time.
- **Clean head:** the helper reads 50 files; Claude only gets the summary. Your main conversation stays focused.
- **Specialists:** a helper can have its own instructions and limited tools (e.g. "read only, never edit").

## How you use it
Usually you don't have to do anything. For big research or review tasks Claude starts helpers itself. You can also ask: "Use helpers to check all my project folders in parallel."

## Your own specialists
A subagent is a file in `.claude/agents/`:
```markdown
---
name: proofreader
description: Checks texts for typos, tone and length before I send them. Use before anything goes out.
tools: Read
---
Check the text for spelling, tone (see context/working-style.md) and length. Report problems as a short list. Never edit the file.
```
Type `/agents` to see, create or edit them.

## Cost note
Helpers use more of your plan's usage, because each one works separately. Worth it for big tasks, overkill for small ones.

## Try it
Ask: "Create a read-only helper called `proofreader` that checks texts before I send them." Then: "Use the proofreader on projects/README.md."
