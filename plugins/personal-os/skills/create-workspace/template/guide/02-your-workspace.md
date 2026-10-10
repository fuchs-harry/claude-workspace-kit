# 2 · Your workspace: folders and why

**Analogy:** An office with labelled shelves. Claude can only keep things tidy if every shelf has one job.

```
workspace/
├── CLAUDE.md        the rulebook on the wall (read every session)
├── AGENTS.md        the same rulebook for other AI tools
├── context/         a file about you: who, how, what you decided
├── projects/        one drawer per project
│   ├── README.md    the list of all drawers with status
│   ├── _template/   the empty drawer that gets copied
│   └── my-project/
│       ├── CLAUDE.md   project rulebook: goal, status, decisions, to-dos
│       ├── docs/       input: notes, research, PDFs, screenshots
│       └── outputs/    finished work you send or publish
├── examples/        a made-up project for the guided tour
├── guide/           these lessons
└── .claude/         house rules: settings, slash commands, onboarding guide, automations
```

## Why this structure works
- **Claude reads `CLAUDE.md` files automatically.** The one in the root every time. A project's `CLAUDE.md` when it works in that project. So it always knows the goal without you repeating it.
- **docs vs. outputs** keeps "stuff I collected" apart from "stuff I made". You'll find things in a month.
- **One project per folder** keeps things apart. Always open the **workspace folder** in Claude Code (not a project sub-folder): your commands, safety rules and automations live in the workspace's `.claude/` and only load from there. To focus, just name the project.

## Good habits
- Drop files for a project straight into its `docs/` folder.
- Ask Claude to file loose things: "Put this into the right project."
- Finish sessions with `/wrap-up`.

## Try it
Type `/new-project` and set up a small real project (even "Plan my holiday" works). Then open `projects/` and look at what was created.
