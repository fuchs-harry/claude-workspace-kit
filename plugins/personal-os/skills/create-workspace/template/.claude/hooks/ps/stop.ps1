# Stop hook (Windows PowerShell): automatic /update-context every N answers or after a "remember this" moment.
$inputText = [Console]::In.ReadToEnd()
try { $data = $inputText | ConvertFrom-Json } catch { $data = $null }
if ($data -and $data.stop_hook_active) { exit 0 }   # already continuing because of this hook: no loop

$dir = if ($env:CLAUDE_PROJECT_DIR) { $env:CLAUDE_PROJECT_DIR } else { (Get-Location).Path }
$state = Join-Path $dir ".claude\state"
New-Item -ItemType Directory -Force -Path $state | Out-Null
$turnsFile = Join-Path $state "turns"
$flagFile = Join-Path $state "flag"
$n = 0
if (Test-Path $turnsFile) { [int]::TryParse((Get-Content $turnsFile -Raw).Trim(), [ref]$n) | Out-Null }
$n = $n + 1
$every = 8
if ($env:CLAUDE_CONTEXT_EVERY) { [int]::TryParse($env:CLAUDE_CONTEXT_EVERY, [ref]$every) | Out-Null }

if ((Test-Path $flagFile) -or ($n -ge $every)) {
  Set-Content -Path $turnsFile -Value "0" -Encoding ascii
  Remove-Item -Path $flagFile -ErrorAction SilentlyContinue
  Write-Output '{"decision":"block","reason":"Automatic context check (workspace hook). Follow the steps in .claude/skills/update-context/SKILL.md for this session so far: save only lasting facts, preferences, project decisions or status changes. Ask only the required confirmation before changing the master CLAUDE.md. If nothing is worth saving, reply with exactly: (context up to date). Otherwise list what you saved, one short line each."}'
  exit 0
}
Set-Content -Path $turnsFile -Value "$n" -Encoding ascii
exit 0
