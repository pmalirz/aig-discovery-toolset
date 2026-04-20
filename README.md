# AIG Toolset — AI Governance for Enterprise Transformation

> A structured, repeatable methodology and toolkit for consultants and Enterprise Architects assessing enterprise AI readiness, identifying high-potential AI opportunities, and governing the AI adoption journey.

---

## What Is This?

The AIG Toolset is a **"Governance as Code"** repository. It provides everything a consultant or EA team needs to walk into an organization, assess where AI can create the most value, and produce actionable, data-backed recommendations — all using version-controlled Markdown files analyzed by AI agent skills.

## Who Is This For?

| Role | What you get |
|---|---|
| **Consultant / Enterprise Architect** | Step-by-step playbooks, structured templates, and AI agent skills to run a complete AI readiness assessment |
| **C-Suite / Executive Sponsor** | Clear, visual outputs — heatmaps, scorecards, and executive summaries that drive investment decisions |
| **Department Heads & Team Leads** | Simple templates to describe your team, processes, and pain points — no technical knowledge required |
| **Any Employee** | A straightforward way to propose AI ideas and have them evaluated fairly |

## Repository Structure

```
aig-toolset/
├── docs/guidelines/          # Consultant playbooks (how to run workshops, interviews, synthesis)
├── templates/                # Standardized Markdown templates with YAML frontmatter
├── tracker/                  # Per-engagement working directory
│   └── pillars/*/sources/    #   Raw docs shared by teams + interview notes
│   └── pillars/*/teams/      #   Silver layer: structured team cards, capabilities, ideas
├── skills/                   # Agent skills (skills.sh) for validation, scoring, and visualization
└── PROJECT_PLAN.md           # Implementation tracker
```

## Quick Start

### For Consultants — Starting a New Engagement

1. **Read the guidelines** — start with `docs/guidelines/01-engagement-kickoff.md`
2. **Copy templates** — duplicate the blank templates from `templates/` into your `tracker/pillars/` structure
3. **Run workshops** — follow the guideline playbooks to gather data from the client
4. **Validate data** — use the `aig-validate` agent skill to check completeness
5. **Score opportunities** — use the `aig-assess` skill to generate draft scorecards
6. **Generate reports** — use `aig-heatmap` and `aig-matrix` to produce executive deliverables

### For Team Leads — Contributing Your Team's Data

1. Open the `templates/team-card.md` file
2. Fill in the YAML frontmatter fields (team name, tech stack, pain points, etc.)
3. Write a brief narrative in the body sections
4. Save the file to `tracker/pillars/<your-pillar>/teams/<your-team>-team-card.md`

### For Anyone — Proposing an AI Idea

1. Open the `templates/ai-use-idea.md` file
2. Describe the problem, your proposed AI solution, and the expected impact
3. Save to `tracker/pillars/<relevant-pillar>/ideas/<idea-name>.md`

## The Assessment Framework

All scoring is based on the AI Opportunity Assessment Framework, which evaluates ideas across 6 weighted dimensions:

| Dimension | Weight | What it measures |
|---|:---:|---|
| Business Value & Strategic Fit | 30% | Impact, strategic alignment, scalability, time-to-value |
| Data Readiness & Availability | 20% | Data existence, volume, quality, governance |
| Technical Feasibility & Architecture Fit | 15% | Solution maturity, integration complexity, infrastructure |
| Cost, Effort & ROI | 15% | CAPEX, OPEX, payback period, change burden |
| Risk Profile | 10% | Regulatory, output quality, privacy, adoption resistance |
| Organisational & Change Readiness | 10% | Executive sponsorship, talent, culture, governance |

## Methodology

The AIG assessment follows a 4-week engagement model:

1. **Week 1 — Engagement Kickoff**: Executive workshop, ethical AI charter, company profile
2. **Week 2 — Department Discovery**: Team-by-team interviews mapping processes, data, and pain points
3. **Week 3 — AI Ideation**: Creative workshops where anyone can propose AI use cases
4. **Week 4 — Synthesis & Reporting**: Agent-assisted scoring, heatmap generation, executive presentation

📖 **Read the full story:** [The AIG Journey: A Narrative Guide to AI Adoption](docs/AIG_JOURNEY.md) — Follow an Enterprise Architect from kickoff to final executive readback using the AIG toolset.

## License

This toolset is proprietary. All rights reserved.
