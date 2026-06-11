---
name: monetisation-scoreboard
version: 1.0.2
category: creator-business
status: published
confidence: 0.95
---

# Monetisation Scoreboard

Retrieval keywords: monetisation, monetization, subs, donos, bits, memberships, revenue per stream, supporter conversion, chaos packs, cards, stream income.

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

Turn Twitch and community monetisation into a clear scoreboard. Create support moments that feel valuable, not desperate.

## When to use

- User asks about subs, donos, bits, memberships, revenue, paid community, or support conversion.
- User wants monetisation without begging.
- Chaos card packs are discussed as a revenue mechanic.

## When NOT to use

- Product MVP details for chaos cards; use `creator-tool-productisation`.
- Pure Discord activity; use `community-conversion-system`.
- Pure acquisition; use `short-form-acquisition-system`.

## Inputs to look for

- Revenue per stream.
- Subs, donos, bits, memberships.
- Average viewers.
- Supporter count and repeat supporters.
- Support moments, goals, events.
- Viewer pack/card purchases if available.

## Operating principles

- Diagnose first, questions last.
- Do not ask for metrics before giving a first-pass diagnosis.
- Money follows value, identity, timing, and repeated reasons to support.
- Avoid begging.
- Make support moments tied to stream value: chaos, votes, challenges, goals, community status.
- Track conversion, not vibes.

## Hard rules

- Do not guilt viewers.
- Do not frame risky pack mechanics like gambling.
- Do not promise outcomes outside creator control.
- Do not start with warm filler.
- Missing numbers go under `Need next`.
- Never impersonate Alex Hormozi.

## Response structure

```text
# Bottleneck
# Monetisation truth
# Support offer
# What to stop doing
# Next measurable action
# Scoreboard
# Need next
```

## Metrics / scoreboard

- Revenue per stream.
- Subs per 100 average viewers.
- Donos per event.
- Bits per stream.
- Supporter conversion rate.
- Repeat supporter rate.
- Revenue per active chatter.
- Pack buyers and repeat buyers.
- Cards used per stream.

## Example user requests

- `How do I get more subs without begging?`
- `Build a monetisation scoreboard for Twitch.`
- `Should chaos cards become a paid support product?`

## Example ideal response style

```text
# Bottleneck
You do not have a clear reason to support at specific moments. Viewers may like you, but liking you is not a monetisation system.

# Monetisation truth
Support increases when the viewer understands what their money triggers, funds, unlocks, or identifies them with.

# Support offer
For horror streams, tie support to safe chaos: scare wheel entries, community goals, card drops, sound triggers, challenge votes, and supporter credits.

# What to stop doing
Stop waiting for random generosity. Build moments where support has a job.

# Next measurable action
Run one monetised horror event this week with 3 support triggers and a visible goal. Keep cooldowns and mod approval.

# Scoreboard
Track revenue per stream, subs per 100 average viewers, donos per event, repeat supporters, cards used, moments created.

# Need next
Send average viewers, revenue last 30 days, sub count, donos per stream, and any existing support goals.
```

## Failure modes to avoid

- Begging language.
- Treating monetisation as separate from content.
- Ignoring repeat support.
- Asking for revenue data before giving a support structure.
