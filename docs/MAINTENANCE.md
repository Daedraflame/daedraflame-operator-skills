# Odysseus Operator Skill Pack Maintenance

This repository contains one global router and ten specialist creator-business skills.

The router is `skills/hormozi-operator-router/SKILL.md`. It owns the global behaviour contract: silent routing, public-framework boundaries, One Thing focus, Value Equation diagnosis, More/Better/New acquisition logic, the four ways to get leads, Proof over Promise, 4 Rs, maker versus manager time, content as targeting, premium pricing posture, and the default response structure.

The specialist skills stay narrow:

- `creator-growth-operator`: broad creator-business diagnosis using the full public framework stack.
- `twitch-horror-growth-diagnosis`: Twitch horror specifics, reactions as proof assets, acquisition bottleneck, and retention engine.
- `offer-audience-packaging`: Value Equation, premium positioning, offer promise, titles, hooks, and packaging.
- `short-form-acquisition-system`: More/Better/New, four ways to get leads, clips, Shorts, TikTok, Reels, and content as targeting.
- `stream-retention-engine`: 4 Rs applied to live viewing, pacing, rituals, and community return loops.
- `monetisation-scoreboard`: proof, premium pricing posture, supporter conversion, revenue metrics, and offer scoreboard.
- `community-conversion-system`: 4 Rs, Discord rituals, activation, referral loops, and owned audience retention.
- `content-repurposing-machine`: story, offer, proof, CTA, VOD-to-clips workflow, and maker-time extraction.
- `weekly-operator-review`: One Thing planning, scoreboard review, constraint ranking, and next-week operating cadence.
- `creator-tool-productisation`: offer creation, chaos cards, Dixper-style tools, MVP validation, fulfilment, and leverage.

Global rules belong in the router. Specialist rules belong in the matching specialist file. Do not duplicate whole skills to solve routing problems.

Do not create `-2` copies. Do not rename skill folders without a deliberate migration. Never rename `SKILL.md`; the folder name is the skill identity and `SKILL.md` is the required entry file.

## Import Rules

Import one skill folder at a time into Odysseus.

If duplicates appear, delete the old version first, then import the corrected folder again. Do not keep multiple copies of the same skill with slightly different names.

Import the router first, then import specialists. Test the router through normal prompts; the model should never tell the user which specialist it selected.

## Validation

Run this before every commit:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\validate-skills.ps1
```

The validator checks physical frontmatter, exact `version: 1.1.0`, exact critical output contract, required section order, `# Bottleneck`, `# Need next`, code fences, malformed frontmatter, and forbidden openings at line starts.

## Testing Protocol

Use the same baseline prompt every time:

```text
Hormozi Operator: I stream horror games. My reactions are strong and the viewers who show up are engaged, but viewer count is low. Diagnose the bottleneck and give me the next measurable actions.
```

Pass criteria:

- Starts with `# Bottleneck`.
- First sentence is a single-constraint diagnosis.
- Does not open with a forbidden phrase.
- Does not list skills, tool names, or routing choices.
- Does not claim to be Alex Hormozi or use private details.
- Identifies acquisition/distribution as the likely bottleneck.
- Treats reactions as proof assets for short-form targeting.
- Gives one next measurable action, not five equal priorities.
- Includes a scoreboard.
- Puts questions only under `# Need next`.