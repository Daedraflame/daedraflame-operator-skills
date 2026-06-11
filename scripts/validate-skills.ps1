$ErrorActionPreference = "Stop"

$requiredOrder = @(
    '^# .+',
    '^Retrieval keywords:',
    '^CRITICAL OUTPUT CONTRACT:',
    '^## Purpose$',
    '^## When to use$',
    '^## When NOT to use$',
    '^## Inputs to look for$',
    '^## Operating principles$',
    '^## Hard rules$',
    '^## Response structure$',
    '^## Metrics / scoreboard$',
    '^## Example user requests$',
    '^## Example ideal response style$',
    '^## Failure modes to avoid$'
)

$failures = @()
$backtick = [string][char]96
$tripleFenceText = ($backtick * 3) + "text"
$doubleFenceText = ($backtick * 2) + "text"
$doubleFence = $backtick * 2

Get-ChildItem -Path "skills" -Directory | Sort-Object Name | ForEach-Object {
    $folder = $_.Name
    $file = Join-Path $_.FullName "SKILL.md"

    if (!(Test-Path $file)) {
        $failures += "$folder missing SKILL.md"
        return
    }

    $text = [System.IO.File]::ReadAllText($file)
    $lines = $text -split "`n"

    if ($lines.Count -le 50) {
        $failures += "$folder has $($lines.Count) physical lines; expected >50"
    }

    if ($lines[0].TrimEnd("`r") -ne "---") {
        $failures += "$folder does not start with standalone ---"
    }

    if ($lines.Count -lt 2 -or $lines[1].TrimEnd("`r") -notmatch '^name: ') {
        $failures += "$folder second line does not start with name: "
    }

    $frontmatterClose = -1
    for ($i = 1; $i -lt [Math]::Min($lines.Count, 40); $i++) {
        if ($lines[$i].TrimEnd("`r") -eq "---") {
            $frontmatterClose = $i
            break
        }
    }

    if ($frontmatterClose -lt 2) {
        $failures += "$folder frontmatter does not close with standalone ---"
    }

    if ($text -match '(?m)^---[ \t]+name:') {
        $failures += "$folder has malformed one-line frontmatter"
    }

    foreach ($needle in @("CRITICAL OUTPUT CONTRACT", "# Bottleneck", "# Need next", "Never list skills to the user", "Never output manage_skills", $tripleFenceText)) {
        if ($text -notlike "*$needle*") {
            $failures += "$folder missing required text: $needle"
        }
    }

    if ($lines | Where-Object { $_.TrimEnd("`r") -eq $doubleFenceText -or $_.TrimEnd("`r") -eq $doubleFence }) {
        $failures += "$folder contains malformed two-backtick code fence"
    }

    $positions = @()
    foreach ($pattern in $requiredOrder) {
        $matchIndex = -1
        for ($i = 0; $i -lt $lines.Count; $i++) {
            if ($lines[$i].TrimEnd("`r") -match $pattern) {
                $matchIndex = $i
                break
            }
        }
        if ($matchIndex -lt 0) {
            $failures += "$folder missing ordered section pattern: $pattern"
        }
        $positions += $matchIndex
    }

    for ($i = 1; $i -lt $positions.Count; $i++) {
        if ($positions[$i] -ge 0 -and $positions[$i - 1] -ge 0 -and $positions[$i] -le $positions[$i - 1]) {
            $failures += "$folder section order is invalid near pattern $($requiredOrder[$i])"
        }
    }
}

if ($failures.Count -gt 0) {
    "VALIDATION FAILED"
    $failures | ForEach-Object { "- $_" }
    exit 1
}

"VALIDATION PASSED"
