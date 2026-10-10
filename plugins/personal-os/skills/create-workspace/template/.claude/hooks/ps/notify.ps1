# Notification hook (Windows PowerShell): short beep when Claude is waiting for you.
$null = [Console]::In.ReadToEnd()
try { [console]::beep(880, 250) } catch {}
exit 0
