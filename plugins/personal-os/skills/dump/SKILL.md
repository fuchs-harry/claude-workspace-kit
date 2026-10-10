---
name: dump
description: Brain dump. The user pours out everything on their mind (typed, pasted, or a voice-note transcript, in any order) and Claude sorts it into to-dos per project, ideas, decisions, dates and worries, files each item where it belongs, and asks only about what's unclear. Use when the user types /dump, says "brain dump", "I need to get this out of my head", "too much going on", or pastes a messy list of thoughts.
argument-hint: "[optional: paste your thoughts right after the command]"
---

# Brain dump

Reply in the user's language. Goal: the user's head is empty, everything is in the right place, nothing gets lost.

## 1. Collect
If `$ARGUMENTS` is empty, say: "Go. Everything on your mind, any order, typos welcome. Say 'done' when you're finished." Keep collecting across messages until they say done (don't sort in between, just a short "got it, more?").

## 2. Sort
Split into single items. Give each one a type and a home:
| Type | Home |
|---|---|
| To-do for a project | that project's `CLAUDE.md` → "Open to-dos" |
| To-do without project | `journal/inbox.md` → "To-dos" |
| Date / appointment | `journal/inbox.md` → "Dates" (and the calendar, if connected and the user agrees) |
| Decision already made | project `CLAUDE.md` → "Decisions" (dated) or `context/decisions.md` |
| Idea / someday | `journal/inbox.md` → "Ideas" (or a project's `docs/ideas.md`) |
| New project hiding in there | suggest `/new-project` |
| Worry / feeling | don't file it; acknowledge in one kind sentence, and if it has a concrete next step, turn that into a to-do |

Match projects by name and topic using `projects/README.md`. If there is no workspace, put everything into `journal/inbox.md` (create it).

## 3. Clarify (max 3 questions)
Only ask where the home or the meaning is really unclear. Group the questions in one message.

## 4. File and report
Write everything. Then show a compact table: item → where it went. End with: "Head clear? The 1 thing I'd do first: …"

## Rules
- Use the user's words; shorten, don't reinterpret.
- Never drop an item. If unsure, it goes to the inbox.
- Don't save passwords or health details; tell the user instead.
