$ErrorActionPreference = "Stop"

$failures = @()
$expectedSkills = @("daedraflame-memory", "hormozi-operator-router")
$skillDirs = @(Get-ChildItem -Path "skills" -Directory | Sort-Object Name)
$actualSkills = @($skillDirs | ForEach-Object { $_.Name })

foreach ($skill in $expectedSkills) {
    if ($actualSkills -notcontains $skill) {
        $failures += "missing expected skill folder: $skill"
    }
}

foreach ($skill in $actualSkills) {
    if ($expectedSkills -notcontains $skill) {
        $failures += "unexpected skill folder: $skill"
    }
}

foreach ($dir in $skillDirs) {
    $file = Join-Path $dir.FullName "SKILL.md"
    if (!(Test-Path $file)) {
        $failures += "$($dir.Name) missing SKILL.md"
        continue
    }

    $text = [System.IO.File]::ReadAllText($file)
    $lines = $text -split "`n"

    if ($lines.Count -lt 20) {
        $failures += "$($dir.Name) appears flattened or too short"
    }
    if ($lines[0].TrimEnd("`r") -ne "---") {
        $failures += "$($dir.Name) does not start with standalone ---"
    }
    if ($lines[1].TrimEnd("`r") -ne "name: $($dir.Name)") {
        $failures += "$($dir.Name) second line does not match folder name"
    }

    $close = -1
    for ($i = 1; $i -lt [Math]::Min($lines.Count, 40); $i++) {
        if ($lines[$i].TrimEnd("`r") -eq "---") {
            $close = $i
            break
        }
    }
    if ($close -lt 2) {
        $failures += "$($dir.Name) frontmatter does not close"
    }
    if ($text -match '(?m)^---[ \t]+name:') {
        $failures += "$($dir.Name) has malformed one-line frontmatter"
    }
}

$router = "skills/hormozi-operator-router/SKILL.md"
if (Test-Path $router) {
    $routerText = [System.IO.File]::ReadAllText($router)
    foreach ($needle in @(
        'CRITICAL OUTPUT CONTRACT:',
        'FORBIDDEN PRIMARY ADVICE:',
        'DAEDRAFLAME HORROR DEFAULT:',
        'stream moment -> clipped proof asset -> short-form hook -> viewer click/follow -> Discord or next-stream return loop',
        'NEXT MEASURABLE ACTION DEFAULT:',
        'DEFAULT RESPONSE STRUCTURE:',
        'SCOREBOARD DEFAULT:',
        'STYLE:',
        '# Bottleneck',
        '# Need next',
        'No "Would you like to proceed?"',
        'No "Based on your situation"',
        'Mixer or dead platforms',
        'one bottleneck',
        'one plan',
        'one scoreboard'
    )) {
        if ($routerText -notlike "*$needle*") {
            $failures += "router missing required text: $needle"
        }
    }
}

$memory = "skills/daedraflame-memory/SKILL.md"
if (Test-Path $memory) {
    $memoryText = [System.IO.File]::ReadAllText($memory)
    foreach ($needle in @("Micheal", "Daedraflame", "Twitch", "horror", "Odysseus", "Ollama", "Codex", "GitHub")) {
        if ($memoryText -notlike "*$needle*") {
            $failures += "memory missing required text: $needle"
        }
    }
}

if ($failures.Count -gt 0) {
    "VALIDATION FAILED"
    $failures | ForEach-Object { "- $_" }
    exit 1
}

"VALIDATION PASSED"
