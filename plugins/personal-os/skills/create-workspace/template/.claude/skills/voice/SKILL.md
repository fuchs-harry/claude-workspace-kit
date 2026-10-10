---
name: voice
description: Trains and checks the user's writing voice so generated texts sound authentically like them. "train" collects the user's own texts (pasted, files, or sent emails via a connector) and hands them to the voice-keeper agent; "show" explains the current voice profile in plain words; "test" writes a short sample in their voice and learns from their feedback. Use when the user types /voice, says "learn how I write", "make texts sound like me", "this doesn't sound like me", "train my voice", "what's my writing style".
argument-hint: "[train | show | test]  (empty = menu)"
---

# Voice

The voice profile lives in `context/voice.json` and is maintained by the **voice-keeper** agent (`.claude/agents/voice-keeper.md`). Reply in the user's language. Explain in one sentence why this matters: "The more real texts of yours I see, the less my drafts sound like AI and the more they sound like you."

If `$ARGUMENTS` is empty, show the three options with one line each and the current confidence from `_meta.confidence`.

## train
1. Ask for 3–10 texts the user **wrote themselves**, ideally from different channels (an email to a client, a WhatsApp to a friend, a LinkedIn/Instagram post). Ways to share:
   - paste them here (one after another, say "done" at the end),
   - point to files or a folder,
   - if an email connector (Gmail/Outlook) is available: offer to read their last 10–20 **sent** emails, only after an explicit yes, and only the parts they wrote (skip quoted replies).
2. Say: "I'll remove names and contact details of other people before saving anything."
3. Hand all samples to the **voice-keeper** agent (as a subagent) with the instruction to update `context/voice.json`.
4. Relay its report in plain words (what it noticed, confidence, what sample would help next).

## show
Read `context/voice.json` and describe the voice like a friend would, in max 8 bullets: tone, sentence style, favourite words and phrases, how they open and close per channel, emojis, things they never do. Show 1–2 stored examples. Ask: "Anything wrong?" → corrections go to the voice-keeper as direct feedback.

## test
1. Ask for a small real scenario (or suggest one from an active project): e.g. "Reply to a client who asks for a discount."
2. Write it in their voice using `context/voice.json` (and project facts from the project's `CLAUDE.md`).
3. Ask them to rate it 1–5 and fix anything that doesn't sound like them.
4. Hand draft + their fixed version + rating to the voice-keeper. Report what was learned in 1–3 lines.

## Rules
- Only texts the user wrote or edited count. Claude's own drafts never train the voice unless the user changed them.
- Never send or post anything.
- If the profile has `confidence: none`, `/draft` still works, but suggest `/voice train` once.
