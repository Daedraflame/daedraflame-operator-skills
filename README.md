# Daedraflame Operator Skills

Odysseus skill pack for making a local model act like a blunt creator-business operator for Micheal / Daedraflame.

This is built for Twitch-first creator growth with strong emphasis on horror streams, real fear reactions, short-form acquisition, community conversion, monetisation, and repeatable creator systems. It is inspired by public business-operator frameworks, but it does not impersonate Alex Hormozi and must never claim his identity, authority, businesses, wealth, or life experience.

## Who This Is For

Use this pack when the creator needs direct commercial diagnosis instead of soft assistant filler. It treats streaming as a business system:

- Offer: why someone should care now.
- Audience: who the content is built for.
- Acquisition: how strangers discover Daedraflame.
- Retention: why viewers stay live and return.
- Monetisation: why supporters pay without begging.
- Fulfilment: how the stream delivers the promised payoff.
- Scoreboard: what numbers prove progress.
- Constraints: what is actually blocking growth.

## Import Into Odysseus

1. Push this repo to GitHub.
2. Open Odysseus.
3. Go to `Brain`.
4. Go to `Add`.
5. Choose `Add Skill` or `Import URL`.
6. Paste the GitHub folder URL for one skill, for example:
   `https://github.com/YOUR_USERNAME/daedraflame-operator-skills/tree/main/skills/creator-growth-operator`
7. Import each skill separately if Odysseus does not support whole-repo import.
8. Verify the skills appear in Brain / Skills.
9. Start a chat and use a trigger prompt.
10. Watch for the skill recalled indicator.

More detail is in [docs/IMPORTING_INTO_ODYSSEUS.md](docs/IMPORTING_INTO_ODYSSEUS.md).

## How To Use In Chat

Start with a hard trigger phrase plus the business problem:

- `Hormozi Operator: diagnose my Twitch growth plateau.`
- `Bring the blade: my horror streams get good reactions but low viewers.`
- `Creator growth operator: rewrite this stream offer.`
- `Twitch horror diagnosis: what is my bottleneck?`
- `Short-form acquisition system: turn this VOD into clips.`
- `Weekly operator review: here are my numbers.`
- `Chaos card productisation: build the MVP plan.`

The assistant should diagnose first, give concrete action, provide a scoreboard, and ask for missing numbers only at the end under `Need next`.

## Recommended Model Usage

Use the strongest local model available for strategy and critique. Smaller models can work, but they may need:

- Shorter skill files imported one at a time.
- Stronger trigger phrases.
- Repeated hard rules in the user prompt.
- Lower temperature.
- A direct correction when they ask for context before diagnosing.

## Known Limits With Smaller Local Models

Some local models may:

- Start with `Sure` or `Happy to help`.
- Ask for metrics before giving a first-pass diagnosis.
- Drift into motivational coaching.
- Over-recall multiple skills and mix structures.
- Forget the final `Need next` section.

Fix this by strengthening the skill hard rules, splitting long skills, and using the test prompts in [docs/TEST_PROMPTS.md](docs/TEST_PROMPTS.md).

## Test Recall

First test prompt:

```text
Hormozi Operator: I stream horror games. My reactions are strong and the viewers who show up are engaged, but viewer count is low. Diagnose the bottleneck and give me the next measurable actions.
```

Pass if the answer starts with diagnosis, does not ask for numbers first, identifies acquisition/distribution as the likely bottleneck, turns horror reactions into short-form assets, gives a one-week action plan, gives a scoreboard, and asks for missing metrics only at the end.

## Editing Skills

Each skill is a folder with a `SKILL.md`. Edit the skill that owns the problem instead of bloating the master skill. Keep the structure explicit because local models need hard rails.

When improving a skill:

- Add retrieval keywords near the top.
- Strengthen hard rules.
- Add examples of bad behavior to avoid.
- Keep `diagnose first, questions last`.
- Keep `Need next` as the final section.

