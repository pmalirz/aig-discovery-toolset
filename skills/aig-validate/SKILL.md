---
name: aig-validate
description: "Use this skill to validate AIG assessment documents for completeness, correctness, and cross-reference integrity. Triggers when the user wants to: check if templates are properly filled, find missing or incomplete data in tracker documents, verify YAML schema compliance, audit the engagement for data quality before scoring, or run a health check on the tracker directory. Also triggers for 'validate templates', 'check completeness', 'audit tracker', 'find gaps', 'what's missing', 'quality check', or any request to verify AIG document integrity before proceeding to assessment or reporting."
---

# AIG Validate — Template Integrity & Completeness Checker

This skill scans all silver-layer documents in the `tracker/` directory and produces a comprehensive validation report. It checks schema compliance, data completeness, cross-reference integrity, and narrative quality. The silver layer consists of the structured Markdown + YAML files produced by `aig-interview` from unstructured source documents shared by teams.

## When to Use This Skill

- Before running `aig-assess` to score ideas — validate first to ensure scoring data is complete
- After a round of department discovery sessions — check which teams still have gaps
- When the consultant wants a progress overview — how complete is the data collection
- When a team submits their filled template — verify it meets quality standards
- Any time someone asks "what's missing" or "are we ready to score"

## Validation Workflow

### Step 1: Scan the Tracker Directory

Read the tracker directory structure:

```
tracker/
├── engagement-tracker.md
├── company-profile.md
├── entities/
├── pillars/
│   └── <pillar-name>/
│       ├── sources/              # Unstructured docs shared by teams (NOT validated — raw input)
│       ├── teams/
│       ├── capabilities/
│       └── ideas/
├── scorecards/
└── reports/
```

Identify all `.md` files and classify them by their `schema` field in the YAML frontmatter. **Skip** the `sources/` directories — these contain raw unstructured input documents (docx, xlsx, pptx, pdf) that are NOT part of the silver layer and should not be validated.
- `aig/company-profile/v1`
- `aig/team-card/v1`
- `aig/business-capability/v1`
- `aig/ai-use-idea/v1`
- `aig/scorecard/v1`
- `aig/engagement-tracker/v1`

Files without a recognized `schema` field should be flagged as "unclassified."

### Step 2: Schema Validation

For each recognized file, validate the YAML frontmatter against the expected schema.

**Read the corresponding template** from `templates/` to get the authoritative field list.

Check for:

#### Required Fields (must be non-empty)
Every template has critical fields that must be filled. Flag any that are empty, zero, or contain placeholder text.

**Company Profile critical fields:**
- `company_name`, `industry`, `employee_count`, `strategic_priorities` (at least 1), `ai_maturity.score`, `ai_maturity.justification`, `assessment_date`

**Team Card critical fields:**
- `team_name`, `pillar`, `team_lead`, `headcount`, `business_domain`, `mission_statement`, `ai_openness.score`, `top_manual_tasks` (at least 1 with `hours_per_week` > 0), `assessment_date`

**Business Capability critical fields:**
- `capability_name`, `capability_id`, `owning_team`, `pillar`, `togaf_layer`, `as_is_status`, `maturity_level`, `description`, `ai_potential_indicators` (at least 3 set to true or false — not all default), `assessment_date`

**AI Use Idea critical fields:**
- `idea_name`, `idea_id`, `submitter`, `pillar`, `problem_statement`, `proposed_ai_approach`, `target_kpis` (at least 1 with `current_value` and `target_value`), `submission_date`, `status`

**Scorecard critical fields:**
- `idea_ref`, `idea_name`, all 6 dimension subtotals > 0, `total_score`, `verdict`

#### Value Range Checks
- All scores on 1–5 scales: must be integers between 1 and 5
- `ai_maturity.score`: 1–5
- `maturity_level`: 1–5
- `satisfaction` ratings: 1–5
- `quality_self_assessment` / `quality_estimate`: 1–5
- `team_enthusiasm`: 1–5
- `ai_openness.score`: 1–5
- `headcount` and `hours_per_week`: must be > 0

#### Enum Validation
Check that enum fields contain only allowed values:

- `sensitivity`: `public | internal | confidential | restricted`
- `format` (data): `structured | unstructured | mixed`
- `category` (applications): `core | supporting | legacy | shadow_it`
- `frequency`: `daily | weekly | monthly | ad_hoc | occasionally | tried_once`
- `togaf_layer`: `Business | Application | Data | Technology`
- `as_is_status`: `manual | semi-automated | automated | outsourced`
- `status` (ideas): `draft | submitted | under_review | scored | approved | deferred | rejected`
- `time_to_value`: `quick_win | medium | long`
- `estimated_effort`: `S | M | L | XL`
- `risk_appetite`: `conservative | moderate | aggressive`
- `verdict` (scorecard): `proceed | proceed_with_conditions | pilot | defer | do_not_proceed`
- `build_vs_buy`: `build_custom | buy_saas | fine_tune_foundation_model | use_api | undecided`

#### Type Checks
- Dates should match `YYYY-MM-DD` format
- Boolean fields should be `true` or `false` (not strings)
- Arrays should contain items (flag empty arrays that are expected to have content)

### Step 3: Cross-Reference Validation

Check consistency across documents:

1. **Pillar consistency:** Every `pillar` value in team cards, capabilities, and ideas must match a directory under `tracker/pillars/`
2. **Team references:** `owning_team` in capabilities should match a `team_name` in a team card
3. **Idea references:** `idea_ref` in scorecards should match an `idea_id` in an ai-use-idea document
4. **Capability references:** `related_capability` in ideas should match a `capability_id` in a business capability document
5. **Entity references:** `entity` values should be consistent across documents

Flag any broken references with the specific field, expected value, and suggestion for resolution.

### Step 4: Narrative Quality Check

Check the Markdown body sections for substance:

- **Placeholder detection:** Flag sections that still contain template placeholder text (text starting with `_` in italics, or containing "[Team Name]", "[Idea Name]", etc.)
- **Minimum length:** Narrative sections should have at least 2 sentences. Flag single-word or single-sentence sections.
- **Missing sections:** Flag any expected Markdown sections that are completely absent from the document

### Step 5: Quantification Audit

Check for vague language that should be quantified:

- Flag instances of "a lot", "many", "significant", "frequently" without accompanying numbers
- Check that `top_manual_tasks` have `hours_per_week` filled (not zero)
- Check that `target_kpis` have both `current_value` and `target_value` filled
- Check that `volume_metrics` have at least one non-zero metric in business capabilities

### Step 6: Generate Validation Report

Produce a Markdown report with the following structure:

```markdown
# AIG Validation Report

**Generated:** [date]
**Tracker path:** tracker/
**Documents scanned:** [count]

## Summary

| Category | Total | Valid | Warnings | Errors |
|---|:---:|:---:|:---:|:---:|
| Company Profile | 1 | ✅ | 2 | 0 |
| Team Cards | 8 | 5 ✅ | 2 ⚠️ | 1 ❌ |
| Business Capabilities | 12 | 10 ✅ | 2 ⚠️ | 0 |
| AI Use Ideas | 15 | 12 ✅ | 2 ⚠️ | 1 ❌ |
| Scorecards | 0 | — | — | — |
| Engagement Tracker | 1 | ✅ | 0 | 0 |

**Overall completeness:** 84% of required fields filled across all documents

## Errors (must fix before scoring)

### ❌ [filename] — [error description]
- **Field:** `field_name`
- **Issue:** [what's wrong]
- **Action:** [how to fix]

## Warnings (should fix for quality)

### ⚠️ [filename] — [warning description]
- **Field:** `field_name`
- **Issue:** [what's wrong]
- **Suggestion:** [how to improve]

## Cross-Reference Issues

| Source Document | Field | Expected | Found | Status |
|---|---|---|---|:---:|
| [file] | `pillar` | "Retail Banking" | "retail-banking" | ⚠️ Case mismatch |

## Missing Documents

Based on the engagement tracker, the following expected documents are not yet present:
- [ ] Team card for: [team name] (pillar: [pillar])
- [ ] Business capability for: [capability] (team: [team])

## Quantification Gaps

| Document | Field | Current Value | Suggested Action |
|---|---|---|---|
| [file] | `top_manual_tasks[0].hours_per_week` | 0 | Follow up with team lead for estimate |
| [file] | `target_kpis[0].current_value` | "" | Measure baseline before scoring |

## Recommendations

1. [Prioritized action item]
2. [Next action item]
```

Save the report to `tracker/reports/validation-report.md`.

### Step 7: Update Engagement Tracker

If `tracker/engagement-tracker.md` exists, update the progress counts:
- `progress.completed_team_cards`
- `progress.total_capabilities_mapped`
- `progress.total_ideas_submitted`
- `progress.overall_completion_pct`

Also set `phases[3].validation_run: true` to record that validation has been performed.

## Validation Severity Levels

| Level | Meaning | Blocks scoring? |
|---|---|:---:|
| ❌ **Error** | Missing critical field, broken cross-reference, invalid schema | Yes |
| ⚠️ **Warning** | Missing recommended field, vague quantification, placeholder text | No, but reduces confidence |
| ℹ️ **Info** | Suggestion for improvement, non-critical observation | No |

## Running Validation on a Single File

If the user wants to validate just one file (e.g., a team card they just filled), run the same checks but scoped to that single file. Skip cross-reference checks that require other files.

## Integration

- Run this skill **before** `aig-assess` — the assessment skill assumes validated data
- Validation results can inform the `confidence_level` field in scorecards
- The `aig-interview` skill should suggest running validation after generating documents
