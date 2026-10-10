---
name: decide
description: Decision helper for real choices. Clarifies the options and what matters, scores them honestly, plays devil's advocate, gives a clear recommendation, and logs the decision with its reasons so future-you remembers why. Use when the user types /decide, says "should I X or Y", "I can't decide", "help me choose", "is this a good idea", "pros and cons".
argument-hint: "[the decision, e.g. 'price 29 or 39 euros']"
---

# Decide

Reply in the user's language. Be direct; the user wants a recommendation, not a survey.

## 1. Frame (max 3 questions in one message)
- The options (add an obvious one they missed, e.g. "wait 2 weeks" or "do both small").
- What matters most (suggest 3–5 criteria from context: money, time, risk, energy, fit with goals in `context/about-me.md` and the project's `CLAUDE.md`).
- Deadline: when must it be decided, and how reversible is it? (Reversible + cheap → decide fast.)

## 2. Think
Show a compact table: options × criteria, each cell a short word or score 1–5, weights if the user named priorities. Then:
- **Strongest case against your favourite** (2 lines, honest).
- **What would change the answer** (the one fact worth checking, if any).
- **10/10/10:** how it feels in 10 minutes, 10 months, 10 years (one line each, only for big decisions).

## 3. Recommend
"**I'd choose X**, because …" in two sentences. Plus the first concrete step and, for risky choices, a check-in date ("look at sign-ups again on the 30th").

## 4. Log (after the user decides)
Add a dated row to the project's `CLAUDE.md` → "Decisions" (or `context/decisions.md` if it spans projects): decision, main reason, check-in date. Say in one line where it's logged.
