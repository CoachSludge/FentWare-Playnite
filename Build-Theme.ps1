param(
    [string]$ThemePath,
    [string]$ToolboxPath,
    [string]$OutputDir = (Join-Path $PSScriptRoot 'dist')
)
$ErrorActionPreference = 'Stop'
$repoRoot = $PSScriptRoot
if (-not $ThemePath) {
    $manifests = @(Get-ChildItem -LiteralPath $repoRoot -Filter 'theme.yaml' -Recurse -File | Where-Object {
        $_.FullName -notmatch '[\\/](\.git|dist|node_modules)[\\/]'
    })
    if ($manifests.Count -ne 1) {
        throw "Expected one theme.yaml, found $($manifests.Count). Specify -ThemePath explicitly."
    }
    $ThemePath = $manifests[0].DirectoryName
}
$manifest = Join-Path $ThemePath 'theme.yaml'
if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) { throw "Theme manifest missing: $manifest" }
if (-not $ToolboxPath) {
    $candidates = @(
        (Join-Path $env:LOCALAPPDATA 'Playnite\Toolbox.exe'),
        (Join-Path $env:PROGRAMFILES 'Playnite\Toolbox.exe'),
        (Join-Path ${env:ProgramFiles(x86)} 'Playnite\Toolbox.exe')
    )
    $ToolboxPath = $candidates | Where-Object { $_ -and (Test-Path -LiteralPath $_ -PathType Leaf) } | Select-Object -First 1
}
if (-not $ToolboxPath -or -not (Test-Path -LiteralPath $ToolboxPath -PathType Leaf)) {
    throw 'Playnite Toolbox.exe not found. Supply -ToolboxPath "C:\path\to\Playnite\Toolbox.exe".'
}
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
Write-Host "Packaging $ThemePath with $ToolboxPath"
& $ToolboxPath pack $ThemePath $OutputDir
if ($LASTEXITCODE -ne 0) { throw "Toolbox packaging failed ($LASTEXITCODE)." }
$packages = @(Get-ChildItem -LiteralPath $OutputDir -Filter '*.pthm' -File | Sort-Object LastWriteTime -Descending)
if ($packages.Count -eq 0) { throw "No .pthm package was created in $OutputDir." }
Write-Host "Package ready: $($packages[0].FullName)"
Write-Host 'Upload the .pthm file to the FentWare Site downloads folder; do not upload the source repository ZIP.'
