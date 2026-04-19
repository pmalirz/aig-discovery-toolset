---
schema: aig/engagement-tracker/v1
engagement_name: ""             # descriptive name, e.g., "Nordvik Group AI Readiness Assessment"
client_organization: ""
engagement_start: ""            # YYYY-MM-DD
target_completion: ""           # YYYY-MM-DD
actual_completion: ""           # YYYY-MM-DD (filled when engagement completes)
consultant: ""
engagement_type: ""             # full_assessment | targeted_assessment | follow_up | workshop_only
status: "not_started"           # not_started | in_progress | synthesis | completed | on_hold

# Executive Sponsor & Key Contacts
stakeholders:
  executive_sponsor:
    name: ""
    title: ""
    email: ""
  project_coordinator:
    name: ""
    title: ""
    email: ""
  key_contacts:
    - name: ""
      role: ""
      area: ""                  # which pillar/entity

# Scope Definition
scope:
  entities_in_scope: []         # which legal entities
  pillars_in_scope: []          # which business pillars
  teams_in_scope: 0             # total number of teams to be assessed
  estimated_capabilities: 0     # estimated number of business capabilities to map
  exclusions: []                # anything explicitly out of scope

# Phase Tracking
phases:
  - name: "Phase 1: Engagement Kickoff & Executive Workshop"
    guideline_ref: "01-engagement-kickoff.md, 02-executive-workshop.md, 05-ethical-ai-charter.md"
    status: "not_started"       # not_started | scheduled | in_progress | completed
    scheduled_date: ""
    completed_date: ""
    artifacts_expected:
      - "company-profile.md"
      - "ethical-ai-charter (if applicable)"
    artifacts_completed: []
    notes: ""

  - name: "Phase 2: Department Discovery Sessions"
    guideline_ref: "03-department-discovery.md"
    status: "not_started"
    scheduled_date_range: ""    # e.g., "2026-04-21 to 2026-04-25"
    completed_date: ""
    sessions_planned: 0
    sessions_completed: 0
    teams_assessed: []          # list of team names that have completed their team card
    teams_pending: []           # list of team names still to be assessed
    artifacts_expected:
      - "team-card.md per team"
      - "business-capability.md per significant capability"
    artifacts_completed: []
    notes: ""

  - name: "Phase 3: AI Ideation Workshops"
    guideline_ref: "04-ai-ideation-workshop.md"
    status: "not_started"
    scheduled_date_range: ""
    completed_date: ""
    workshops_planned: 0
    workshops_completed: 0
    ideas_submitted: 0
    artifacts_expected:
      - "ai-use-idea.md per idea"
    artifacts_completed: []
    notes: ""

  - name: "Phase 4: Assessment & Scoring"
    guideline_ref: "06-assessment-synthesis.md"
    status: "not_started"
    scheduled_date: ""
    completed_date: ""
    ideas_total: 0
    ideas_scored: 0
    validation_run: false       # has aig-validate been run?
    assessment_run: false       # has aig-assess been run?
    consultant_review_complete: false
    artifacts_expected:
      - "ai-opportunity-scorecard.md per idea"
      - "validation-report.md"
    artifacts_completed: []
    notes: ""

  - name: "Phase 5: Synthesis & Executive Reporting"
    guideline_ref: "06-assessment-synthesis.md"
    status: "not_started"
    scheduled_date: ""
    completed_date: ""
    heatmap_generated: false
    matrix_generated: false
    executive_presentation_date: ""
    artifacts_expected:
      - "ai-readiness-heatmap.md"
      - "executive-summary.md"
      - "TOGAF matrices (via aig-matrix)"
    artifacts_completed: []
    notes: ""

# Overall Progress
progress:
  total_team_cards: 0
  completed_team_cards: 0
  total_capabilities_mapped: 0
  total_ideas_submitted: 0
  total_ideas_scored: 0
  total_ideas_approved: 0
  total_ideas_deferred: 0
  total_ideas_rejected: 0
  overall_completion_pct: 0     # 0–100
---

# Engagement Tracker: [Engagement Name]

## Engagement Overview

_Brief description of the engagement scope, objectives, and expected outcomes. Written at kickoff and updated as scope evolves._

## Timeline

```mermaid
gantt
    title Engagement Timeline
    dateFormat YYYY-MM-DD
    axisFormat %b %d

    section Phase 1
    Engagement Kickoff          :p1a, 2026-04-14, 1d
    Executive Workshop          :p1b, after p1a, 1d

    section Phase 2
    Department Discovery        :p2, 2026-04-21, 5d

    section Phase 3
    AI Ideation Workshops       :p3, 2026-04-28, 3d

    section Phase 4
    Assessment & Scoring        :p4, 2026-05-02, 3d

    section Phase 5
    Synthesis & Reporting       :p5, 2026-05-05, 3d
    Executive Presentation      :milestone, 2026-05-07, 0d
```

## Progress Dashboard

### Phase Status

| Phase | Status | Key Metric | Notes |
|---|:---:|---|---|
| 1. Kickoff & Exec Workshop | ⬜ | | |
| 2. Department Discovery | ⬜ | _0/0 teams_ | |
| 3. AI Ideation | ⬜ | _0 ideas_ | |
| 4. Assessment & Scoring | ⬜ | _0/0 scored_ | |
| 5. Synthesis & Reporting | ⬜ | | |

### Data Collection Progress

| Pillar | Teams Assessed | Capabilities Mapped | Ideas Submitted |
|---|:---:|:---:|:---:|
| _Pillar 1_ | _0/0_ | _0_ | _0_ |
| _Pillar 2_ | _0/0_ | _0_ | _0_ |
| _Pillar 3_ | _0/0_ | _0_ | _0_ |

### Status Legend

| Icon | Meaning |
|:---:|---|
| ⬜ | Not started |
| 📅 | Scheduled |
| 🔄 | In progress |
| ✅ | Complete |
| ⏸️ | On hold |
| ⚠️ | At risk |

## Key Decisions & Changes

_Log significant decisions, scope changes, or pivots during the engagement._

| Date | Decision | Rationale | Impact |
|---|---|---|---|
| _YYYY-MM-DD_ | _What was decided_ | _Why_ | _Effect on scope/timeline_ |

## Open Questions

_Track unresolved questions that need answers to proceed._

| # | Question | Raised By | Date Raised | Status | Resolution |
|---|---|---|---|:---:|---|
| 1 | _Question_ | _Name_ | _Date_ | ⬜ | |

## Risks & Issues

| # | Description | Type | Severity | Owner | Mitigation | Status |
|---|---|:---:|:---:|---|---|:---:|
| 1 | _Description_ | _Risk / Issue_ | _H / M / L_ | _Name_ | _Action_ | ⬜ |

## Meeting Notes

### [Date] — [Meeting Title]

**Attendees:** _List_

**Key Points:**
- _Point 1_
- _Point 2_

**Actions:**
- [ ] _Action 1 — Owner — Due date_
- [ ] _Action 2 — Owner — Due date_

---

# Guidance

## How to Use This Tracker

This is the **central coordination document** for an engagement. Update it after every workshop, session, or significant milestone.

### When to Update

| Event | What to update |
|---|---|
| After each workshop/session | Phase status, `sessions_completed`, `artifacts_completed`, meeting notes |
| When a team card is submitted | `completed_team_cards`, Data Collection Progress table |
| When an idea is submitted | `ideas_submitted`, Data Collection Progress table |
| When scoring is complete | `ideas_scored`, `ideas_approved/deferred/rejected` |
| When scope changes | Scope section, Key Decisions log |
| Weekly (recommended) | `overall_completion_pct`, Risks & Issues |

### Calculating Overall Completion

A simple weighted model:

| Phase | Weight | Completion metric |
|---|:---:|---|
| Phase 1 | 10% | Completed = company profile delivered |
| Phase 2 | 30% | % of teams assessed |
| Phase 3 | 20% | All planned workshops completed |
| Phase 4 | 25% | % of ideas scored and reviewed |
| Phase 5 | 15% | Reports generated and presented |

### Tips

- **Keep meeting notes brief** — capture decisions and actions, not transcripts
- **Update the Gantt chart** as dates shift — this is often the first thing stakeholders look at
- **Log scope changes formally** — scope creep is the #1 risk in assessment engagements
- **Track risks proactively** — a risk logged early with a mitigation plan is manageable; a surprise is not
