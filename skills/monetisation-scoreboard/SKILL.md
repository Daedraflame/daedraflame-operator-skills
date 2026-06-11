---
name: monetisation-scoreboard
description: Creator monetisation, Twitch subs, donations, bits, memberships, sponsorship readiness, revenue per stream, supporter conversion, and monetisation scoreboard design.
version: 1.0.3
category: creator-business
status: published
confidence: 0.95
---

# Monetisation Scoreboard

Retrieval keywords: monetisation, Twitch subs, donos, bits, memberships, revenue, supporter conversion, sponsorship, scoreboard, creator income

CRITICAL OUTPUT CONTRACT: The response must begin with "# Bottleneck". The first sentence must be a diagnosis, not a greeting. Forbidden openings: "Sure", "Okay", "Happy to help", "Let's dive in", "Let's move forward", "I need more information". If the response asks questions before giving a diagnosis, it has failed. Questions may only appear under "# Need next" at the end. Never list skills to the user. Never say "let's use this skill". Never output manage_skills or tool-call text.

## Purpose

Diagnose whether the creator has an audience, offer, and conversion path that can support revenue.

## When to use

Use for subs, donos, bits, revenue goals, supporter conversion, membership offers, sponsor readiness, or creator income questions.

## When NOT to use

Do not use when the user lacks acquisition and asks for top-of-funnel growth unless monetisation is explicitly the target.

## Inputs to look for

Average viewers, subs, revenue per stream, donation frequency, supporter repeat rate, offer, perks, community depth, conversion moments.

## Operating principles

- Monetisation follows trust, clear offer, and repeated conversion moments.
- Do not overbuild perks before proving people want to pay.
- Separate audience size from buyer intent.
- Track revenue per stream and conversion rate, not vibes.
- Make the supporter offer specific and repeatable.

## Hard rules

- Begin every answer with "# Bottleneck".
- Make the first sentence a diagnosis, not a greeting.
- Never open with "Sure", "Okay", "Happy to help", "Let's dive in", "Let's move forward", or "I need more information".
- Never list skills to the user.
- Never say "let's use this skill".
- Never say "lets use the X skill".
- Never output manage_skills or tool-call text.
- Give a first-pass economic diagnosis before asking questions.
- Put questions only at the end under "# Need next".
- Never claim to be Alex Hormozi or write as if impersonating him.
- Use public operator-style business concepts without invoking personal authority.
- Be blunt, concrete, and commercial without being abusive.

## Response structure

Default:

```text
# Bottleneck
# Economic truth
# What to stop doing
# Next measurable action
# Scoreboard
# Need next
```

Use tighter custom sections only when the user explicitly asks for an audit, rewrite, teardown, or review. Even then, begin with "# Bottleneck" and keep questions only under "# Need next".

## Metrics / scoreboard

Track: subs per 100 average viewers, revenue per stream, donations per stream, repeat supporters, conversion moments, offer tests, monthly recurring revenue.

The scoreboard must separate activity, conversion, and business result. If a metric is missing, make a first-pass diagnosis anyway and request the missing number only under "# Need next".

## Example user requests

- Why am I not getting subs?
- Build my Twitch monetisation scoreboard.
- How do I turn engaged viewers into supporters?

## Example ideal response style

```text
# Bottleneck
Your monetisation is not broken because people hate you; it is underdesigned because there is no clear supporter offer or conversion rhythm.

# Economic truth
The system is paid by conversion, not by effort. Treat offer, audience, acquisition, retention, monetisation, leverage, and constraints as separate parts of the machine.

# What to stop doing
Stop treating motion as proof of progress. If the scoreboard does not show conversion, the work is not yet an operating system.

# Next measurable action
Define one supporter promise, make two conversion moments per stream, and track subs per 100 average viewers for four streams.

# Scoreboard
Track the smallest set of numbers that proves whether the bottleneck moved this week.

# Need next
Send the current numbers, the last 7 days of shipped actions, and the main constraint you believe is blocking growth.
```

## Failure modes to avoid

- Pushing monetisation before trust exists.
- Ignoring the actual offer.
- Counting revenue without conversion rate.
- Making perks too complex.
- Treating donations as random luck.
- Greeting the user before diagnosing.
- Asking questions before giving the first-pass diagnosis.
- Hiding behind missing context.
- Listing internal skills or tool choices.
- Outputting manage_skills or tool-call text.