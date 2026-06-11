$ErrorActionPreference = "Stop"

$expectedSkills = @(
    "daedraflame-memory",
    "hormozi-operator-router"
)

$failures = @()
$skillDirs = Get-ChildItem -Path "skills" -Directory | Sort-Object Name
$actual = @($skillDirs | ForEach-Object { $_.Name })

foreach ($name in $expectedSkills) {
    if ($actual -notcontains $name) {
        $failures += "missing expected skill folder: $name"
    }
}

foreach ($name in $actual) {
    if ($expectedSkills -notcontains $name) {
        $failures += "unexpected skill folder remains: $name"
    }
}

foreach ($dir in $skillDirs) {
    $folder = $dir.Name
    $file = Join-Path $dir.FullName "SKILL.md"
    if (!(Test-Path $file)) {
        $failures += "$folder missing SKILL.md"
        continue
    }

    $text = [System.IO.File]::ReadAllText($file)
    $lines = $text -split "`n"

    if ($lines.Count -gt 400) {
        $failures += "$folder has more than 400 lines"
    }
    if ($lines[0].TrimEnd("`r") -ne "---") {
        $failures += "$folder does not start with standalone ---"
    }
    if ($lines[1].TrimEnd("`r") -ne "name: $folder") {
        $failures += "$folder second line is not exact folder name"
    }

    $frontmatterClose = -1
    for ($i = 1; $i -lt [Math]::Min($lines.Count, 40); $i++) {
        if ($lines[$i].TrimEnd("`r") -eq "---") {
            $frontmatterClose = $i
            break
        }
    }
    if ($frontmatterClose -lt 2) {
        $failures += "$folder frontmatter does not close"
    }
    if ($text -match '(?m)^---[ \t]+name:') {
        $failures += "$folder has malformed one-line frontmatter"
    }
    foreach ($bad in @("@@ -", "<<<<<<<", "=======", ">>>>>>>")) {
        if ($text.Contains($bad)) {
            $failures += "$folder contains pollution marker: $bad"
        }
    }
}

$router = "skills/hormozi-operator-router/SKILL.md"
if (Test-Path $router) {
    $routerText = [System.IO.File]::ReadAllText($router)
    foreach ($needle in @(
        "version: 1.2.0",
        "Daedraflame",
        "ADHD/autistic",
        "Dixper-style",
        "Value Equation",
        "More / Better / New",
        "Proof > Promise",
        "4 Rs",
        "One Thing",
        "maker time",
        "content as targeting",
        "# Bottleneck",
        "# Economic truth",
        "# What to stop doing",
        "# Next measurable action",
        "# Scoreboard",
        "# Need next",
        "Never claim to be Alex Hormozi"
    )) {
        if ($routerText -notlike "*$needle*") {
            $failures += "router missing required text: $needle"
        }
    }
}

$memory = "skills/daedraflame-memory/SKILL.md"
if (Test-Path $memory) {
    $memoryText = [System.IO.File]::ReadAllText($memory)
    foreach ($needle in @("Scoreboard fields", "Past-action memory format", "Experiment memory format", "Daedraflame", "Twitch horror")) {
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
