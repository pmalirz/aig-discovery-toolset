# AIG Toolset — Product Design Specification

> **Status:** Approved for implementation
> **Date:** 2026-04-19
> **Author:** Consultant + AI pair design session

---

## 1. Vision

The AIG Toolset is a **"Governance as Code"** repository for consultants and Enterprise Architects performing AI transformation assessments. It provides a structured, repeatable methodology to evaluate an enterprise's AI readiness, identify high-potential AI opportunities, and track the adoption journey — all using version-controlled Markdown files analyzed by AI agent skills.

### Core Principles

- **Document-first**: All data lives in Markdown with YAML frontmatter — human-readable, LLM-parseable, Git-versioned.
- **Empathy-led**: Every guideline and workshop format prioritizes employee comfort, ethical framing, and transparency about AI's role as augmentation, not replacement.
- **Agent-augmented**: AI skills automate validation, scoring, and visualization — but the consultant always reviews and owns the final judgment.
- **Framework-grounded**: Assessment criteria are rooted in established EA frameworks (TOGAF, Zachman, CMMI) and the project's own AI Opportunity Assessment Framework (6 dimensions, weighted scoring).

### Target Users

| User | How they interact |
|---|---|
| **Consultant / EA** | Runs workshops, fills templates, executes agent skills, presents findings |
| **C-Suite / Executive Sponsor** | Participates in executive workshop, reviews heatmaps and executive summaries |
| **Department Head / Team Lead** | Fills out `team-card.md` and `business-capability.md` during guided sessions |
| **Any Employee** | Can submit `ai-use-idea.md` to propose AI use cases |

---

## 2. Architecture Overview

The toolset is a single Git repository with four pillars:

```
eig-toolset/
├── docs/
│   └── guidelines/                    # Pillar 1: Consultant playbooks
│       ├── 01-engagement-kickoff.md
│       ├── 02-executive-workshop.md
│       ├── 03-department-discovery.md
│       ├── 04-ai-ideation-workshop.md
│       ├── 05-ethical-ai-charter.md
│       └── 06-assessment-synthesis.md
├── templates/                         # Pillar 2: Standardized MD templates
│   ├── company-profile.md
│   ├── team-card.md
│   ├── business-capability.md
│   ├── ai-use-idea.md
│   ├── ai-opportunity-scorecard.md
│   └── engagement-tracker.md
├── tracker/                           # Pillar 3: Per-engagement data
│   ├── engagement-tracker.md
│   ├── company-profile.md
│   ├── entities/
│   ├── pillars/
│   │   └── <pillar-name>/
│   │       ├── teams/
│   │       ├── capabilities/
│   │       └── ideas/
│   ├── scorecards/
│   └── reports/
├── skills/                            # Pillar 4: Agent skills (skills.sh)
│   ├── aig-validate/
│   ├── aig-assess/
│   ├── aig-heatmap/
│   ├── aig-matrix/
│   └── aig-interview/
└── PROJECT_PLAN.md                         # Implementation tracker
```

---

## 3. Pillar 1 — Guidelines (`docs/guidelines/`)

Step-by-step consultant playbooks. Each guideline is a self-contained document covering objectives, preparation, facilitation script, outputs, and timing.

### 3.1 `01-engagement-kickoff.md`

**Purpose:** How to open the engagement with the client organization.

**Content:**

- Setting expectations with the executive sponsor about what the assessment will and will not deliver
- Explaining the process timeline (typically 2–4 weeks for a mid-size enterprise)
- Ethical framing: positioning AI as augmentation, not replacement — and why this framing matters for honest data collection
- Building psychological safety: employees must feel safe reporting inefficiencies without fear of their role being automated away
- Logistics: what the consultant needs (access to org charts, existing strategy docs, a room for workshops)
- Communication template: a suggested email/message the sponsor sends to the organization introducing the assessment

### 3.2 `02-executive-workshop.md`

**Purpose:** A 2-hour facilitated workshop with C-suite and senior leadership.

**Content:**

- Workshop agenda with time blocks
- Facilitation script: questions to ask, how to probe deeper, how to handle defensive responses
- Topics covered:
  - Strategic priorities for the next 12–24 months
  - Current AI initiatives (if any) and their status
  - Risk appetite and regulatory constraints (AI Act, DORA, NIS 2 applicability)
  - Budget expectations and investment horizon
  - Cultural readiness self-assessment
  - Organizational structure overview (legal entities, pillars, key teams)
- Output: filled `company-profile.md`
- Tips: how to keep executives engaged, how to translate "AI buzzwords" into business language

### 3.3 `03-department-discovery.md`

**Purpose:** 45–60 minute guided sessions with department heads and team leads.

**Content:**

- How to schedule efficiently (batch sessions, allow async completion for remote teams)
- Interview script focused on:
  - What does your team do day-to-day? (process mapping)
  - What takes the most time? What is most error-prone? (pain point identification)
  - What data do you work with? Where does it live? (data landscape mapping)
  - What applications do you use? What do you wish was better? (application landscape)
  - How do you feel about AI? What excites or worries your team? (cultural pulse)
- How to fill `team-card.md` and `business-capability.md` collaboratively during the session
- Handling resistance: what to do when a team lead is hostile, disinterested, or overly enthusiastic

### 3.4 `04-ai-ideation-workshop.md`

**Purpose:** A creative, inclusive workshop where anyone can propose AI use cases.

**Content:**

- Workshop format options: in-person sticky-note sessions, async form submission, or hybrid
- Ice-breaker activities to demystify AI for non-technical participants
- Guided brainstorming prompts:
  - "What task do you do repeatedly that feels like a robot could do it?"
  - "Where do you spend time searching for information that should be easy to find?"
  - "What decisions do you make based on gut feeling because the data is too hard to analyze?"
- How to fill the `ai-use-idea.md` template — each field explained in plain language
- Facilitator's guide: how to capture ideas without judging them, how to help vague ideas become concrete
- Encouraging participation from all levels — not just managers

### 3.5 `05-ethical-ai-charter.md`

**Purpose:** Establishing the company's ethical AI principles before any implementation.

**Content:**

- Why an ethical charter matters — trust, legal protection, employee buy-in
- Template for the charter itself, covering:
  - Transparency: how will the company communicate when AI is used?
  - Bias and fairness: what safeguards will be in place?
  - Human oversight: what decisions will always require human approval?
  - Data privacy: what data will and will not be used for AI?
  - Employee impact: commitments about retraining, role evolution, no-surprise automation
- How to facilitate the charter creation with a cross-functional group
- Examples from different industries

### 3.6 `06-assessment-synthesis.md`

**Purpose:** How to take all gathered artifacts, run the agent skills, and present findings.

**Content:**

- Step-by-step: running `aig-validate` → `aig-assess` → `aig-heatmap` → `aig-matrix`
- How to review and adjust agent-generated scores using consultant judgment
- Building the executive presentation: which visualizations to use, how to tell the story
- The "readback session" format: presenting findings to the C-suite with actionable recommendations
- Prioritization framework: how to sequence AI initiatives based on value × readiness
- Handling difficult conversations: when the data shows low readiness, or when a pet project scores poorly

---

## 4. Pillar 2 — Templates (`templates/`)

### Design Principles

All templates follow these rules:

1. **YAML frontmatter** contains all structured, scorable data — fields that agents parse programmatically
2. **Markdown body** contains narrative and qualitative sections — fields that humans read and write
3. **Every template includes `## Example`** — a realistic, fully filled-out example
4. **Every template includes `## Guidance`** — explaining what "good" looks like for each field
5. **Dates use ISO 8601** (`YYYY-MM-DD`), scores use integers (1–5), enums are explicitly listed

### 4.1 `company-profile.md`

**Filled by:** Consultant (from executive workshop)

```yaml
---
schema: aig/company-profile/v1
company_name: ""
industry: ""          # e.g., Financial Services, Manufacturing, Healthcare
employee_count: 0     # approximate total headcount
revenue_range: ""     # e.g., "€50M–€200M"
legal_entities:
  - name: ""
    country: ""
    headcount: 0
strategic_priorities:  # top 3–5 priorities from exec workshop
  - ""
ai_maturity:           # 1=No AI awareness, 5=AI-native organization
  score: 0
  justification: ""
regulatory_exposure:
  ai_act_applicable: false
  ai_act_risk_level: ""   # none | limited | high | unacceptable
  dora_in_scope: false
  nis2_in_scope: false
  other_regulations: []
budget_range: ""       # e.g., "€100K–€500K for initial AI pilots"
risk_appetite: ""      # conservative | moderate | aggressive
assessment_date: ""
consultant: ""
---
```

**Body sections:** Executive Summary, Strategic Context, Organizational Structure, Current AI Landscape, Key Constraints & Concerns.

### 4.2 `team-card.md`

**Filled by:** Team Lead / Manager (during department discovery)

```yaml
---
schema: aig/team-card/v1
team_name: ""
pillar: ""              # which business pillar this team belongs to
entity: ""              # legal entity (if multi-entity)
team_lead: ""
headcount: 0
business_domain: ""     # e.g., "Payment Processing", "HR Operations"
tech_stack:
  - ""
data_domains_owned:
  - name: ""
    sensitivity: ""     # public | internal | confidential | restricted
    format: ""          # structured | unstructured | mixed
applications_used:
  - name: ""
    category: ""        # core | supporting | legacy
    satisfaction: 0     # 1–5
current_ai_usage:
  - tool: ""
    purpose: ""
ai_openness:            # 1=Resistant, 5=Enthusiastic
  score: 0
  concerns: []          # e.g., ["job security", "data privacy", "reliability"]
top_manual_tasks:       # top 3 most time-consuming manual tasks
  - task: ""
    hours_per_week: 0
    error_prone: false
assessment_date: ""
---
```

**Body sections:** Team Description, Key Responsibilities, Pain Points & Bottlenecks, Data Landscape Notes, Cultural Observations.

### 4.3 `business-capability.md`

**Filled by:** Department Head + Consultant

```yaml
---
schema: aig/business-capability/v1
capability_name: ""
owning_team: ""
pillar: ""
togaf_layer: ""         # Business | Application | Data | Technology
zachman_row: ""         # Contextual | Conceptual | Logical | Physical | Detailed
as_is_status: ""        # manual | semi-automated | automated
volume_metrics:
  transactions_per_day: 0
  documents_per_week: 0
  decisions_per_week: 0
data_sources:
  - name: ""
    type: ""            # database | API | file_share | email | paper
    quality: 0          # 1–5
integration_points:
  - system: ""
    type: ""            # API | file_transfer | manual_entry | screen_scraping
pain_points:
  - ""
ai_potential_indicators:
  repetitive: false
  data_rich: false
  error_prone: false
  high_volume: false
  rule_based: false
assessment_date: ""
---
```

**Body sections:** Capability Description, Current Process ("As-Is"), Data Flow, Integration Dependencies, Observations & AI Opportunity Notes.

### 4.4 `ai-use-idea.md`

**Filled by:** Anyone in the company

This template maps directly to the 6 dimensions of the AI Opportunity Assessment Framework.

```yaml
---
schema: aig/ai-use-idea/v1
idea_name: ""
submitter: ""
submitter_role: ""
pillar: ""
related_capability: ""   # links to a business-capability.md if applicable
submission_date: ""
status: draft             # draft | submitted | under_review | scored | approved | rejected

# Dimension 1 — Business Value & Strategic Fit
problem_statement: ""     # What manual work / legacy app / inefficiency does this address?
proposed_ai_approach: ""  # e.g., "LLM-based document classification", "Predictive ML model"
target_kpis:
  - metric: ""            # e.g., "hours saved per week", "error rate reduction"
    current_value: ""
    target_value: ""
strategic_alignment: ""   # Which company strategic priority does this support?
time_to_value: ""         # quick_win (<8 weeks) | medium (3–6 months) | long (6+ months)

# Dimension 2 — Data Readiness
data_sources:
  - name: ""
    exists: true
    accessible: true
    quality_estimate: 0   # 1–5
    contains_pii: false

# Dimension 3 — Technical Feasibility
ai_technique: ""          # classification | generation | prediction | extraction | other
build_vs_buy: ""          # build | buy | fine_tune | undecided
integration_complexity: ""  # low | medium | high

# Dimension 4 — Cost & Effort
estimated_effort: ""      # S | M | L | XL
estimated_annual_value: "" # rough € estimate

# Dimension 5 — Risk Profile
risk_flags:
  regulatory_exposure: "" # none | low | medium | high
  hallucination_impact: "" # trivial | moderate | severe
  pii_involved: false
  human_review_gate: true  # will a human review AI outputs?

# Dimension 6 — Organizational Readiness
executive_sponsor: ""     # name or "none identified"
team_enthusiasm: 0        # 1–5
change_impact: ""         # minimal | moderate | significant
---
```

**Body sections:** Detailed Problem Description, Proposed Solution, Expected Benefits, Known Risks & Mitigations, Dependencies.

### 4.5 `ai-opportunity-scorecard.md`

**Filled by:** Consultant (with agent pre-scoring via `aig-assess`)

Mirrors the structure of the AI Opportunity Assessment Framework. YAML frontmatter contains the numerical scores; body contains the consultant's narrative.

```yaml
---
schema: aig/scorecard/v1
idea_ref: ""              # filename of the ai-use-idea being scored
assessment_date: ""
consultant: ""
version: 1

scores:
  business_value:          # Dimension 1 — weight 30%
    impact: 0              # 1–5
    strategic_alignment: 0
    scalability: 0
    time_to_value: 0
    differentiation: 0
    subtotal: 0.0
  data_readiness:          # Dimension 2 — weight 20%
    existence: 0
    volume: 0
    quality: 0
    governance: 0
    subtotal: 0.0
  technical_feasibility:   # Dimension 3 — weight 15%
    solution_maturity: 0
    integration: 0
    build_vs_buy: 0
    infrastructure: 0
    lock_in_risk: 0
    subtotal: 0.0
  cost_and_roi:            # Dimension 4 — weight 15%
    capex: 0
    opex: 0
    roi: 0
    change_burden: 0
    subtotal: 0.0
  risk_profile:            # Dimension 5 — weight 10%
    regulatory: 0
    output_quality: 0
    privacy: 0
    adoption: 0
    dependency: 0
    subtotal: 0.0
  org_readiness:           # Dimension 6 — weight 10%
    sponsorship: 0
    talent: 0
    culture: 0
    governance: 0
    subtotal: 0.0

total_score: 0.0           # weighted sum, 1.00–5.00
verdict: ""                # proceed | proceed_with_conditions | pilot | defer | do_not_proceed
---
```

**Body sections:** Key Strengths, Critical Risks & Blockers, Recommended Next Steps, Dependencies & Assumptions.

### 4.6 `engagement-tracker.md`

**Filled by:** Consultant (updated throughout the engagement)

```yaml
---
schema: aig/engagement-tracker/v1
engagement_start: ""
target_completion: ""
consultant: ""
executive_sponsor: ""
status: in_progress        # not_started | in_progress | synthesis | completed

phases:
  - name: "Executive Workshop"
    status: not_started     # not_started | scheduled | completed
    date: ""
    artifacts: []           # list of generated file paths
  - name: "Department Discovery"
    status: not_started
    teams_total: 0
    teams_completed: 0
    date_range: ""
  - name: "AI Ideation Workshops"
    status: not_started
    ideas_submitted: 0
    date_range: ""
  - name: "Assessment & Scoring"
    status: not_started
    ideas_scored: 0
    ideas_total: 0
  - name: "Synthesis & Reporting"
    status: not_started
    reports_generated: []
---
```

**Body sections:** Engagement Timeline, Key Decisions & Changes, Open Questions, Meeting Notes.

---

## 5. Pillar 3 — Tracker (`tracker/`)

The tracker is a working directory for a single company engagement. It follows this structure:

```
tracker/
├── engagement-tracker.md
├── company-profile.md
├── entities/
│   ├── entity-alpha.md
│   └── entity-beta.md
├── pillars/
│   ├── <pillar-name>/
│   │   ├── sources/                     # Raw unstructured docs shared by teams + interview transcriptions
│   │   │   └── (docx, xlsx, pptx, pdf, txt — raw input, not validated)
│   │   ├── teams/                       # Silver layer: structured team cards
│   │   │   └── <team-name>-team-card.md
│   │   ├── capabilities/                # Silver layer: mapped business capabilities
│   │   │   └── <capability-name>.md
│   │   └── ideas/                       # Silver layer: AI use ideas
│   │       └── <idea-name>.md
│   └── ...
├── scorecards/
│   └── <idea-name>-scorecard.md
└── reports/
    ├── ai-readiness-heatmap.md
    └── executive-summary.md
```

**Key design decisions:**

- **Pillars are the primary grouping** — teams, capabilities, and ideas nest under their business pillar
- **Sources hold raw input** — unstructured documents shared by teams and interview transcriptions/notes are stored in `sources/` by convention, organized by what they describe. These are NOT part of the silver layer and are not validated or scored directly.
- **The silver layer** — `teams/`, `capabilities/`, and `ideas/` contain structured Markdown + YAML files produced by `aig-interview` from the raw sources. All downstream skills (`aig-validate`, `aig-assess`, `aig-matrix`, `aig-heatmap`) operate exclusively on this silver layer.
- **Scorecards are cross-cutting** — they live at the top level since they aggregate across pillars for executive review
- **Reports are top-level** — the heatmap and executive summary represent the final deliverables
- **Entities are separate** — legal entity profiles are organizational metadata, not assessment data
- **File naming convention:** kebab-case, descriptive names (e.g., `payments-team-card.md`, `invoice-processing.md`)

---

## 6. Pillar 4 — Agent Skills (`skills/`)

All skills are built using the [skills.sh](https://skills.sh/) framework. Each skill has a `SKILL.md` with clear trigger descriptions, and operates on the tracker directory.

### 6.1 `aig-validate`

**Trigger:** Consultant runs after teams submit templates.

**Behavior:**

1. Scans all `.md` files in `tracker/` matching known schemas (team-card, business-capability, ai-use-idea). **Skips** `sources/` directories — these contain raw unstructured input, not silver-layer documents.
2. Parses YAML frontmatter and validates:
   - Required fields are present and non-empty
   - Scores are within valid ranges (1–5)
   - Enums match allowed values
   - Cross-references are valid (e.g., `pillar` field matches an existing pillar directory)
3. Checks narrative sections for substance (flags sections that are just the template placeholder text)
4. Outputs a validation report as Markdown:
   - Per-file status (✅ valid, ⚠️ warnings, ❌ errors)
   - Specific feedback (e.g., "Finance team card: `data_domains_owned` is empty — follow up with team lead")
5. Updates `engagement-tracker.md` completion counts

### 6.2 `aig-assess`

**Trigger:** Consultant runs after ideas are submitted.

**Behavior:**

1. Reads each `ai-use-idea.md` file in `tracker/pillars/*/ideas/`
2. Reads `tracker/company-profile.md` for organizational context
3. For each idea, generates a draft `ai-opportunity-scorecard.md` by:
   - Mapping idea fields to the 6 assessment dimensions
   - Scoring each criterion (1–5) based on the data provided and scoring guidance from the Framework
   - Calculating weighted subtotals and total score
   - Determining the verdict based on the score range matrix
   - Writing a narrative for Key Strengths, Critical Risks, and Recommended Next Steps
4. Flags areas of low confidence where the consultant should apply manual judgment (e.g., "Data quality score is estimated — no audit data available")
5. Saves draft scorecards to `tracker/scorecards/`

### 6.3 `aig-heatmap`

**Trigger:** Consultant runs to generate the executive view.

**Behavior:**

1. Reads all `team-card.md` and `ai-opportunity-scorecard.md` files
2. Generates `tracker/reports/ai-readiness-heatmap.md` containing:
   - A Markdown table: Teams (rows) × Readiness Dimensions (columns) with color-coded scores
   - A Mermaid diagram showing a visual heatmap
   - Top 3 highest-potential AI opportunities (by total score)
   - Top 3 critical blockers across the organization
   - Dimension-level averages (e.g., "Organization-wide data readiness: 2.8/5")
3. Generates `tracker/reports/executive-summary.md` containing:
   - Overall AI readiness assessment (1 paragraph)
   - Recommended priority initiatives (ranked by value × readiness)
   - Key risks and mitigation recommendations
   - Suggested next steps and timeline

### 6.4 `aig-matrix`

**Trigger:** Consultant runs for TOGAF-style cross-reference analysis.

**Behavior:**

1. Reads all `business-capability.md` files
2. Builds cross-reference matrices:
   - Business Capability → Application (which apps support which capabilities)
   - Application → Data Domain (which data flows through which apps)
   - Data Domain → Technology (where data is stored and processed)
3. Outputs:
   - Markdown tables for each matrix
   - Mermaid diagrams showing the relationships as a graph
   - Gap analysis: capabilities with no application support, data domains with no governance
   - AI-relevant clusters: capabilities that are high-volume, repetitive, data-rich, and manual — the prime AI targets
4. Maps findings to TOGAF Architecture Building Blocks (ABBs) where applicable

### 6.5 `aig-interview`

**Trigger:** Consultant runs to translate unstructured input into the md silver layer.

**Behavior:**

1. Consultant specifies the interview type: `executive`, `department`, or `ideation`
2. Input comes from two complementary sources:
   - **Documents shared by teams** — unstructured materials (docx, xlsx, pptx, pdf) shared by other people during interviews and discovery, stored in `sources/` folders by convention
   - **Interview transcriptions and meeting notes** — notes, voice transcriptions, workshop summaries captured by the consultant, also stored in `sources/`
3. The skill processes both sources:
   - Delegates to specialized skills (`docx`, `xlsx`, `pptx`, `pdf`) for document reading
   - Parses raw notes and transcriptions for key information
   - Extracts structured data and populates the YAML frontmatter of the appropriate template
   - Fills narrative sections from the combined input
   - Merges insights from multiple sources, flags conflicts between them
   - Asks follow-up questions when answers are too vague (e.g., "You mentioned 'a lot of manual work' — can you estimate hours per week?")
4. At the end, outputs a silver-layer `.md` file — structured Markdown + YAML ready for review
5. The consultant reviews, adjusts, and saves to the appropriate tracker directory
6. For interactive interviews (no pre-existing documents), the skill walks the consultant through the template fields conversationally, presenting questions from the corresponding guideline one at a time

---

## 7. Consultant Workflow (End-to-End)

```
Week 1                    Week 2                    Week 3              Week 4
┌──────────────┐   ┌──────────────────┐   ┌─────────────────┐   ┌──────────────┐
│  Engagement  │   │   Department     │   │   AI Ideation   │   │  Synthesis   │
│  Kickoff     │──▶│   Discovery      │──▶│   Workshops     │──▶│  & Reporting │
│              │   │   Sessions       │   │                 │   │              │
│  Guideline:  │   │  Guideline:      │   │  Guideline:     │   │  Guideline:  │
│  01, 02, 05  │   │  03              │   │  04             │   │  06          │
│              │   │                  │   │                 │   │              │
│  Outputs:    │   │  Outputs:        │   │  Outputs:       │   │  Outputs:    │
│  company-    │   │  team-card.md    │   │  ai-use-idea.md │   │  scorecards  │
│  profile.md  │   │  business-       │   │  (multiple)     │   │  heatmap     │
│  ethical     │   │  capability.md   │   │                 │   │  exec summary│
│  charter     │   │  (per team)      │   │  Skill:         │   │              │
│              │   │                  │   │  aig-validate   │   │  Skills:     │
│  Skill:      │   │  Skill:          │   │                 │   │  aig-assess  │
│  aig-        │   │  aig-interview   │   │                 │   │  aig-heatmap │
│  interview   │   │                  │   │                 │   │  aig-matrix  │
└──────────────┘   └──────────────────┘   └─────────────────┘   └──────────────┘
```

---

## 8. Integration with AI Opportunity Assessment Framework

The 6-dimension AI Opportunity Assessment Framework is the scoring engine. The AIG Toolset integrates with it as follows:

- **`ai-use-idea.md`** fields are structured to map 1:1 to the Framework's 6 dimensions
- **`aig-assess` skill** uses the Framework's scoring guidance and weight distribution to generate draft scores
- **`ai-opportunity-scorecard.md`** mirrors the Framework's structure exactly — same dimensions, same weights, same verdict matrix
- **`aig-heatmap` skill** uses the verdict matrix (Proceed / Proceed with conditions / Pilot / Defer / Do not proceed) for color coding

The Framework itself is not modified. It serves as the authoritative reference for scoring logic.

---

## 9. Non-Goals (Out of Scope for V1)

- **Web dashboard / SaaS platform** — the visual Governance Portal is a future phase; V1 is all Markdown + CLI agents
- **DORA / NIS 2 / AI Act compliance tracking** — regulatory governance modules will be added as a separate phase
- **`.docx` template generation** — V1 focuses on Markdown only; Word export can be added later via the `docx` skill
- **Real-time collaboration** — teams work asynchronously via Git; no live editing features
- **Automated data ingestion** — V1 relies on manual template filling; API integrations with tools like ServiceNow, Jira, or LeanIX are future scope
