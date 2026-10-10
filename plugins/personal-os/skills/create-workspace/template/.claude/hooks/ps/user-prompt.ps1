# UserPromptSubmit hook (Windows PowerShell): flags prompts worth remembering for the Stop hook.
$inputText = [Console]::In.ReadToEnd()
$dir = if ($env:CLAUDE_PROJECT_DIR) { $env:CLAUDE_PROJECT_DIR } else { (Get-Location).Path }
$state = Join-Path $dir ".claude\state"
New-Item -ItemType Directory -Force -Path $state | Out-Null
$pattern = 'remember|merk dir|merke dir|keep in mind|from now on|ab jetzt|ab sofort|we decided|wir haben entschieden|entschieden|decided|decision|entscheidung|i prefer|ich bevorzuge|lieber|always |immer |never |niemals|nie wieder|my name is|ich heiße|new client|neuer kunde|neue kundin|deadline'
if ($inputText -match "(?i)$pattern") {
  New-Item -ItemType File -Force -Path (Join-Path $state "flag") | Out-Null
}
exit 0
