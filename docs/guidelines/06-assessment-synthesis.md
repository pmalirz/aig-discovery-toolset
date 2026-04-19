# Guideline 06: Assessment Synthesis & Executive Reporting

> **Duration:** 2–3 days of analysis + 1-hour executive presentation
> **Participants:** Consultant (analysis), then Executive Sponsor + Leadership (presentation)
> **Outputs:** Scored scorecards, AI readiness heatmap, TOGAF matrices, executive summary
> **Prerequisite:** All discovery sessions and ideation workshops completed, ideas submitted

---

## Purpose

Synthesis is where raw data becomes insight. You've gathered team cards, mapped business capabilities, and collected AI use ideas. Now you run the agent skills, apply your consultant judgment, and produce the deliverables that drive investment decisions.

This phase has two parts:
1. **Analysis** — running agent skills, reviewing scores, identifying patterns
2. **Presentation** — telling the story to leadership in a way that drives action

---

## Part 1: Analysis Workflow

### Step 1: Validate All Data

Run the `aig-validate` skill to check completeness and quality of all submitted templates.

```
aig-validate
```

**What it checks:**
- Are all required YAML fields filled?
- Are scores within valid ranges?
- Do cross-references resolve (e.g., `pillar` field matches a real pillar directory)?
- Are narrative sections substantive (not just placeholder text)?

**Review the validation report.** For each flagged issue:
- **Missing critical data** → follow up with the team before proceeding
- **Missing non-critical data** → note as a confidence caveat in the scorecard
- **Cross-reference errors** → fix file naming or field values

**Update the engagement tracker:**
- Mark Phase 2 and 3 as completed
- Update team card and idea counts

### Step 2: Score All Ideas

Run the `aig-assess` skill to generate draft scorecards for each submitted idea.

```
aig-assess
```

**What it does:**
- Reads each `ai-use-idea.md` in `tracker/pillars/*/ideas/`
- Reads the `company-profile.md` for organizational context
- Scores each idea against the 6 dimensions of the Assessment Framework
- Generates a draft `ai-opportunity-scorecard.md` in `tracker/scorecards/`

**Review each scorecard.** The agent's scores are starting points. Your job is to:

1. **Check the evidence** — does the agent's reasoning match what you observed?
2. **Adjust for context** — the agent doesn't know political dynamics, unwritten constraints, or what the team lead's body language told you
3. **Look for patterns** — are all ideas from one pillar scoring low on data readiness? That's a systemic issue, not an idea-level problem
4. **Flag confidence levels** — mark each scorecard as `high`, `medium`, or `low` confidence
5. **Document your adjustments** — fill `agent_metadata.consultant_adjustments` so the reasoning is traceable

### Step 3: Generate the Heatmap

Run the `aig-heatmap` skill to produce the executive view.

```
aig-heatmap
```

**What it generates:**

**`tracker/reports/ai-readiness-heatmap.md`:**
- Teams (rows) × Readiness Dimensions (columns) with color-coded scores
- Top 3 highest-potential AI opportunities
- Top 3 critical organizational blockers
- Dimension-level averages across the organization

**`tracker/reports/executive-summary.md`:**
- Overall AI readiness narrative
- Prioritized initiative recommendations
- Key risks and mitigations
- Suggested next steps and timeline

**Review and adjust the reports.** The generated reports are drafts. Add your consultant narrative — the "so what" and "therefore" that connect data to decisions.

### Step 4: Generate TOGAF Matrices

Run the `aig-matrix` skill for enterprise architecture cross-references.

```
aig-matrix
```

**What it generates:**
- Business Capability → Application matrix
- Application → Data Domain matrix
- Data Domain → Technology matrix
- Gap analysis (capabilities without applications, data without governance)
- AI-relevant clusters (high-volume + data-rich + manual = prime target)

**Review the matrices** for:
- **Missing connections** — capabilities that don't link to any application (gaps in the architecture)
- **Concentration risk** — multiple critical capabilities depending on a single legacy system
- **AI clusters** — groups of related capabilities that could share an AI platform investment
- **Data governance gaps** — data domains with no clear owner (these block AI adoption)

### Step 5: Build the Prioritized Roadmap

Using the scorecard results and heatmap, build a prioritized initiative roadmap:

#### Prioritization Matrix

Plot each scored idea on a 2×2 matrix:

```
                    HIGH VALUE
                        │
           ┌────────────┼────────────┐
           │            │            │
           │   QUICK    │  STRATEGIC │
           │   WINS     │  BETS      │
           │            │            │
    EASY ──┼────────────┼────────────┼── HARD
           │            │            │
           │   NICE TO  │  TRANSFORM-│
           │   HAVE     │  ATIONAL   │
           │            │            │
           └────────────┼────────────┘
                        │
                    LOW VALUE
```

| Quadrant | Criteria | Action |
|---|---|---|
| **Quick Wins** (top-left) | High value + low effort/risk | Do first — these build momentum and credibility |
| **Strategic Bets** (top-right) | High value + high effort/risk | Plan carefully, pilot first, invest deliberately |
| **Nice to Have** (bottom-left) | Lower value + low effort | Do if resources allow, but don't prioritize |
| **Transformational** (bottom-right) | Lower short-term value + high effort, but potentially game-changing | Defer until organizational maturity improves |

#### Suggested Roadmap Format

| Wave | Timeline | Initiatives | Rationale |
|---|---|---|---|
| **Wave 1: Quick Wins** | Months 1–3 | [List of quick win ideas with scores] | Build momentum, demonstrate value, earn trust |
| **Wave 2: Strategic Pilots** | Months 3–6 | [List of strategic bets as pilots] | De-risk high-value ideas through focused PoCs |
| **Wave 3: Scale & Expand** | Months 6–12 | [Successful pilots → production + next wave] | Scale proven initiatives, begin next ideas |

---

## Part 2: Executive Presentation

### The Readback Session

**Duration:** 1 hour
**Audience:** Executive Sponsor + C-suite / senior leadership
**Purpose:** Present findings, drive decisions, agree on next steps

### Presentation Structure

| Time | Section | Content |
|---|---|---|
| 0:00–0:05 | **Recap** | What we did, who we spoke to, what data we collected |
| 0:05–0:15 | **The Big Picture** | AI readiness heatmap, organizational strengths and gaps |
| 0:15–0:35 | **Top Opportunities** | Top 3–5 ideas with scorecards, recommended roadmap |
| 0:35–0:45 | **Key Risks & Prerequisites** | What needs to happen before or alongside AI adoption |
| 0:45–0:55 | **Recommended Roadmap** | Phased implementation plan with timelines and investment ranges |
| 0:55–1:00 | **Decision Points** | What do you need from the executive team right now? |

### Telling the Story

#### Opening

> "Over the past [X] weeks, we spoke with [X] teams across [X] pillars. We mapped [X] business capabilities, collected [X] AI ideas, and scored each one against a rigorous 6-dimension framework. Here's what we found."

#### The Heatmap Narrative

Don't just show the heatmap — interpret it:

> "Your organization scores well on business value and strategic alignment — you have clear pain points and executives who understand where AI can help. Where you're weaker is data readiness and AI governance. This is extremely common at your maturity stage, and it's fixable."

#### Presenting Each Opportunity

For each top idea:
1. **The problem** (in business language, with numbers)
2. **The proposed solution** (in non-technical language)
3. **The scorecard summary** (radar chart or table)
4. **The verdict** (proceed / pilot / defer)
5. **What it needs** (budget, people, prerequisites)

#### Presenting Uncomfortable Findings

Sometimes the data says things leadership doesn't want to hear:

| Finding | How to present it |
|---|---|
| **Low AI maturity** | "You're early in the journey, which is actually an advantage — you can learn from others' expensive mistakes. Here's the maturity roadmap." |
| **A pet project scored poorly** | "This idea has merit, but the data suggests [specific blocker]. If we address [blocker], we could revisit it in [timeframe]." |
| **Data quality is a fundamental problem** | "AI amplifies data quality — good data makes AI powerful, bad data makes AI dangerous. I recommend a focused data quality initiative before scaling AI." |
| **Organization isn't ready** | "The ideas are strong but the foundation needs work. Here's a 6-month readiness plan that addresses [governance / talent / data] before we invest in AI solutions." |

#### Decision Points

End with specific asks:

> "To move forward, I need decisions on three things:
> 1. **Budget approval** for Wave 1 quick wins — estimated €[X]
> 2. **Sponsorship confirmation** — [Name] as the AI initiative sponsor
> 3. **Governance action** — establish an AI governance committee or at minimum adopt the ethical charter we drafted"

---

## Deliverables Checklist

By the end of synthesis, the following should exist in the tracker:

- [ ] All scorecards generated and consultant-reviewed (`tracker/scorecards/`)
- [ ] Validation report completed (all critical data gaps resolved)
- [ ] AI readiness heatmap generated (`tracker/reports/ai-readiness-heatmap.md`)
- [ ] Executive summary generated (`tracker/reports/executive-summary.md`)
- [ ] TOGAF matrices generated (if `aig-matrix` was run)
- [ ] Prioritized roadmap (included in executive summary or as a separate document)
- [ ] Engagement tracker updated with final status and completion metrics
- [ ] Executive presentation delivered
- [ ] Decision points documented with outcomes

---

## After the Presentation

### Immediate Actions

1. **Document the decisions** — update the engagement tracker with what was approved, deferred, or rejected
2. **Share relevant findings with teams** — each pillar should receive the findings relevant to their area (not just the C-suite view)
3. **Archive the engagement** — the tracker directory becomes the permanent record

### Transition to Implementation

If initiatives are approved:
- Hand off the scorecards and capability maps to the implementation team
- The `ai-use-idea.md` and `business-capability.md` documents serve as requirements inputs
- The scorecard's risk flags and prerequisites become the implementation's checklist

### Planning the Follow-Up

Recommend a follow-up assessment in 6–12 months to:
- Re-score implemented initiatives (did they deliver the expected value?)
- Assess new ideas that have emerged
- Re-evaluate ideas that were deferred (have the blockers been resolved?)
- Update the organizational readiness score
