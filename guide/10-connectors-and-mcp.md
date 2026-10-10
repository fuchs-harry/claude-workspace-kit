# 10 · Connectors and MCP (Gmail, Drive, Notion …)

**Analogy:** Adapters. Claude speaks "files" natively; a connector is the plug that lets it talk to Gmail, Google Calendar, Notion, Canva, Slack and so on.

## What MCP is
MCP (Model Context Protocol) is the standard these plugs use. A **connector** or **MCP server** gives Claude new tools, e.g. "search my emails", "create a calendar event", "read a Notion page".

## How to connect
- **Easiest:** on claude.ai → Settings → Connectors, connect the apps you use. They then show up in the Claude apps, often including Claude Code.
- **In Claude Code:** type `/mcp` to see connected servers and their status. Adding new ones by hand involves a command or a config file; ask Claude to walk you through it for a specific app.

## Safety with connectors
- A connector acts **as you**. If it can send emails, Claude can send emails in your name. Claude will ask before sending, but think about which connectors really need write access.
- Content from outside (emails, web pages, shared docs) can contain hidden instructions. Claude treats them as data, not commands. Still: don't let it act on an email from a stranger without reading it yourself.
- Disconnect what you don't use.

## Good first connectors for non-coders
Google Drive (read your docs), Gmail (drafts), Google Calendar (plan your week), Notion (notes). Start read-only where possible.

## Try it
Type `/mcp` and see what's connected. If nothing is: decide on one app you'd love Claude to read from, and ask Claude how to connect it on your plan.
