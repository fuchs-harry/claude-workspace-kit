---
name: draft
description: Writes emails, messages, posts, captions or short texts that sound authentically like the user, using their voice profile (context/voice.json), gives 2 versions (safe and bold), saves the chosen one to the project's outputs, and lets the voice-keeper agent learn from the user's edits. Use when the user types /draft, says "write an email to…", "reply to this", "write a post about…", "make this sound like me".
argument-hint: "[what to write, e.g. 'reply to Jonas, confirm the 14th']"
---

# Draft in your voice

Reply in the user's language; write the text in the language the recipient needs.

## 1. Understand (ask only what's missing, max 2 questions)
- What, to whom, goal (what should the reader do or feel?), channel (email, WhatsApp, LinkedIn, Instagram…), length.
- If the user pasted a message to reply to, read it carefully first.
- Find the project it belongs to (`projects/README.md`) and read its `CLAUDE.md` (rules, decisions, people). Facts come from there; never invent numbers, dates or promises. Unknown facts → `[TO CONFIRM]`.

## 2. Load the voice
- Read `context/voice.json`. Use, in this order of priority: the channel-specific notes, `do` / `dont`, openers and closers for that channel, signature words and phrases (sparingly, max 1–2 per text, never forced), sentence length and punctuation, emoji habits, the register for this audience (du/Sie, formal/informal), and the `examples` as the main reference for rhythm.
- Also read `context/working-style.md` for general preferences.
- If `_meta.confidence` is `none` or `low`: write in a neutral, warm, direct tone and say once at the end: "This is a generic voice so far. `/voice train` with 3 of your own texts makes it sound like you."

## 3. Write two versions
- **A · Safe:** clear, polite, gets the job done, in their voice.
- **B · Bold:** shorter, more personality, stronger hook or call to action, still in their voice.
- Channel basics: emails get a subject line; messages are short without formal greeting (unless the voice says otherwise); LinkedIn has a first line that works alone; Instagram captions end with a question or call to action, hashtags only if the profile says they use them.
- Anti-AI check before showing: no clichés ("I hope this email finds you well", "dive into", "game-changer", "in today's fast-paced world"), no em-dash chains, no exclamation-mark spam, no emojis unless the voice uses them, no words from `vocabulary.never_uses`. Read it once as the user: would they actually send this?

## 4. Finish and learn
- After the user picks or edits: save to `projects/<name>/outputs/<YYYY-MM-DD>_<short-topic>.md` (or `journal/drafts/` without a project).
- **Never send** anything. If an email connector exists, offer to create a draft there, only after a yes.
- **Learn:** if the user changed the wording (or tells you what they finally sent), hand the original draft and their final version to the **voice-keeper** agent as an edit pair. Relay its result in one line ("Noted: you open client emails with 'Hi [Name],' and cut the last sentence."). If they approved without changes, don't train on it.
