$SRC = '/mnt/c/Users/pengliu/Downloads/'
$DST = 'pengliu@pengliu-desktop.client.nvidia.com:/home/pengliu/mp/p4/Downloads/'
$LOG = "$env:TEMP\sync_downloads.log"

function Send-Notification($title, $message) {
    $t = [System.Security.SecurityElement]::Escape($title)
    $m = [System.Security.SecurityElement]::Escape($message)
    $cmd = @"
[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] | Out-Null
[Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom, ContentType = WindowsRuntime] | Out-Null
`$xml = New-Object Windows.Data.Xml.Dom.XmlDocument
`$xml.LoadXml('<toast><visual><binding template="ToastGeneric"><text>$t</text><text>$m</text></binding></visual></toast>')
`$toast = [Windows.UI.Notifications.ToastNotification]::new(`$xml)
`$appId = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe'
[Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier(`$appId).Show(`$toast)
"@
    $psi = New-Object System.Diagnostics.ProcessStartInfo 'powershell.exe'
    $psi.Arguments = "-ExecutionPolicy Bypass -Command $cmd"
    $psi.CreateNoWindow = $true
    $psi.UseShellExecute = $false
    [System.Diagnostics.Process]::Start($psi) | Out-Null
}

function Invoke-Sync {
    while ($true) {
        $ts = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
        $tmpLog = "$env:TEMP\sync_downloads_tmp.txt"
        $proc = Start-Process wsl -ArgumentList @('rsync', '-az', '--delete', '--itemize-changes', $SRC, $DST) `
            -WindowStyle Hidden -Wait -PassThru -RedirectStandardOutput $tmpLog -RedirectStandardError "$tmpLog.err"
        $output = (Get-Content $tmpLog -ErrorAction SilentlyContinue) +
                  (Get-Content "$tmpLog.err" -ErrorAction SilentlyContinue)
        $global:LASTEXITCODE = $proc.ExitCode
        $output | Add-Content $LOG
        if ($LASTEXITCODE -eq 0) {
            $count = ($output | Where-Object { $_ -match '^[<>ch]' }).Count
            Add-Content $LOG "$ts sync ok ($count files transferred)"
            if ($count -gt 0) {
                Send-Notification "Downloads Synced" "$count file(s) synced to pengliu-desktop"
            }
            return
        }
        Add-Content $LOG "$ts destination unreachable, retrying in 60s..."
        Send-Notification "Sync Failed" "pengliu-desktop unreachable, retrying in 60s..."
        Start-Sleep -Seconds 60
    }
}

$watcher = New-Object System.IO.FileSystemWatcher 'C:\Users\pengliu\Downloads'
$watcher.IncludeSubdirectories = $true

while ($true) {
    $watcher.WaitForChanged('All') | Out-Null
    do {
        $result = $watcher.WaitForChanged('All', 2000)
    } while (-not $result.TimedOut)
    Send-Notification "Downloads Changed" "Syncing to pengliu-desktop..."
    Invoke-Sync
}
