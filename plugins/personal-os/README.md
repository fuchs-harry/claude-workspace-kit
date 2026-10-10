# Personal OS · Claude plugin

Your personal operating system for Claude. Plain-language commands for planning, thinking, writing and learning. Works best inside the [Claude Workspace Kit](../../README.md) (it reads your `context/` and `projects/`), but every command also works on its own.

| Command | What it does |
|---|---|
| `/today` | Morning plan: your 3 priorities with time estimates, saved to `journal/` |
| `/dump` | Brain dump: pour everything out, Claude sorts it into projects, to-dos, dates and ideas |
| `/weekly-review` | 10-minute weekly review: done, stuck, quiet projects, inbox, top 3 for next week |
| `/draft` | Emails, messages and posts in your voice, two versions, learns your style |
| `/decide` | Decision helper: options, criteria, devil's advocate, clear recommendation, logged |
| `/learn` | Link, PDF or transcript → short learning note with actions, filed in the right place |
| `/focus` | One task, cut into 25-minute steps, worked through together |
| `/create-workspace` | Builds the whole AI workspace (folders, rules, onboarding, hooks) in an empty folder |

## Install

**Claude apps (Desktop, Cowork, claude.ai):** Customize → Plugins → Add marketplace → `fuchs-harry/claude-workspace-kit` → install **personal-os**. Turn on automatic updates.

**Claude Code (terminal):**
```
/plugin marketplace add fuchs-harry/claude-workspace-kit
/plugin install personal-os@claude-workspace-kit
```

## Where things are saved
| Folder | Contents |
|---|---|
| `journal/` | daily plans (`YYYY-MM-DD.md`), weekly reviews, `inbox.md`, drafts without a project |
| `library/` | learning notes not tied to a project |
| `context/voice.md` | your writing voice: tone notes and examples |
| `projects/<name>/` | to-dos, decisions and outputs per project |

Nothing is ever sent, published or deleted without your OK.
