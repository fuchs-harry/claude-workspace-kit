# 12 · Git in 5 minutes (optional) and the cheat sheet

## Git, explained without code
**Analogy:** Save points in a video game, plus a shared cloud copy.
- **Repository (repo):** a folder that remembers every saved version.
- **Commit:** a save point with a short note ("added pricing to Vienna project").
- **Push / pull:** upload your save points to GitHub / download others'.
- **Branch:** a parallel copy to try something without touching the main version. Changes come back via a **pull request (PR)** that someone reviews.

You never have to type Git commands. Say "save a snapshot", "upload", "get the latest version" and Claude does it. `/wrap-up` offers a snapshot automatically if your workspace is a Git repo.

**Do you need it?** Working alone with a normal backup: no. Working with others on the same files, or wanting a full history: yes. To start: ask Claude "Make this workspace a Git repository and explain what you did." For GitHub, install **GitHub Desktop**; it handles sign-in for you.

**Never let Claude:** force-push, reset hard, or delete branches without you understanding why. This workspace blocks the worst of these (lesson 7).

---

## Cheat sheet

### Your commands
| Type | Does |
|---|---|
| `/start-here` | Set up or update your profile |
| `/new-project` | New project folder from a few questions |
| `/onboarding-help [topic]` | These lessons |
| `/update-context` | Save what Claude learned |
| `/wrap-up` | Summary, to-dos, tidy, save |

### Built-in commands worth knowing
| Type | Does |
|---|---|
| `/help` | All commands |
| `/clear` | Fresh conversation (files stay) |
| `/compact` | Shrink a long conversation |
| `/rewind` or Esc Esc | Go back, undo file edits |
| `/memory` | See what Claude remembers |
| `/permissions` | See and change what Claude may do |
| `/model` | Pick a faster or smarter model |
| `/agents` · `/hooks` · `/mcp` · `/plugin` | Helpers · automations · connectors · plugins |
| Shift+Tab | Switch mode: ask / accept edits / plan |

### Sentences that work well
- "Plan first, don't change anything yet."
- "Which project does this belong to?"
- "Save this as a decision in the project."
- "What do you know about X, and where is it written?"
- "Explain what you just did in one sentence."
- "Undo that."

### Where things live
| Thing | Folder |
|---|---|
| Rules for everything | `CLAUDE.md` |
| You | `context/` |
| A project | `projects/<name>/` → `CLAUDE.md`, `docs/`, `outputs/` |
| Commands | `.claude/skills/` |
| Safety | `.claude/settings.json` |
| Helpers | `.claude/agents/` |
| Rules for certain files | `.claude/rules/` |

## Try it
Pick one sentence from "Sentences that work well" and use it in your next real task.
