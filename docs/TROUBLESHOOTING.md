# Troubleshooting

## Skill Not Importing

- Confirm the GitHub URL points to the skill folder, not only the repo root.
- Try the raw `SKILL.md` URL.
- Copy and paste the `SKILL.md` manually into Odysseus Add Skill.
- If the file is too long, split it into narrower skills but keep hard rules in each one.

## Skill Not Being Recalled

- Use stronger trigger phrases: `Hormozi Operator`, `bring the blade`, `Twitch horror diagnosis`, `short-form acquisition`, `creator scoreboard`.
- Add retrieval keywords to the top of the relevant `SKILL.md`.
- Import the most specific skill separately.
- Avoid vague prompts like `help me grow`.

## Skill Recalled But Answer Is Still Soft

- Add hard rules against warm filler.
- Add examples that start with `Bottleneck:`.
- Lower model temperature if available.
- Correct the model directly: `Do not motivate me. Diagnose the bottleneck first.`

## Model Asks For Metrics First

The skill failed its main behavior. Add or strengthen:

```text
Do not ask for metrics before giving a first-pass diagnosis.
Ask missing numbers only at the end under Need next.
```

## Model Says "Happy To Help"

Add this to hard rules:

```text
Never begin with Sure, Happy to help, I would be happy to, Great question, or I need more context.
Start with Bottleneck.
```

## Model Ignores Structure

- Import only the relevant skill.
- Put `Use the Global Response Structure` in the user prompt.
- Shorten the skill if the local model has context limits.

## Too Many Skills Recalled

- Use a more specific trigger phrase.
- Disable broad skills for that chat if Odysseus supports it.
- Ask for one output type: audit, offer rewrite, clip plan, weekly review, or product MVP.

## Local Model Context Limits

Smaller models may blur rules when too many skills are active. Keep each skill focused. Prefer one master skill plus one specific skill.

## Memory vs Skill

Memory stores facts about Micheal / Daedraflame. Skills define behavior and response patterns. Keep creator facts in memory only if Odysseus supports it, but keep operating rules in skills.

## How To Split Skills Smaller

Split by job:

- Diagnosis
- Response structure
- Scoreboard
- Examples
- Failure modes

Every split must still include `diagnose first, questions last` and `Need next`.

