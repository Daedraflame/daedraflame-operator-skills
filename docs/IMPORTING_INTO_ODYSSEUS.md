# Importing Into Odysseus

## GitHub Import

1. Push this repo to GitHub.
2. Open Odysseus.
3. Go to `Brain`.
4. Go to `Add`.
5. Use `Add Skill` or `Import URL`.
6. Paste the GitHub folder URL for a skill folder.
   Example: `https://github.com/YOUR_USERNAME/daedraflame-operator-skills/tree/main/skills/twitch-horror-growth-diagnosis`
7. Import each skill separately if Odysseus does not support importing the whole repo.
8. Verify it appears in `Skills`.
9. Test with a trigger prompt.
10. Watch for the recalled indicator in chat.

## Recommended Import Order

1. `creator-growth-operator`
2. `twitch-horror-growth-diagnosis`
3. `offer-audience-packaging`
4. `short-form-acquisition-system`
5. `stream-retention-engine`
6. `monetisation-scoreboard`
7. `community-conversion-system`
8. `content-repurposing-machine`
9. `weekly-operator-review`
10. `creator-tool-productisation`

## Fallback

If import URL fails, open the relevant `SKILL.md`, copy the contents, and paste it manually into Odysseus Add Skill fields.

If the skill is too long for your model or Odysseus import, split it into smaller skills by section. Keep the hard rules, response structure, metrics, and failure modes in every split.

If the model still acts soft, strengthen the hard rules and add more direct language:

- `Do not ask for metrics before giving a first-pass diagnosis.`
- `Do not begin with Sure, Happy to help, Great question, or I need more context.`
- `Start with Bottleneck.`
- `Questions go only under Need next at the end.`

## Trigger Test

Run:

```text
Hormozi Operator: I stream horror games. My reactions are strong and the viewers who show up are engaged, but viewer count is low. Diagnose the bottleneck and give me the next measurable actions.
```

Expected recalled skills:

- `creator-growth-operator`
- `twitch-horror-growth-diagnosis`
- possibly `short-form-acquisition-system`

