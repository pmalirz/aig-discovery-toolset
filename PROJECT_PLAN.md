# AIG Toolset — Project Plan & Implementation Tracker

> **Spec:** [docs/superpowers/specs/2026-04-19-aig-toolset-design.md](docs/superpowers/specs/2026-04-19-aig-toolset-design.md)
> **Last updated:** 2026-04-19

---

## Project Overview

Build the AI Governance (AIG) Toolset — a "Governance as Code" repository providing consultant guidelines, Markdown templates, a per-engagement tracker structure, and AI agent skills for assessing enterprise AI readiness and opportunity.

---

## Implementation Phases

### Phase 1: Foundation & Templates
> **Goal:** Establish repository structure, create all 6 Markdown templates with examples and guidance.

| # | Task | Status | Notes |
|---|---|:---:|---|
| 1.1 | Initialize repository structure (`docs/`, `templates/`, `tracker/`, `skills/`) | ⬜ | Create directories and placeholder READMEs |
| 1.2 | Create `templates/company-profile.md` with YAML schema, example, and guidance | ⬜ | |
| 1.3 | Create `templates/team-card.md` with YAML schema, example, and guidance | ⬜ | |
| 1.4 | Create `templates/business-capability.md` with YAML schema, example, and guidance | ⬜ | |
| 1.5 | Create `templates/ai-use-idea.md` with YAML schema, example, and guidance | ⬜ | Maps to 6-dimension framework |
| 1.6 | Create `templates/ai-opportunity-scorecard.md` with YAML schema, example, and guidance | ⬜ | Mirrors `AI_Opportunity_Assessment_Framework.md` |
| 1.7 | Create `templates/engagement-tracker.md` with YAML schema, example, and guidance | ⬜ | |
| 1.8 | Create `tracker/` scaffold with sample pillar structure and `.gitkeep` files | ⬜ | |

### Phase 2: Consultant Guidelines
> **Goal:** Write all 6 consultant playbooks — step-by-step, empathy-led, with facilitation scripts.

| # | Task | Status | Notes |
|---|---|:---:|---|
| 2.1 | Write `docs/guidelines/01-engagement-kickoff.md` | ⬜ | Ethical framing, psychological safety, logistics |
| 2.2 | Write `docs/guidelines/02-executive-workshop.md` | ⬜ | 2-hour agenda, facilitation script, C-suite focus |
| 2.3 | Write `docs/guidelines/03-department-discovery.md` | ⬜ | 45–60 min session guide, interview script |
| 2.4 | Write `docs/guidelines/04-ai-ideation-workshop.md` | ⬜ | Creative workshop, ice-breakers, inclusive format |
| 2.5 | Write `docs/guidelines/05-ethical-ai-charter.md` | ⬜ | Charter template, facilitation guide |
| 2.6 | Write `docs/guidelines/06-assessment-synthesis.md` | ⬜ | Agent workflow, score review, exec presentation |

### Phase 3: Agent Skills (Core)
> **Goal:** Build the 3 essential agent skills that automate the assessment pipeline.

| # | Task | Status | Notes |
|---|---|:---:|---|
| 3.1 | Create `skills/aig-validate/SKILL.md` | ⬜ | Schema validation, completeness checks |
| 3.2 | Create `skills/aig-assess/SKILL.md` | ⬜ | 6-dimension scoring, draft scorecard generation |
| 3.3 | Create `skills/aig-heatmap/SKILL.md` | ⬜ | Readiness heatmap, executive summary generation |

### Phase 4: Agent Skills (Advanced)
> **Goal:** Build cross-reference analysis and interactive interview skills.

| # | Task | Status | Notes |
|---|---|:---:|---|
| 4.1 | Create `skills/aig-matrix/SKILL.md` | ⬜ | TOGAF matrices, Mermaid diagrams, gap analysis |
| 4.2 | Create `skills/aig-interview/SKILL.md` | ⬜ | Interactive guided interview, auto-fill templates |

### Phase 5: Documentation & Polish
> **Goal:** Write the top-level README, validate the end-to-end workflow, ensure consistency.

| # | Task | Status | Notes |
|---|---|:---:|---|
| 5.1 | Write root `README.md` with project overview, quickstart, and architecture diagram | ⬜ | |
| 5.2 | Validate end-to-end workflow: fill templates → run skills → verify outputs | ⬜ | |
| 5.3 | Create sample engagement data (fictional company) for testing skills | ⬜ | |
| 5.4 | Review all templates for schema consistency and cross-references | ⬜ | |

---

## Status Legend

| Icon | Meaning |
|:---:|---|
| ⬜ | Not started |
| 🔄 | In progress |
| ✅ | Complete |
| ⏸️ | Blocked / On hold |

---

## Future Phases (Out of Scope for V1)

| Phase | Description | Priority |
|---|---|:---:|
| **V2: Regulatory Modules** | AI Act compliance tracker, DORA governance, NIS 2 tracking templates and skills | High |
| **V2: DOCX Export** | Word document generation from Markdown templates using the `docx` skill | Medium |
| **V3: Governance Portal** | Static web dashboard (Vite/Next.js) generated from tracker data — heatmaps, matrices, executive views | Medium |
| **V3: ADR Templates** | Architecture Decision Record templates in multiple formats (MD, DOCX) | Medium |
| **V4: Strategy & Standard Templates** | Strategy Documentation Template, Standard/Reference Template | Low |
| **V4: Data Ingestion** | API integrations with ServiceNow, Jira, LeanIX for automated data collection | Low |

---

## Decision Log

| Date | Decision | Rationale |
|---|---|---|
| 2026-04-19 | Approach C: Document-first + agent analysis | Combines Markdown simplicity for data entry with AI-powered analysis. No web UI needed for V1. |
| 2026-04-19 | Tracker organized by pillars, not company name | Single repo per engagement; company has multiple entities, pillars, and teams — pillars are the natural grouping. |
| 2026-04-19 | Use `AI_Opportunity_Assessment_Framework.md` as the scoring engine | Already exists in the repo with 6 well-defined dimensions and weighted scoring — no need to reinvent. |
| 2026-04-19 | Agent skills built on skills.sh | Aligns with existing tooling in the repository; skills are portable and version-controlled. |
