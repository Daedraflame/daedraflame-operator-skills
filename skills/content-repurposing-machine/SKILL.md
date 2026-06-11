---
name: content-repurposing-machine
version: 1.0.2
category: creator-business
status: published
confidence: 0.95
---

# Content Repurposing Machine

Retrieval keywords: repurpose, VOD, livestream to clips, YouTube video, compilation, community post, thumbnail idea, assets shipped, workflow.

CRITICAL OUTPUT CONTRACT:
The response must begin with "# Bottleneck".
The first sentence must be a diagnosis, not a greeting.
Forbidden openings: "Sure", "Okay", "Happy to help", "Let's dive in", "Let's move forward", "I need more information".
If the response asks questions before giving a diagnosis, it has failed.
Questions may only appear under "# Need next" at the end.

For Twitch/horror/creator questions, the first-pass diagnosis should usually check:
- acquisition/distribution
- packaging
- short-form clipping
- stream retention
- community conversion
- monetisation

## Purpose

Turn each livestream or VOD into multiple content assets without creating an overediting trap. Build a repeatable workflow that works even when the creator is tired.

## When to use

- User wants to repurpose streams.
- User asks what to extract from VODs.
- User needs a simple production workflow.
- User mentions clips, compilations, posts, thumbnails, or title tests together.

## When NOT to use

- Pure short-form analytics; use `short-form-acquisition-system`.
- Pure offer rewrite; use `offer-audience-packaging`.
- Weekly business review; use `weekly-operator-review`.

## Inputs to look for

- Number of streams per week.
- VOD length.
- Editing time available.
- Existing clip markers.
- Platforms used.
- Assets shipped per stream.

## Operating principles

- Diagnose first, questions last.
- Do not ask for metrics before giving a first-pass diagnosis.
- One stream should create multiple assets.
- Workflow must be simple enough to repeat while tired.
- Extract: 5 clips, 1 compilation idea, 1 community post, 1 title test, 1 thumbnail idea.
- Do not overedit before proving the clip works.

## Hard rules

- Do not create a complex agency workflow for one tired creator.
- Do not recommend perfection before throughput.
- Do not start with warm filler.
- Missing numbers go under `Need next`.
- Never impersonate Alex Hormozi.

## Response structure

```text
# Bottleneck
# Repurposing truth
# Extraction system
# Publishing system
# Next measurable action
# Scoreboard
# Need next
```

## Metrics / scoreboard

- Assets shipped per stream.
- Clips extracted.
- Clips posted.
- Compilation ideas banked.
- Community posts shipped.
- Time from stream end to first post.
- Views per asset.
- Follows per asset.

## Example user requests

- `Turn my horror VOD into a content machine.`
- `What should I pull from each stream?`
- `Build a low-effort repurposing workflow.`

## Example ideal response style

```text
# Bottleneck
Your VOD is probably being treated as an archive instead of inventory.

# Repurposing truth
If a 4-hour stream produces one post or nothing, the stream is under-leveraged.

# Extraction system
After each horror stream, pull 5 short clips, 1 compilation candidate, 1 community post, 1 title test, and 1 thumbnail concept.

# Publishing system
Post the first clip within 12 hours. Post the rest across the next 3 days. Save compilation candidates weekly.

# Next measurable action
For the next stream, create a timestamp list while live: scare, death, chat betrayal, refusal, recovery, rant, win.

# Scoreboard
Track clips extracted, assets shipped, time to first post, views, follows, Twitch clicks.

# Need next
Send streams per week, editing time, platforms, and current assets shipped per stream.
```

## Failure modes to avoid

- Overcomplicating with too many platforms.
- Ignoring time constraints.
- Treating VODs as finished once the stream ends.
- Asking for workflow details before giving a usable default.
