<#
.SYNOPSIS
    Windows equivalent of the Makefile in this directory.

.DESCRIPTION
    This script mirrors the four rules of ./Makefile one-for-one:

        resume-cn-submit.pdf <- resume-cn.typ  (--input level=submit)
        resume-en-submit.pdf <- resume-en.typ  (--input level=submit)
        resume-cn-post.pdf   <- resume-cn.typ  (--input level=post)
        resume-en-post.pdf   <- resume-en.typ  (--input level=post)

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
    @{ Output = 'resume-cn-submit.pdf'; Source = 'resume-cn.typ'; Level = 'submit' },
    @{ Output = 'resume-en-submit.pdf'; Source = 'resume-en.typ'; Level = 'submit' },
    @{ Output = 'resume-cn-post.pdf';  Source = 'resume-cn.typ'; Level = 'post' },
    @{ Output = 'resume-en-post.pdf';  Source = 'resume-en.typ'; Level = 'post' }
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
    if (-not (Test-Path -LiteralPath 'resume-private\private_info.json')) {
        throw 'resume-private/private_info.json is missing (resume-private is a git submodule)'
    }
    foreach ($t in $Targets) {
        Write-Host "typst compile $($t.Source) $($t.Output) --input level=$($t.Level) --font-path fonts"
        & typst compile $t.Source $t.Output --input "level=$($t.Level)" --font-path fonts
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
