---
name: draft
description: Writes emails, messages, posts, captions or short texts in the user's own voice, using their working style and saved writing samples, gives 2 versions (safe and bold), and saves the chosen one to the project's outputs. Learns the voice over time in context/voice.md. Use when the user types /draft, says "write an email to…", "reply to this", "write a post about…", "make this sound like me".
argument-hint: "[what to write, e.g. 'reply to Jonas, confirm the 14th']"
---

# Draft in your voice

Reply in the user's language; write the text in the language the recipient needs.

## 1. Understand (ask only what's missing, max 2 questions)
- What, to whom, goal (what should the reader do or feel?), channel (email, WhatsApp, LinkedIn, Instagram…), length.
- If the user pasted a message to reply to, read it carefully first.
- Find the project it belongs to (`projects/README.md`) and read its `CLAUDE.md` (rules, decisions, people). Facts come from there; never invent numbers, dates or promises. Unknown facts → `[TO CONFIRM]`.

## 2. Find the voice
- Read `context/working-style.md` and `context/voice.md` (if it exists: tone notes and real examples of the user's writing).
- No samples yet? Write in a neutral, warm, direct tone and offer at the end: "Paste 2–3 texts you wrote yourself and I'll sound more like you."

## 3. Write two versions
- **A · Safe:** clear, polite, gets the job done.
- **B · Bold:** shorter, more personality, stronger hook or call to action.
- Channel rules: emails get a subject line; WhatsApp is short, no formal greeting; LinkedIn has a first line that works alone; Instagram caption ends with a question or call to action, hashtags only if the user uses them.
- No clichés ("I hope this email finds you well"), no exclamation-mark spam, no emojis unless the voice uses them.

## 4. Finish
- After the user picks or edits: save to `projects/<name>/outputs/<YYYY-MM-DD>_<short-topic>.md` (or `journal/drafts/` without a project).
- **Never send** anything. If an email connector exists, offer to create a draft there, only after a yes.
- Learn: if the user changed wording, note the pattern in `context/voice.md` → "Learned" (e.g. "uses 'Cheers' not 'Best regards'"), one line, and say so. If they pasted own texts as samples, store them under "Examples" (max 5, newest replaces oldest).
