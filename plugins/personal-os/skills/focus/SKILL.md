---
name: focus
description: Focus session for one task. Picks the task (or takes the one given), cuts it into small steps of about 25 minutes, opens what's needed, works alongside the user step by step, and logs progress in today's journal. Use when the user types /focus, says "help me focus", "I'm procrastinating", "let's get this done", "I don't know where to start with X".
argument-hint: "[the task, or empty to pick from today's plan]"
---

# Focus

Reply in the user's language. Short messages, one step at a time, encouraging but not cheesy.

## 1. Pick
- Task from `$ARGUMENTS`, else the first unticked priority in today's `journal/<date>.md`, else ask "What's the one thing?"
- If the task is vague ("work on the website"), turn it into a finished state: "Done when: the About page text is written and saved."

## 2. Slice
Cut it into 3–6 steps of max ~25 minutes, each starting with a verb and ending in something visible. Show them as a checklist. Make step 1 embarrassingly easy (e.g. "open the brief and list 3 points") to get started.

## 3. Work together
- For each step: say what to do, open or create the needed file, and offer to do the parts Claude can do (draft, research, sort, calculate) while the user does the parts only they can (decide, call, approve).
- After each step: tick it, one line of progress, ask "next step or break?"
- If the user gets stuck: shrink the step further, or ask what's in the way (one question).

## 4. Close
- Log in today's journal under "Notes": task, steps done, time roughly, what's left. Tick the priority if finished.
- Remaining steps → the project's "Open to-dos".
- One line of recognition, then: "Next up: …" or "Done for now. Good work."
