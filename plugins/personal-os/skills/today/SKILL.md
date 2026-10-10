---
name: today
description: Morning plan. Looks at active projects, open to-dos, yesterday's journal and (if connected) today's calendar, then proposes the 3 things that matter most today with time estimates, and writes the plan into journal/YYYY-MM-DD.md. Use when the user types /today, says "good morning", "what should I do today", "plan my day", "where do I start".
argument-hint: "[optional: how much time you have, e.g. '3 hours']"
---

# Today

Reply in the user's language. The whole plan fits on one phone screen.

## 1. Gather (quietly, don't narrate)
- `context/about-me.md` and `context/working-style.md` if they exist.
- `projects/README.md` → active projects; each active project's `CLAUDE.md` → Status, Deadline, Open to-dos.
- The most recent file in `journal/` (yesterday's plan): what was planned and not ticked off carries over.
- If a calendar connector is available (Google Calendar, Outlook), read today's events. If not, don't mention it.
- If none of these exist (no workspace), ask: "What's on your plate today?" and plan from the answer.

## 2. Plan
- Available time: from `$ARGUMENTS`, or ask once ("How many focused hours do you have today?"), default 4 hours minus meetings.
- Pick **max 3 priorities**. Order: hard deadlines in the next 3 days → things blocking other people → carry-overs older than 2 days → the step that moves the most important project forward.
- Each priority: one verb-first line, project name, time estimate, the very first concrete action ("open docs/brief.md and…").
- Then "If there's time" (max 3 small items) and "Not today" (things you deliberately push, so they stop nagging).
- Warn in one line if the day is overbooked.

## 3. Save
Write to `journal/<today YYYY-MM-DD>.md` (create the folder if needed; if the file exists, update the "Plan" section instead of overwriting):
```markdown
# <weekday>, <date>
## Plan
- [ ] (Project) Priority 1 – ~60 min – first step: …
- [ ] (Project) Priority 2 – …
- [ ] (Project) Priority 3 – …
### If there's time
- [ ] …
### Not today
- …
## Notes
```

## 4. Close
Show the plan, then ask: "Start with #1? I can open what you need (or try `/focus`)."
