$ErrorActionPreference = "Stop"

$expectedContract = 'CRITICAL OUTPUT CONTRACT: The response must begin with "# Bottleneck". The first sentence must be a diagnosis, not a greeting. Forbidden openings: "Sure", "Okay", "Happy to help", "Let''s dive in", "Let''s move forward", "I need more information". Questions only under "# Need next" at the end. Never list skills to the user. Never say "let''s use this skill". Never output manage_skills or tool-call text. Never claim to be Alex Hormozi or use private details.'
$backtick = [string][char]96
$tripleFenceText = ($backtick * 3) + "text"
$doubleFenceText = ($backtick * 2) + "text"
$doubleFence = $backtick * 2
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
$forbiddenOpenings = @('Sure', 'Okay', 'Happy to help', "Let's dive in", "Let's move forward", 'I need more information')
$failures = @()

Get-ChildItem -Path "skills" -Directory | Sort-Object Name | ForEach-Object {
    $folder = $_.Name
    $file = Join-Path $_.FullName "SKILL.md"
    if (!(Test-Path $file)) { $failures += "$folder missing SKILL.md"; return }

    $text = [System.IO.File]::ReadAllText($file)
    $lines = $text -split "`n"

    if ($lines.Count -le 50) { $failures += "$folder has $($lines.Count) physical lines; expected >50" }
    if ($lines[0].TrimEnd("`r") -ne '---') { $failures += "$folder does not start with standalone ---" }
    if ($lines[1].TrimEnd("`r") -ne "name: $folder") { $failures += "$folder second line is not exact folder name" }
    if ($lines[3].TrimEnd("`r") -ne 'version: 1.1.0') { $failures += "$folder version is not 1.1.0" }
    if ($lines[4].TrimEnd("`r") -ne 'category: creator-business') { $failures += "$folder category mismatch" }
    if ($lines[5].TrimEnd("`r") -ne 'status: published') { $failures += "$folder status mismatch" }
    if ($lines[6].TrimEnd("`r") -ne 'confidence: 0.95') { $failures += "$folder confidence mismatch" }
    if ($lines[7].TrimEnd("`r") -ne '---') { $failures += "$folder frontmatter does not close on line 8" }
    if ($text -match '(?m)^---[ 	]+name:') { $failures += "$folder has malformed one-line frontmatter" }

    foreach ($needle in @($expectedContract, '# Bottleneck', '# Need next', 'Never list skills to the user', 'Never output manage_skills', 'Never claim to be Alex Hormozi', 'One Thing', 'Value Equation', 'More/Better/New', 'Proof over Promise', '4 Rs', $tripleFenceText)) {
        if ($text -notlike "*$needle*") { $failures += "$folder missing required text: $needle" }
    }

    if ($lines | Where-Object { $_.TrimEnd("`r") -eq $doubleFenceText -or $_.TrimEnd("`r") -eq $doubleFence }) {
        $failures += "$folder contains malformed two-backtick code fence"
    }

    foreach ($opening in $forbiddenOpenings) {
        if ($lines | Where-Object { $_.TrimStart() -eq $opening -or $_.TrimStart().StartsWith($opening + ',') -or $_.TrimStart().StartsWith($opening + '.') }) {
            $failures += "$folder contains forbidden opening as a standalone output line: $opening"
        }
    }

    $positions = @()
    foreach ($pattern in $requiredOrder) {
        $matchIndex = -1
        for ($i = 0; $i -lt $lines.Count; $i++) {
            if ($lines[$i].TrimEnd("`r") -match $pattern) { $matchIndex = $i; break }
        }
        if ($matchIndex -lt 0) { $failures += "$folder missing ordered section pattern: $pattern" }
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