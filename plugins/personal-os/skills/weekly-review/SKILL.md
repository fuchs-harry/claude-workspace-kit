---
name: weekly-review
description: Weekly review in 10 minutes. Collects what got done this week from journals and projects, spots stuck and forgotten projects, empties the inbox, updates every project's status, and sets the top 3 for next week. Writes journal/week-YYYY-Www.md. Use when the user types /weekly-review, says "weekly review", "how was my week", "plan next week", or on Fridays/Sundays when the user asks what's next.
---

# Weekly review

Reply in the user's language. Be honest but kind. Total output: one screen.

## 1. Look back (read quietly)
- `journal/` files of the last 7 days: ticked and unticked items, notes.
- Every project in `projects/README.md`: Status, Decisions and Open to-dos in its `CLAUDE.md`, files changed this week in its `docs/` and `outputs/` (check modification dates).
- `journal/inbox.md` if it exists.

## 2. Show the week
- **Done** (3–7 bullets, grouped by project). Celebrate briefly.
- **Stuck:** to-dos that appeared in plans 3+ times without progress. For each, ask in one line: break it down, delegate, drop, or keep?
- **Quiet projects:** active projects without any change for 14+ days → ask: pause (`waiting`), finish, or archive?
- **Inbox:** list what's in `journal/inbox.md`; for each item suggest a home or "drop". Act on the user's answers.

## 3. Look ahead
Ask: "What would make next week a success?" Then propose **top 3 for next week** (one per line, project, why). Check against deadlines in project `CLAUDE.md` files.

## 4. Save
- Write `journal/week-<YYYY>-W<ww>.md` with Done, Stuck (and what was decided), Top 3 next week, one-line reflection.
- Update statuses in each project's `CLAUDE.md` and in `projects/README.md`.
- Move handled inbox items out of `journal/inbox.md`.
- Lasting learnings about how the user works (e.g. "mornings work best for writing") → `context/working-style.md`, mention it in one line.

## 5. Close
One sentence: the single most important thing for Monday morning.
