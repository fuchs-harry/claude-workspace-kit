---
name: start-here
description: First-time setup of the AI workspace. Interviews the user in about five minutes and fills context/about-me.md and context/working-style.md, then shows the next steps. Use when the user types /start-here, says "set up my workspace", "first time", "get started", or when context/about-me.md still contains [TO FILL].
---

# Start here: set up the workspace

The user is not a programmer and may be opening Claude Code for the first time. Be warm, brief, and concrete. Reply in the language the user writes in.

## Steps

1. **Welcome (3 sentences max).** Say what this workspace is: a folder where Claude remembers who they are and keeps every project tidy. Say this takes about five minutes and they can skip any question.

2. **Interview, one question at a time.** Wait for each answer before asking the next. Offer short examples so they don't have to think hard.
   1. "What should I call you?"
   2. "What do you do? Job, business, side projects, anything you'd like help with."
   3. "Who do you work with or for? Team, clients, partners." (optional)
   4. "What would you love to hand off to me first?" (examples: emails, research, planning, social media posts, organising notes)
   5. "Which tools do you use daily?" (examples: Gmail, Google Drive, Notion, Canva, Instagram, Excel)
   6. "Which language should I reply in? And in which language do you need finished texts?"
   7. "How should I sound? Short and direct, or more detailed?" and "Emojis: yes or no?"
   8. "When should I just do things, and when should I ask first?" (suggest default: "Do routine things, ask before anything you can't undo.")
   9. "Is there anything I should never do?"

3. **Write the answers** into `context/about-me.md` and `context/working-style.md`, replacing the `[TO FILL]` placeholders. Keep the user's own words where possible. Leave a field as `[TO FILL]` if they skipped it. Don't invent anything.

4. **Show a short summary** of what you saved (5 bullets max) and ask: "Anything wrong or missing?" Fix it if needed.

5. **Automations.** Say in one sentence: "I can switch on a few automations: I check your projects when a session starts, save what I learn automatically, and notify you when I'm waiting. Shall I?" Recommend yes. On yes, follow `.claude/skills/setup-hooks/SKILL.md` (it detects macOS, Linux or Windows by itself). On no, say they can run `/setup-hooks` any time.

6. **Next steps.** Offer exactly three options:
   - `/tour` (recommended): a 15-minute hands-on tour with an example project
   - `/new-project` to set up their first real project ("What's one thing you're working on right now?")
   - Or just ask something in plain language
   Mention `/wrap-up` for the end of a session.

## Rules
- Never ask more than one question per message.
- Don't explain technical concepts here; that's what `/onboarding-help` is for.
- If `context/about-me.md` is already filled, say so, show what's there, and ask whether they want to update it instead of starting over.
