$ErrorActionPreference = 'Stop'
$manifest = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'manifest.json') -Raw | ConvertFrom-Json
if ($manifest.apk.name -notmatch '^FOSOnline-Research-[A-Za-z0-9.\-]+\.apk$') { throw 'Unexpected APK filename' }
$target = Join-Path $PSScriptRoot $manifest.apk.name
if (Test-Path -LiteralPath $target) { throw 'APK already exists; keep or move it before joining parts' }
$output = [System.IO.File]::Create($target)
try {
    foreach ($part in $manifest.parts) {
        if ($part.name -notmatch '^FOSOnline-Research-[A-Za-z0-9.\-]+\.apk\.part[0-9]{2}$') { throw 'Unexpected part filename' }
        $path = Join-Path $PSScriptRoot $part.name
        if ((Get-Item -LiteralPath $path).Length -ne $part.bytes) { throw 'Part length mismatch' }
        if ((Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant() -ne $part.sha256) { throw 'Part digest mismatch' }
        $input = [System.IO.File]::OpenRead($path)
        try { $input.CopyTo($output) } finally { $input.Dispose() }
    }
} finally { $output.Dispose() }
if ((Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant() -ne $manifest.apk.sha256) { throw 'APK digest mismatch; do not install' }
Write-Output ('Verified APK: ' + $target)
