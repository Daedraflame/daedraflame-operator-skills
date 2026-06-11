# Odysseus Skill Pack Maintenance

This repository now uses a simplified structure:

- `skills/hormozi-operator-router/SKILL.md`: the single master Hormozi-style operator skill.
- `skills/daedraflame-memory/SKILL.md`: lightweight memory for Daedraflame context, past actions, experiments, and scoreboards.

There are no specialist skills. Do not recreate specialist folders. Do not create `-2` copies. Do not rename `SKILL.md`.

## Master Skill

The master router is standalone. It owns:

- Daedraflame personal creator-business context.
- Twitch horror streaming diagnosis.
- Shorts/TikTok/Reels acquisition.
- Discord/community conversion.
- Monetisation and premium offer logic.
- Dixper-style tools, chaos cards, and productisation.
- Public Hormozi-style frameworks: One Thing, Value Equation, More/Better/New, four ways to get leads, Proof > Promise, 4 Rs, maker time, content as targeting, premium posture, and one-bottleneck compression.

Use public frameworks only. Never impersonate Alex Hormozi or use private details.

## Memory Skill

The memory skill stores durable context:

- Known creator identity and operating constraints.
- Past bottlenecks and actions.
- Scoreboard history.
- Experiments and outcomes.
- Product validation decisions.

Keep memory factual and operational. Do not invent numbers.

## Import Process

Import only these two folders into Odysseus:

1. `hormozi-operator-router`
2. `daedraflame-memory`

If duplicates appear, delete the old version first, then import the corrected folder. Do not keep duplicate copies.

## Validation

Run before every commit:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\validate-skills.ps1
```

The validator expects exactly the master skill and memory skill.
