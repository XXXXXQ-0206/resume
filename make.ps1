<#
.SYNOPSIS
    Windows equivalent of the Makefile in this directory.

.DESCRIPTION
    Builds or cleans the resume and validates its required fonts:

        resume.pdf           <- resume-cn.typ, chicv.typ, fontawesome.typ,
                                portrait, and bundled fonts

.EXAMPLE
    ./make.ps1
    ./make.ps1 clean
#>
[CmdletBinding()]
param(
    [string]$Target = 'all'
)

$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot

$Targets = @(
    @{ Output = 'resume.pdf'; Source = 'resume-cn.typ' }
)
$RequiredFonts = @(
    'SimSun'
    'FangSong'
    'STFangsong'
    'Font Awesome 6 Free Solid'
)

function Invoke-Clean {
    foreach ($t in $Targets) {
        if (Test-Path -LiteralPath $t.Output) {
            Remove-Item -LiteralPath $t.Output -Force
            Write-Host "removed $($t.Output)"
        }
    }
}

function Invoke-Build {
    if (-not (Get-Command typst -ErrorAction SilentlyContinue)) {
        throw 'typst not found on PATH'
    }

    $availableFonts = & typst fonts --font-path fonts
    if ($LASTEXITCODE -ne 0) {
        throw 'failed to query installed fonts'
    }
    $missingFonts = @($RequiredFonts | Where-Object { $_ -notin $availableFonts })
    if ($missingFonts.Count -gt 0) {
        throw "missing required font(s): $($missingFonts -join ', ')"
    }

    foreach ($t in $Targets) {
        Write-Host "typst compile $($t.Source) $($t.Output) --font-path fonts"
        & typst compile $t.Source $t.Output --font-path fonts
        if ($LASTEXITCODE -ne 0) { throw "typst failed for $($t.Output)" }
    }
    Write-Host ''
    Write-Host 'built:'
    foreach ($t in $Targets) {
        $item = Get-Item -LiteralPath $t.Output
        Write-Host ('  {0,-24} {1,8:N1} KB' -f $item.Name, ($item.Length / 1KB))
    }
}

switch ($Target) {
    'all'   { Invoke-Build }
    'clean' { Invoke-Clean }
    default { throw "unknown target '$Target' (expected 'all' or 'clean')" }
}
