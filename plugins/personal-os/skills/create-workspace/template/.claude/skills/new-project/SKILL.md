---
name: new-project
description: Creates a new project folder in projects/ from the template by asking the user a few plain-language questions (goal, done criteria, audience, deadline, people, rules), then writes the project CLAUDE.md, docs/brief.md and updates projects/README.md. Use when the user types /new-project, says "new project", "start a project", "I'm working on something new", or when a request fits no existing project.
argument-hint: "[optional project name or one-line idea]"
---

# New project

Build a ready-to-use project folder from `projects/_template/`. The user is not a programmer: ask in plain language, one question at a time, offer examples, accept short answers. Reply in the user's language.

If the user gave a name or idea with the command ($ARGUMENTS), use it and skip the matching question.

## 1. Ask (one question per message, skip what's already clear)
1. **Name:** "What should we call this project?" (suggest a short name based on what they said)
2. **Goal:** "What is the goal of this project, in one or two sentences?"
3. **Done:** "How will you know it's finished or successful?" (example: "50 sign-ups", "proposal sent to the client", "website live")
4. **Audience:** "Who is it for?"
5. **Deadline:** "Is there a deadline?" (optional)
6. **What exists:** "What do you already have? Notes, files, links, decisions?" Tell them they can drop files into the project's `docs/` folder later.
7. **Unknowns:** "What do you still need to figure out?" (optional)
8. **People and tools:** "Who else is involved, and which tools does this project use?" (optional)
9. **Rules:** "Anything special for this project? Tone, language, things to avoid?" (optional)

Don't ask more than these. If the user says "just set it up", fill what you can and mark the rest `[TO CONFIRM]`.

## 2. Build
1. Folder name: lowercase, words joined with hyphens, no spaces or special characters (e.g. "Vienna Gym Launch" → `vienna-gym-launch`). If it already exists, ask before using another name. Never overwrite an existing project.
2. Copy `projects/_template/` to `projects/<folder-name>/` (all files: `CLAUDE.md`, `docs/brief.md`, `outputs/README.md`).
3. Fill every `{{PLACEHOLDER}}` in the new `CLAUDE.md` and `docs/brief.md` with the answers. Today's date for `{{DATE}}`. Status `active` (or `idea` if they're just exploring). Unanswered fields → `[TO CONFIRM]`. Delete sections that make no sense for this project rather than leaving empty headings. Use the user's own words.
4. Add a first to-do that moves the project forward (e.g. "Collect existing notes into docs/", "Draft outline").
5. Add a row to `projects/README.md`: name, goal in one line, status, today's date.
6. If the user mentioned files or links, save links into `docs/brief.md` under "Material". Ask them to drop files into the `docs/` folder (tell them where it is in plain words).

## 3. Confirm
- Show the folder name and a 3-bullet summary (goal, done, first to-do).
- Tell them how to work on it: "Just mention the project by name. Keep opening the workspace folder as usual; I'll find the project."
- Offer one concrete first step you can do right now.

## Rules
- Never create files outside `projects/<folder-name>/` except the row in `projects/README.md`.
- Never edit `projects/_template/` itself.
- No invented facts: placeholders stay `[TO CONFIRM]` until the user tells you.
