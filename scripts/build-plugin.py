# Copies the workspace template (everything in this repo except plugins/, scripts/, .git and the marketplace)
# into plugins/personal-os/skills/create-workspace/template/, so /create-workspace can build a workspace anywhere.
# Run after changing anything in the workspace:  python scripts/build-plugin.py
import os, shutil

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DEST = os.path.join(ROOT, "plugins", "personal-os", "skills", "create-workspace", "template")
SKIP_TOP = {"plugins", "scripts", ".git", ".claude-plugin", "LICENSE"}
SKIP_ANY = {".claude/state", ".claude/settings.local.json", "CLAUDE.local.md"}

if os.path.exists(DEST):
    shutil.rmtree(DEST)
os.makedirs(DEST)

count = 0
for dirpath, dirnames, filenames in os.walk(ROOT):
    rel_dir = os.path.relpath(dirpath, ROOT).replace("\\", "/")
    if rel_dir == ".":
        dirnames[:] = [d for d in dirnames if d not in SKIP_TOP]
    dirnames[:] = [d for d in dirnames if f"{rel_dir}/{d}".lstrip("./") not in SKIP_ANY and (rel_dir + "/" + d).replace("./", "") not in SKIP_ANY]
    for f in filenames:
        rel = os.path.normpath(os.path.join(rel_dir, f)).replace("\\", "/")
        if rel in SKIP_TOP or rel in SKIP_ANY:
            continue
        target = os.path.join(DEST, rel)
        os.makedirs(os.path.dirname(target), exist_ok=True)
        shutil.copy2(os.path.join(dirpath, f), target)
        count += 1
print(f"Template: {count} files -> {os.path.relpath(DEST, ROOT)}")
