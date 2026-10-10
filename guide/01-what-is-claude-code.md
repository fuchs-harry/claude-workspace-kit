# 1 · What Claude Code is (and isn't)

**Analogy:** Normal Claude chat is a smart person on the phone. Claude Code is the same person sitting at your desk, with access to one folder on your computer. They can open, write and organise files there, and remember what's in them.

## What it can do
- Read and write files in the folder you opened (documents, notes, spreadsheets as CSV, Markdown, code).
- Organise your work: create folders, rename, sort, summarise many files at once.
- Research on the web (it asks first), draft texts, plans, emails, and save them where they belong.
- Use connected apps (Gmail, Google Drive, Notion …) if you connect them → lesson 10.
- Run small programs for you, e.g. to convert a file. You don't need to understand them.

## What it isn't
- Not a mind reader: it only knows what's in your files and in the current chat. That's why this workspace has `context/` → lesson 3.
- Not unsupervised: it asks before risky actions → lesson 7.
- Not only for programmers. The name says "Code", but most of what you do will be words, plans and files.

## Three ways to use it
| App | Good for |
|---|---|
| Claude Desktop app, **Code** tab | Easiest. Click, no terminal. |
| Terminal (`claude`) | Same features, text only. |
| claude.ai/code in the browser | Works on GitHub projects without installing anything. |

All three read the same files in this workspace (`CLAUDE.md`, `.claude/`).

**Cowork** (the other agent mode in the Desktop app) is great for quick tasks, but it doesn't use this workspace's rulebook, commands, safety rules and automations the same way. Use the **Code** tab for this workspace. Comparison table: README, section "Claude Code vs. Cowork".

## Words you'll hear
- **Session:** one conversation. When you close it, the chat is gone, but files stay.
- **Context window:** how much Claude can keep in mind at once. Very long sessions get compressed. Start a new session for a new topic (`/clear`).
- **Prompt:** what you type.

## Try it
Ask: "List the folders in this workspace and tell me in one sentence what each is for."
