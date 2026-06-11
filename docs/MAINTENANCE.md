# Odysseus Skill Pack Maintenance

This repository contains one global router skill and ten specialist creator-business skills.

The router is `skills/hormozi-operator-router/SKILL.md`. It owns the global behaviour contract: silent routing, no skill-listing, no tool-call text, no greetings, diagnosis first, questions only under `# Need next`, and the default operator response structure.

The specialist skills stay narrow:

- `creator-growth-operator` covers broad creator-business diagnosis.
- `twitch-horror-growth-diagnosis` covers Twitch horror growth, low viewers, engaged chat, and reaction-led acquisition.
- `offer-audience-packaging` covers offer, audience, titles, positioning, and why people watch.
- `short-form-acquisition-system` covers TikTok, Shorts, Reels, clips, hooks, and discovery.
- `stream-retention-engine` covers live viewer retention and stream structure.
- `monetisation-scoreboard` covers subs, donos, revenue, supporter conversion, and monetisation metrics.
- `community-conversion-system` covers Discord, regulars, community activation, and owned audience conversion.
- `content-repurposing-machine` covers VOD-to-clips workflow and asset extraction.
- `weekly-operator-review` covers weekly scoreboards, constraint review, and next-week operating plans.
- `creator-tool-productisation` covers chaos cards, Dixper-style products, creator tools, MVPs, and validation.

Global rules belong in the router. Specialist rules belong in the matching specialist file. Do not duplicate whole skills to solve routing problems.

Do not create `-2` copies. Do not rename a skill folder casually. Never rename `SKILL.md`; the folder name is the skill identity and `SKILL.md` is the required entry file.

## Import Process

Import one skill folder at a time into Odysseus.

If duplicates appear, delete the old version first, then import the corrected folder again. Do not keep multiple copies of the same skill with slightly different names.

After import, test the router first, then test the most relevant specialist skill behaviour through normal user prompts. The model should not tell the user which skill it selected.

## Testing Protocol

Use the same baseline prompt every time:

```text
Hormozi Operator: I stream horror games. My reactions are strong and the viewers who show up are engaged, but viewer count is low. Diagnose the bottleneck and give me the next measurable actions.
```

Pass criteria:

- The answer starts with `# Bottleneck`.
- The first sentence is a diagnosis, not a greeting.
- It does not open with `Sure`, `Okay`, `Happy to help`, `Let's dive in`, `Let's move forward`, or `I need more information`.
- It does not list skills or mention internal routing.
- It identifies acquisition or distribution as the likely bottleneck.
- It turns reactions into short-form assets.
- It gives a one-week plan.
- It includes a scoreboard.
- Any questions appear only under `# Need next`.

Run `scripts/validate-skills.ps1` before committing changes.
