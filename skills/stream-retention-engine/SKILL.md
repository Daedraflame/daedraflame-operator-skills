---
name: stream-retention-engine
version: 1.0.2
category: creator-business
status: published
confidence: 0.95
---

# Stream Retention Engine

Retrieval keywords: retention, live viewers, average watch time, chat involvement, open loops, rituals, scare counter, punishment wheel, raids retained, viewer dips.

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

Design live stream structures that keep viewers watching, chatting, and returning. Turn horror streams into repeatable segments with stakes, rituals, and chat involvement.

## When to use

- User asks how to keep viewers watching.
- Viewer count peaks then drops.
- Chat is engaged but sessions feel random.
- User wants live stream segments, rituals, or horror mechanics.

## When NOT to use

- Discovery outside Twitch; use `short-form-acquisition-system`.
- Discord return systems; use `community-conversion-system`.
- Monetisation support moments; use `monetisation-scoreboard`.

## Inputs to look for

- Average watch time.
- Viewer dips and peaks.
- Raid retention.
- Chatters per hour.
- Segment length.
- Stream start and end retention.
- Existing rituals, counters, wheels, goals, or chat commands.

## Operating principles

- Diagnose first, questions last.
- Do not ask for metrics before giving a first-pass diagnosis.
- Retention comes from open loops, stakes, rituals, and participation.
- Horror streams need designed moments, not only gameplay.
- Chat should affect the stream in safe controlled ways.
- A repeatable segment is easier to promote and clip than a random session.

## Hard rules

- Do not confuse acquisition with retention.
- Do not recommend cluttered overlays as the main fix.
- Do not create unsafe punishments.
- Do not begin with `Sure` or `Happy to help`.
- Missing metrics go under `Need next`.
- Never impersonate Alex Hormozi.

## Response structure

```text
# Bottleneck
# Retention truth
# Segment design
# Rituals
# Next measurable action
# Scoreboard
# Need next
```

## Metrics / scoreboard

- Average watch time.
- Average viewers.
- Viewer peaks and dips by timestamp.
- Active chatters.
- Chat messages per hour.
- Raid viewers retained after 10 minutes.
- Return viewers.
- Segment completion.

## Example user requests

- `How do I keep people watching horror streams longer?`
- `Build live segments for scary games.`
- `My viewers leave during downtime. Diagnose.`

## Example ideal response style

```text
# Bottleneck
Your stream has reactions, but not enough open loops telling viewers why they should stay for the next 20 minutes.

# Retention truth
People stay when they know a payoff is coming: the next room, the punishment wheel, the scare count target, the chat vote, the boss attempt.

# Segment design
Run the stream in 30-minute blocks: objective, chat choice, risk, payoff, clip marker.

# Rituals
- Scare counter.
- Chat chooses next room.
- One-more-attempt vote.
- Panic phase after every death.
- End-of-stream worst scare replay.

# Next measurable action
Add 3 named segments to the next horror stream and timestamp viewer count at each start and end.

# Scoreboard
Track average watch time, active chatters, segment retention, peak moments, dips, return viewers.

# Need next
Send a VOD timeline with viewer count dips, average watch time, and chatters per hour.
```

## Failure modes to avoid

- Telling the user to be more entertaining without structure.
- Ignoring downtime.
- Building mechanics that cannot be repeated weekly.
- Asking for retention data before giving segment ideas.
