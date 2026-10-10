---
name: wrap-up
description: Ends a work session cleanly - short summary of what was done, open to-dos written into the right project, context updated via the update-context steps, loose files moved into the right folder, and an optional Git save if the workspace uses Git. Use when the user types /wrap-up, says "that's it for today", "let's finish", "save everything", "end session".
---

# Wrap up

Reply in the user's language. Keep the whole wrap-up under 15 lines.

## Steps
1. **Summary:** 3–5 bullets of what got done this session, in plain language.
2. **Tidy:** check the workspace root and `projects/` for loose files created this session. Propose where each belongs (`projects/<name>/docs/` or `outputs/`), move them after a yes. Never delete anything without asking.
3. **To-dos:** for each project touched, update "Open to-dos" in its `CLAUDE.md` (tick off what's done, add what's next) and the status in `projects/README.md` if it changed.
4. **Remember:** run the steps of the `update-context` skill for anything lasting from this session.
5. **Save (only if this folder is a Git repository):** if `git status` works here, show what changed in one line and ask "Save a snapshot?" On yes: `git add -A` and `git commit -m "<short description>"`. Push only if the user asks. If the folder is not a Git repo, skip this silently.
6. **Next time:** one sentence on where to pick up.
