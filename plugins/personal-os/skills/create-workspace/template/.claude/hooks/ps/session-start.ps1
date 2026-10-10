# SessionStart hook (Windows PowerShell). Whatever this prints is added to Claude's context.
$null = [Console]::In.ReadToEnd()
$dir = if ($env:CLAUDE_PROJECT_DIR) { $env:CLAUDE_PROJECT_DIR } else { (Get-Location).Path }
$state = Join-Path $dir ".claude\state"
New-Item -ItemType Directory -Force -Path $state | Out-Null
Set-Content -Path (Join-Path $state "turns") -Value "0" -Encoding ascii
Remove-Item -Path (Join-Path $state "flag") -ErrorAction SilentlyContinue

Write-Output ("Workspace status (automatic, {0}, Windows PowerShell):" -f (Get-Date -Format "yyyy-MM-dd"))
$about = Join-Path $dir "context\about-me.md"
if ((Test-Path $about) -and (Select-String -Path $about -Pattern "\[TO FILL\]" -Quiet)) {
  Write-Output "- FIRST RUN: context/about-me.md is not filled yet. Greet the user in one or two warm sentences and offer: /start-here (5-minute setup), then /tour (15-minute guided tour with an example project)."
} else {
  $tour = Join-Path $state "tour-progress.md"
  if ((Test-Path $tour) -and -not (Select-String -Path $tour -Pattern "status: done" -Quiet)) {
    Write-Output "- The guided tour is unfinished (.claude/state/tour-progress.md). Offer to continue with /tour."
  }
  $readme = Join-Path $dir "projects\README.md"
  if (Test-Path $readme) {
    $active = Get-Content $readme | Where-Object { $_ -match "\|\s*active\s*\|" } | ForEach-Object { ($_ -split "\|")[1].Trim() }
    if ($active) { Write-Output ("- Active projects: " + ($active -join ", ")) }
  }
}
Write-Output "- Auto-context is on: a hook will occasionally ask you to run the update-context steps. Keep that quick and quiet."
exit 0
