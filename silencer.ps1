param(
    [string] $InstallerPath
)

if (!(gcm trid -ea 0)) { throw "Trid is not installed: cinst trid" }
$installers = . $PSScriptRoot\installers.ps1

$trid_id = trid -n:1 $InstallerPath | select -Last 1
$id = $trid_id.Trim() -split '\(|\)' | select -Last 1 -Skip 2
$id = $id.Trim()

Write-Host "Trid id:" $id

if (!$installers.ContainsKey($id)) { "Installer not found"; return }
$i = $installers[$id]
if ($i -is [array]) { $i[0] } else { $i }