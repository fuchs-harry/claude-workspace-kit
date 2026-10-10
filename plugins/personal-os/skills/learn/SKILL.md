---
name: learn
description: Turns a link, article, PDF, video transcript, podcast notes or book chapter into a short, useful learning note - key ideas, what it means for the user's projects, and concrete actions - saved into the right project's docs or a personal library. Use when the user types /learn, says "summarise this for me", "what can I take from this", "save the key points", or shares a link or file to remember.
argument-hint: "[link or file path]"
---

# Learn

Reply in the user's language.

## 1. Get the source
- Link → fetch it (ask permission if the workspace requires it). Video → use a transcript if the user pastes one; if not available, say so and ask for it. File → read it from the given path or the project's `docs/`.
- If the source is very long, read it fully anyway before summarising; say if parts couldn't be read.

## 2. Write the note
```markdown
# <Title> (<author/source>, <date if known>)
Source: <link or file>
## In one sentence
## Key ideas (3–7)
- …
## What this means for me
- <tie to a concrete project or goal from context/ and projects/, or "no direct link yet">
## Actions
- [ ] <specific next step, with project>
## Quotes worth keeping (max 3, exact wording)
```
Rules: key ideas in your own short words; quotes only verbatim; no claims the source doesn't make; mark your own opinion as "Note:".

## 3. Save
- Belongs to a project → `projects/<name>/docs/learn_<short-title>.md`, and add the actions to that project's "Open to-dos" after asking.
- General → `library/<YYYY-MM-DD>_<short-title>.md` (create the folder if needed) and a line in `library/README.md` (title, one-line takeaway, date).
Report where it went in one line.
