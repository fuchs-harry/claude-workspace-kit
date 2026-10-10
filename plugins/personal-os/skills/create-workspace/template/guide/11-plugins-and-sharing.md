# 11 · Plugins and sharing your setup

**Analogy:** An app store for Claude, plus the ability to pack your own skills into a box and hand it to a colleague.

## What a plugin is
A bundle of skills, subagents, hooks and connectors, installed in one go. Example: a "marketing" plugin with a copywriting skill, a proofreader helper and a social-media connector.

## Getting plugins
- **Claude apps:** claude.ai → Customize → Plugins. Browse, or "Add marketplace" with a GitHub address (`owner/repo`) someone gives you. Turn on automatic updates.
- **Claude Code:** type `/plugin` to browse and install.
- Plugins can be large. Install what you'll actually use; each one adds things Claude has to keep in mind.

## Sharing your own setup
Three levels, from simple to advanced:
1. **Share the folder.** Copy this workspace (without your `context/` and `projects/`) to a colleague. Their Claude gets the same rules and commands.
2. **Share via GitHub.** Put the workspace in a private GitHub repository; teammates clone it and stay in sync (lesson 12).
3. **Make a plugin.** Pack your skills into a plugin so others can install and update them from the Claude apps. Ask Claude: "Turn my skills into a plugin and explain how others install it."

## Important difference
Some Claude surfaces (for example Cowork in the desktop app) load skills only from installed plugins, not from the `.claude/` folder of the workspace. If your commands don't show up there, use the **Code** tab, or install your skills as a plugin.

## Try it
Type `/plugin` (or open Customize → Plugins in the app) and look around. Don't install anything yet; just find one plugin that would save you time.
