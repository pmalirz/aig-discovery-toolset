---
name: aig-assess
description: "Use this skill to score AI opportunity ideas against the 6-dimension assessment framework and generate draft scorecards. Triggers when the user wants to: score an AI use idea, generate a scorecard, evaluate AI readiness of an opportunity, compare multiple AI ideas by score, prioritize AI initiatives, or run the assessment pipeline on submitted ideas. Also triggers for 'score this idea', 'assess opportunity', 'generate scorecard', 'evaluate AI potential', 'rank ideas', 'prioritize initiatives', or any request to apply the 6-dimension weighted scoring framework to an AI use idea."
---

# AIG Assess — AI Opportunity Scoring Engine

This skill reads silver-layer AI use idea documents and generates scored opportunity scorecards using the 6-dimension weighted assessment framework. The silver layer (structured Markdown + YAML produced by `aig-interview` from unstructured source documents shared by teams) ensures that all scoring is based on consistently structured, validated data. This skill produces draft scores with evidence statements that the consultant reviews and adjusts.

## When to Use This Skill

- After AI use ideas have been submitted and validated (run `aig-validate` first)
- When a consultant wants to score one or more ideas
- When comparing multiple ideas to determine prioritization
- When generating the input data needed for `aig-heatmap`

## The 6-Dimension Scoring Framework

Every idea is scored across 6 dimensions with specific weights:

| # | Dimension | Weight | What it measures |
|---|---|:---:|---|
| 1 | **Business Value & Strategic Fit** | 30% | Impact magnitude, strategic alignment, scalability, time-to-value, differentiation, user desirability |
| 2 | **Data Readiness & Availability** | 20% | Data existence, volume, quality, governance |
| 3 | **Technical Feasibility & Architecture Fit** | 15% | Solution maturity, integration complexity, build vs buy clarity, infrastructure, lock-in risk |
| 4 | **Cost, Effort & ROI** | 15% | Implementation cost, operating cost, ROI/payback, organizational effort |
| 5 | **Risk & Ethical Profile** | 10% | Regulatory, output quality, privacy, adoption resistance, dependency, explainability & fairness |
| 6 | **Organisational & Change Readiness** | 10% | Executive sponsorship, talent, culture, governance framework |

Each criterion within a dimension is scored 1–5:

| Score | Label | Meaning |
|:---:|---|---|
| **5** | Excellent | Strong evidence; minimal blockers |
| **4** | Good | Positive indicators with minor gaps |
| **3** | Moderate | Mixed picture; notable concerns offset by positives |
| **2** | Weak | Significant gaps or risks |
| **1** | Poor | Fundamental blockers present |

## Scoring Workflow

### Step 1: Load Context

Read the following documents:

1. **The AI use idea** — `tracker/pillars/<pillar>/ideas/<idea>.md`
2. **The company profile** — `tracker/company-profile.md` (for organizational context, budget, risk appetite, regulatory exposure)
3. **Related team card** — if `submitter_team` is specified, read the corresponding team card for tech stack, data quality, and AI readiness context
4. **Related business capability** — if `related_capability` is specified, read it for process details, pain points, and AI potential indicators

If any of these are missing, note it as a confidence-reducing factor but proceed with available data.

### Step 2: Score Each Dimension

For each dimension, evaluate every criterion. The scoring guidance below explains what each score level means for each criterion.

#### Dimension 1: Business Value & Strategic Fit (30%)

**1a. Magnitude of business impact** (weight: 0.35)
- 5: Quantified impact with strong numbers (e.g., "90 hours/week saved, €200K annual value"). Affects a core business process.
- 4: Quantified but moderate impact, or strong impact with less precise numbers.
- 3: Impact described but poorly quantified. "Will save significant time" without hours/week.
- 2: Vague impact. "Will be helpful" without specifics.
- 1: No measurable impact described. Or the problem it solves is trivial.

**1b. Strategic alignment** (weight: 0.15)
- 5: Directly supports a top-3 strategic priority named in the company profile. Executive sponsor explicitly links this to strategy.
- 4: Supports a strategic priority but the connection is indirect.
- 3: Loosely related to strategic direction. Not explicitly named.
- 2: Tangentially related. More operational than strategic.
- 1: No connection to stated strategic priorities.

**1c. Scalability of value** (weight: 0.10)
- 5: Value grows linearly or better with scale. Near-zero marginal cost.
- 4: Good scalability with some limitations.
- 3: Scales moderately — some manual effort scales with it.
- 2: Limited scalability — value is primarily one-time.
- 1: Does not scale. One-off improvement.

**1d. Time-to-value** (weight: 0.15)
- 5: Quick win — value in < 8 weeks.
- 4: Value in 2-3 months.
- 3: Value in 3-6 months.
- 2: Value in 6-12 months.
- 1: Value in 12+ months or uncertain timeline.

**1e. Competitive differentiation** (weight: 0.10)
- 5: Would create significant competitive advantage not easily replicated.
- 4: Good differentiation — ahead of most competitors.
- 3: Table-stakes modernization — competitors are doing similar things.
- 2: Marginal differentiation.
- 1: No competitive impact.

**1f. End-User Desirability & Workflow Fit** (weight: 0.15)
- 5: Solves a severe user pain point; integrates seamlessly into daily habits.
- 4: Strong user value; minor workflow adjustments needed.
- 3: Moderate user value; requires new tools or screens, breaking flow.
- 2: Low perceived user value; seen as an administrative burden.
- 1: Misaligned with how users actually work; high risk of rejection.

#### Dimension 2: Data Readiness & Availability (20%)

**2a. Data existence & accessibility** (weight: 0.30)
- 5: Data exists, is digitized, and accessible via APIs or standard interfaces.
- 4: Data exists and is accessible but may need some preparation.
- 3: Data exists but is fragmented across systems or requires significant access effort.
- 2: Data partially exists or is locked in legacy systems with limited access.
- 1: Required data does not exist or would need to be collected from scratch.

**2b. Data volume & representativeness** (weight: 0.25)
- 5: Large, representative dataset covering all relevant scenarios.
- 4: Good volume; minor gaps in coverage.
- 3: Moderate volume; some scenarios underrepresented.
- 2: Limited data volume; may need augmentation.
- 1: Insufficient data for AI training or operation.

**2c. Data quality** (weight: 0.25)
- 5: Clean, consistent, well-documented data. Quality audited.
- 4: Good quality with minor issues. Self-assessed quality 4+.
- 3: Mixed quality. Known issues but manageable.
- 2: Poor quality. Significant cleaning/preparation needed. Self-assessed quality 1–2.
- 1: Data is unreliable, inconsistent, or unaudited.

**2d. Data governance & ownership** (weight: 0.20)
- 5: Clear data ownership, documented governance policies, DPO/CDO engaged.
- 4: Ownership clear; governance exists but may not cover AI specifically.
- 3: Ownership is informal. Governance is basic.
- 2: Ownership is disputed or unclear. Minimal governance.
- 1: No data ownership or governance structure.

#### Dimension 3: Technical Feasibility & Architecture Fit (15%)

**3a. Solution maturity** (weight: 0.20)
- 5: Commodity technology with hundreds of production implementations. Well-understood.
- 4: Established technology with solid track record. Some customization needed.
- 3: Maturing technology. Proven in PoC but limited production deployments.
- 2: Emerging technology. Research-stage with limited real-world validation.
- 1: Cutting-edge / experimental. High uncertainty.

**3b. Integration complexity** (weight: 0.20)
- 5: Minimal integration — standalone or simple API calls to modern systems.
- 4: Moderate integration — well-documented APIs, standard connectors available.
- 3: Significant integration — multiple systems, some legacy, custom middleware needed.
- 2: High complexity — legacy systems with poor APIs, fragile integrations.
- 1: Extreme complexity — deep legacy integration, screen scraping, or no viable integration path.

**3c. Build vs buy decision clarity** (weight: 0.15)
- 5: Clear path — established SaaS/API solution that fits the use case.
- 4: Clear path with some customization needed.
- 3: Multiple viable approaches; evaluation needed.
- 2: No clear path — custom build likely required.
- 1: Uncertain — no established solution for this specific problem.

**3d. Infrastructure & MLOps readiness** (weight: 0.25)
- 5: Cloud platform available, MLOps pipeline exists, monitoring in place.
- 4: Cloud platform available; MLOps would need to be built but feasible.
- 3: Basic cloud/infrastructure exists; significant MLOps gaps.
- 2: Limited infrastructure; major investment needed for AI workloads.
- 1: No AI-ready infrastructure. On-premise only with no cloud strategy.

**3e. Vendor / technology lock-in risk** (weight: 0.20)
- 5: Technology-agnostic; multiple vendor alternatives; portable.
- 4: Primary vendor dependency but viable alternatives exist.
- 3: Moderate lock-in; switching would require effort but is feasible.
- 2: Significant lock-in; limited alternatives.
- 1: Complete lock-in; no exit strategy.

#### Dimension 4: Cost, Effort & ROI (15%)

**4a. Implementation cost (CAPEX)** (weight: 0.25)
- 5: Very low cost relative to value delivered and available budget.
- 4: Reasonable cost; well within stated budget range.
- 3: Moderate cost; at the mid-range of budget. Proportionate to value.
- 2: High cost; approaches or exceeds budget range.
- 1: Very high cost; clearly exceeds available budget.

**4b. Ongoing operational cost (OPEX)** (weight: 0.20)
- 5: Minimal ongoing costs; predictable pricing model.
- 4: Low ongoing costs; transparent pricing.
- 3: Moderate ongoing costs; some variable/usage-based components.
- 2: High ongoing costs; unpredictable or volume-sensitive pricing.
- 1: Very high ongoing costs; could erode ROI over time.

**4c. Estimated ROI & payback period** (weight: 0.35)
- 5: Payback in < 6 months. ROI > 200%.
- 4: Payback in 6–12 months. ROI 100–200%.
- 3: Payback in 12–18 months. ROI 50–100%.
- 2: Payback in 18–24 months. ROI 20–50%.
- 1: Payback > 24 months or uncertain/negative ROI.

**4d. Organisational effort (change burden)** (weight: 0.20)
- 5: Minimal change — enhances existing workflow without disruption.
- 4: Moderate change — role evolution, brief training needed.
- 3: Significant change — new processes, extended training period.
- 2: High change — fundamental workflow redesign required.
- 1: Transformational change — new roles, restructuring, extended transition.

#### Dimension 5: Risk & Ethical Profile (10%)

**5a. Regulatory & compliance risk** (weight: 0.20)
- 5: No regulatory exposure; low-risk AI Act category; no compliance impact.
- 4: Minor regulatory considerations; standard compliance approach.
- 3: Moderate exposure; AI Act considerations but manageable.
- 2: High exposure; high-risk AI Act category; significant compliance work needed.
- 1: Prohibitive regulatory barriers; unacceptable risk category.

**5b. AI output quality risk** (weight: 0.25)
- 5: Errors are trivial, easily detected, and self-correcting.
- 4: Errors are moderate impact but caught by human review gate.
- 3: Errors could be significant but are detectable with monitoring.
- 2: Errors are hard to detect and could cause meaningful harm.
- 1: Errors could cause severe harm (medical, financial, legal) with limited detection.

**5c. Data privacy & security risk** (weight: 0.20)
- 5: No PII involved; standard data handling.
- 4: Limited PII; standard GDPR compliance sufficient.
- 3: Significant PII; DPIA needed; additional safeguards required.
- 2: Sensitive data (health, financial); major privacy controls needed.
- 1: Highly sensitive data with severe breach consequences.

**5d. Adoption & change resistance risk** (weight: 0.15)
- 5: Team is enthusiastic (score 4-5); previous positive AI experience.
- 4: Team is open (score 3-4); no significant resistance expected.
- 3: Team is mixed; some enthusiasm, some concerns.
- 2: Team is cautious (score 1-2); significant change management needed.
- 1: Team is actively resistant; strong opposition expected.

**5e. Dependency & concentration risk** (weight: 0.05)
- 5: No critical dependencies; manual fallback readily available.
- 4: Minor dependencies; alternatives exist.
- 3: Moderate dependencies; fallback possible but with effort.
- 2: High dependency on specific vendor/system; limited fallback.
- 1: Critical single-point-of-failure dependency; no fallback.

**5f. Explainability, Fairness & Ethical Risk** (weight: 0.15)
- 5: Fully transparent logic; output is highly explainable with no bias risk.
- 4: High explainability; low risk of bias or unfair outcomes.
- 3: Moderate "black box" elements; requires bias monitoring mechanisms.
- 2: Complex model lacking explainability; known risks of bias or unfairness.
- 1: Unexplainable model impacting human rights, safety, or critical opportunities.

#### Dimension 6: Organisational & Change Readiness (10%)

**6a. Executive sponsorship** (weight: 0.30)
- 5: Named sponsor with explicit budget authority and personal commitment.
- 4: Sponsor identified with budget influence but not sole authority.
- 3: Potential sponsor identified but not formally committed.
- 2: No clear sponsor; general management interest only.
- 1: No sponsor; no management buy-in.

**6b. Internal AI capability & talent** (weight: 0.25)
- 5: In-house AI/ML team with relevant experience; can execute independently.
- 4: Some AI talent; may need selective external support.
- 3: Limited AI talent; significant external support needed for implementation.
- 2: No AI talent; fully dependent on external resources.
- 1: No AI talent and no plan to acquire it.

**6c. Digital & data culture maturity** (weight: 0.20)
- 5: Data-driven culture; strong track record of technology adoption.
- 4: Good digital culture; some successful technology initiatives.
- 3: Mixed culture; technology adoption has mixed results.
- 2: Traditional culture; technology adoption is slow and often resisted.
- 1: Technology-averse culture; change initiatives typically fail.

**6d. AI governance framework** (weight: 0.25)
- 5: Established AI governance framework with policies, oversight committee, ethical charter.
- 4: AI governance in development; ethical charter exists.
- 3: Basic data governance exists but no AI-specific framework.
- 2: Minimal governance; awareness of need but no action.
- 1: No governance framework; no awareness of need.

### Step 3: Calculate Scores

For each dimension, calculate the weighted subtotal:

```
dimension_subtotal = Σ (criterion_score × criterion_weight) × dimension_weight
```

Example for Business Value (weight 0.30):
```
subtotal = (impact×0.35 + alignment×0.15 + scalability×0.10 + time_to_value×0.15 + differentiation×0.10 + desirability×0.15) × 0.30
```

All criterion weights within each dimension sum to 1.0.

Total score = sum of all 6 dimension subtotals. Range: 1.00 – 5.00.

### Step 4: Determine Verdict

| Score Range | Verdict | Action |
|:---:|---|---|
| 4.25 – 5.00 | `proceed` | Strong case. Prioritise and move to solution design. |
| 3.50 – 4.24 | `proceed_with_conditions` | Good potential. Address identified gaps first. |
| 2.75 – 3.49 | `pilot` | Mixed picture. Run a focused proof of concept. |
| 2.00 – 2.74 | `defer` | Significant blockers. Create a remediation roadmap. |
| 1.00 – 1.99 | `do_not_proceed` | Fundamental blockers. Revisit in 12 months. |

### Step 5: Write Evidence Statements

For every criterion score, write a brief evidence statement explaining why that score was assigned. Reference specific data from the idea document, team card, or company profile.

**Good evidence:** "Quantified impact: 90 hours/week saved, €180K–€250K annual value. Directly measurable via SAP workflow timestamps."

**Bad evidence:** "The impact seems good."

### Step 6: Flag Low-Confidence Scores

For criteria where the evidence is weak or self-reported, flag them for consultant review:

```yaml
agent_metadata:
  low_confidence_flags:
    - "data_readiness.data_quality — self-reported quality rating, no independent audit"
    - "cost_and_roi.estimated_annual_value — submitter estimate, not validated"
```

### Step 7: Generate the Scorecard

Read the scorecard template from `templates/ai-opportunity-scorecard.md` and generate a complete scorecard document with:

1. **Full YAML frontmatter** with all scores, evidence, and metadata
2. **Score Summary table** in the Markdown body
3. **Key Strengths** — the 2–3 strongest arguments for the initiative
4. **Critical Risks & Blockers** — the key concerns
5. **Recommended Next Steps** — specific, time-bound actions
6. **Dependencies & Assumptions** — what must remain true for the assessment to hold

Save to `tracker/scorecards/<idea-name>-scorecard.md`.

Set `agent_metadata.scored_by_agent: true` and `agent_metadata.agent_score` to the calculated total.

### Step 8: Batch Scoring

When scoring multiple ideas:

1. Score each idea independently
2. After all are scored, generate a **comparison summary**:

```markdown
## Idea Comparison

| Rank | Idea | Total Score | Verdict | Strongest Dimension | Weakest Dimension |
|:---:|---|:---:|---|---|---|
| 1 | [Idea A] | 4.12 | Proceed w/ conditions | Business Value (4.6) | Data Readiness (3.1) |
| 2 | [Idea B] | 3.85 | Proceed w/ conditions | Technical (4.2) | Org Readiness (2.5) |
| 3 | [Idea C] | 2.90 | Pilot | Business Value (3.8) | Risk Profile (2.1) |
```

3. Identify **themes** across ideas:
   - Are multiple ideas blocked by the same issue (e.g., data quality across the board)?
   - Are there natural clusters that could share platform investment?
   - Which ideas should be sequenced (dependencies between them)?

## Important Notes

- **Scores are drafts.** Always remind the consultant that these are starting points for their review. The consultant knows political dynamics, unwritten constraints, and body-language signals that no document captures.
- **Evidence trumps formula.** If the evidence strongly suggests a different score than what the field values imply, adjust the score and explain why.
- **Risk scoring is inverted.** A HIGH risk = LOW score. A "5" in risk means "low risk" (which is good).
- **Missing data reduces confidence, not necessarily score.** If a field is empty, note it as a confidence issue rather than automatically scoring it low — the information might exist and simply not have been captured.
