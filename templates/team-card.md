---
schema: aig/team-card/v1
team_name: ""
pillar: ""                      # which business pillar this team belongs to
entity: ""                      # legal entity (if multi-entity organization)
team_lead: ""
headcount: 0
headcount_breakdown:
  permanent: 0
  contractors: 0
  offshore: 0
business_domain: ""             # e.g., "Claims Processing", "HR Operations", "Customer Service"
mission_statement: ""           # one sentence: what does this team exist to do?

tech_stack:
  languages: []                 # e.g., ["Java", "Python", "SQL"]
  frameworks: []                # e.g., ["Spring Boot", "React"]
  databases: []                 # e.g., ["Oracle", "PostgreSQL", "MongoDB"]
  cloud_platforms: []           # e.g., ["Azure", "AWS", "On-premise"]
  key_tools: []                 # e.g., ["Jira", "Confluence", "Jenkins", "ServiceNow"]

data_domains_owned:
  - name: ""
    description: ""
    sensitivity: ""             # public | internal | confidential | restricted
    format: ""                  # structured | unstructured | mixed
    volume: ""                  # e.g., "~500K records", "~2TB documents"
    quality_self_assessment: 0  # 1–5

applications_owned:
  - name: ""
    category: ""                # core | supporting | legacy | shadow_it
    technology: ""              # e.g., "SAP", "Custom Java", "Excel-based"
    age_years: 0
    satisfaction: 0             # 1–5 (team's satisfaction with this application)
    users_count: 0              # approximate number of users across the organization
    replacement_candidate: false

applications_consumed:          # applications owned by other teams that this team depends on
  - name: ""
    owning_team: ""
    satisfaction: 0             # 1–5
    pain_points: []

current_ai_usage:
  - tool: ""                    # e.g., "ChatGPT (personal)", "GitHub Copilot", "Azure OpenAI"
    purpose: ""                 # what are they using it for?
    sanctioned: false           # is this officially approved by the organization?
    frequency: ""               # daily | weekly | occasionally | tried_once

ai_openness:
  score: 0                     # 1=Actively resistant, 2=Cautious, 3=Open but uncertain, 4=Enthusiastic, 5=Already experimenting
  excitement_areas: []          # what AI capabilities excite them most?
  concerns: []                  # e.g., ["job security", "data privacy", "reliability", "skills gap", "regulatory"]
  previous_experience: ""       # any past experience with AI/ML/automation projects?

top_manual_tasks:               # top 3–5 most time-consuming repetitive manual tasks
  - task: ""
    description: ""
    hours_per_week: 0           # estimated team hours spent on this task per week
    frequency: ""               # daily | weekly | monthly | ad_hoc
    error_prone: false
    data_involved: ""           # what data does this task touch?
    current_tooling: ""         # what tool/system is currently used (if any)?

key_processes:                  # the major business processes this team owns or contributes to
  - process: ""
    role: ""                    # owner | contributor | consumer
    volume: ""                  # e.g., "200 claims/day", "50 reports/month"
    sla: ""                     # e.g., "24-hour turnaround", "end of business day"

collaboration:
  upstream_teams: []            # teams that feed work or data into this team
  downstream_teams: []          # teams that depend on this team's output
  external_partners: []        # external vendors, partners, or customers this team interacts with

assessment_date: ""             # YYYY-MM-DD
assessed_by: ""                 # consultant name
---

# Team Card: [Team Name]

## Team Description

_A 2–3 paragraph overview of what this team does, their role within the organization, and how they contribute to the broader business objectives. Written collaboratively during the department discovery session._

## Key Responsibilities

_Bullet list of the team's core responsibilities. Focus on what they do, not how they do it._

- _Responsibility 1_
- _Responsibility 2_
- _Responsibility 3_

## Pain Points & Bottlenecks

_What are the biggest frustrations this team faces? Where do they lose time? What keeps the team lead up at night? Be specific — "data quality issues in customer records" is better than "data problems"._

### Process Bottlenecks

_Where do workflows slow down or break? Which handoffs between teams cause delays?_

### Technology Frustrations

_Which systems are painful to use? Where is the team working around broken or inadequate tooling?_

### Data Challenges

_What data do they need but can't easily access? Where is data quality a problem?_

## Data Landscape Notes

_Describe the data this team works with in practical terms. Where does it come from? Where does it go? What format is it in? How much manual data handling is involved?_

## Cultural Observations

_The consultant's private notes on the team's culture, dynamics, and readiness for change. This section is for the consultant's use and should be handled with discretion._

- **Change readiness:** _How has this team responded to past changes?_
- **Leadership style:** _How does the team lead manage? Top-down or collaborative?_
- **Morale indicators:** _Any signals about team health, burnout, or frustration?_
- **AI perception:** _How does the team talk about AI — with curiosity, fear, or indifference?_

---

# Guidance

## How to Fill This Template

This template should be filled **collaboratively** during the **Department Discovery Session** (see `docs/guidelines/03-department-discovery.md`). The consultant drives the conversation; the team lead provides the information.

### Tips for the Conversation

1. **Start with the mission** — ask "What does your team exist to do?" before diving into processes and tools. This sets context and makes the team feel heard.
2. **Ask for the pain first** — "What takes the most time?" and "What's most frustrating?" yield better data than "Describe your processes."
3. **Watch for shadow IT** — when asking about tools, ask "What do you actually use day-to-day, including anything unofficial?" Many teams use Excel, ChatGPT, or personal scripts that aren't on anyone's radar.
4. **Quantify where possible** — "How many invoices do you process per week?" is more useful than "We process a lot of invoices."
5. **Don't judge** — if a team is using Excel for something that should be in a database, note it without commenting. Judgment shuts down honesty.
6. **Note the body language** — the Cultural Observations section is for your private notes on what you observed during the session. Was the team lead protective? Were team members eager to share or guarded?

### YAML Frontmatter Fields

| Field | How to fill it |
|---|---|
| `team_name` | Official team name as used internally |
| `pillar` | Must match a pillar name from `company-profile.md` |
| `entity` | Legal entity this team belongs to (relevant for multi-entity groups) |
| `headcount_breakdown` | Distinguish permanent, contractor, and offshore staff — this affects AI training and adoption feasibility |
| `tech_stack` | List all technologies the team actively uses. Include "legacy" systems they're stuck with |
| `data_domains_owned` | Data domains this team is the official owner or steward of. `quality_self_assessment` is their own rating |
| `applications_owned` | Applications this team builds, maintains, or is accountable for. Flag `replacement_candidate` for aging systems |
| `applications_consumed` | Applications the team depends on but doesn't control. Pain points here often reveal integration opportunities |
| `current_ai_usage` | Be explicit about sanctioned vs. unsanctioned. Shadow AI is not a problem to suppress — it's a signal of demand |
| `ai_openness.score` | The consultant's assessment, informed by the conversation — not just what the team lead says |
| `top_manual_tasks` | The gold mine for AI opportunity identification. Push for specifics: hours, frequency, error rates |

### What "Good" Looks Like

A good team card is:
- **Honest about AI readiness** — reflects actual capability and enthusiasm, not what the team thinks you want to hear
- **Quantified** — hours per week, documents per day, error rates where possible
- **Connected** — shows which other teams and systems this team depends on, revealing the integration landscape
- **Practical** — focuses on what the team actually does, not what the org chart says they should do

---

# Example

```yaml
---
schema: aig/team-card/v1
team_name: "Claims Processing"
pillar: "Insurance Operations"
entity: "Nordvik Insurance SE"
team_lead: "Martina Ehrlich"
headcount: 34
headcount_breakdown:
  permanent: 28
  contractors: 4
  offshore: 2
business_domain: "Claims Processing"
mission_statement: "Process insurance claims accurately and efficiently, ensuring fair outcomes for policyholders within regulatory and SLA requirements."

tech_stack:
  languages: ["ABAP", "SQL", "VBA"]
  frameworks: []
  databases: ["SAP HANA", "Oracle 12c"]
  cloud_platforms: ["Azure (limited — email and Teams only)"]
  key_tools: ["SAP FS-CM", "Microsoft Excel", "Outlook", "SharePoint", "ABBYY FineReader"]

data_domains_owned:
  - name: "Claims records"
    description: "All property, casualty, and motor claims data including claim details, assessments, settlements, and payment history"
    sensitivity: "confidential"
    format: "structured"
    volume: "~3.2M active records, ~800K new claims/year"
    quality_self_assessment: 3
  - name: "Claims documents"
    description: "Scanned claim forms, medical reports, police reports, photos, invoices, correspondence"
    sensitivity: "restricted"
    format: "unstructured"
    volume: "~12TB, growing ~3TB/year"
    quality_self_assessment: 2

applications_owned:
  - name: "SAP FS-CM (Claims Management)"
    category: "core"
    technology: "SAP"
    age_years: 11
    satisfaction: 2
    users_count: 120
    replacement_candidate: false
  - name: "Claims Tracking Spreadsheet"
    category: "shadow_it"
    technology: "Excel-based"
    age_years: 5
    satisfaction: 3
    users_count: 34
    replacement_candidate: true

applications_consumed:
  - name: "SAP FS-PM (Policy Management)"
    owning_team: "Policy Administration"
    satisfaction: 3
    pain_points: ["Slow API responses", "Data sync delays of up to 4 hours"]
  - name: "Document Management System (OpenText)"
    owning_team: "Technology & Data"
    satisfaction: 2
    pain_points: ["Poor search functionality", "No OCR on older documents", "Frequent timeout errors"]

current_ai_usage:
  - tool: "ChatGPT (personal accounts)"
    purpose: "Drafting claim correspondence, summarizing medical reports"
    sanctioned: false
    frequency: "daily"
  - tool: "ABBYY FineReader"
    purpose: "OCR on claims forms — semi-automated data extraction"
    sanctioned: true
    frequency: "daily"

ai_openness:
  score: 4
  excitement_areas: ["Automated document reading", "Claims triage and routing", "Fraud pattern detection"]
  concerns: ["Data privacy with medical documents", "Regulatory compliance for automated decisions", "Accuracy — wrong claim decisions have real consequences"]
  previous_experience: "Participated in the Claims OCR pilot (2025). Team found the technology promising but frustrated by poor integration with SAP."

top_manual_tasks:
  - task: "Claims intake data entry"
    description: "Manually keying data from scanned claim forms, emails, and phone notes into SAP FS-CM. Includes cross-referencing policy details."
    hours_per_week: 120
    frequency: "daily"
    error_prone: true
    data_involved: "Claim forms, policy records, customer correspondence"
    current_tooling: "SAP FS-CM, manual typing"
  - task: "Document sorting and classification"
    description: "Receiving mixed batches of documents (medical reports, invoices, photos, forms) and manually classifying and routing them to the correct claim file."
    hours_per_week: 45
    frequency: "daily"
    error_prone: true
    data_involved: "Unstructured documents in PDF, TIFF, JPEG formats"
    current_tooling: "OpenText DMS, manual review"
  - task: "Reserve estimation research"
    description: "Researching comparable past claims to estimate appropriate financial reserves for new claims. Involves searching SAP, Excel reports, and sometimes paper files."
    hours_per_week: 30
    frequency: "daily"
    error_prone: false
    data_involved: "Historical claims data, actuarial tables, settlement records"
    current_tooling: "SAP FS-CM queries, Excel pivot tables"

key_processes:
  - process: "First Notification of Loss (FNOL)"
    role: "owner"
    volume: "~400 claims/week"
    sla: "Acknowledge within 24 hours, initial assessment within 3 business days"
  - process: "Claims assessment and settlement"
    role: "owner"
    volume: "~350 settlements/week"
    sla: "Standard claims settled within 14 business days"
  - process: "Fraud referral"
    role: "contributor"
    volume: "~15 referrals/week"
    sla: "Flag within 48 hours of detection"

collaboration:
  upstream_teams: ["Customer Service (FNOL intake)", "Broker Management (broker-submitted claims)"]
  downstream_teams: ["Finance (payment processing)", "Legal (litigated claims)", "Reinsurance (large loss notification)"]
  external_partners: ["Loss adjusters (3 firms)", "Medical assessors", "Repair network garages"]

assessment_date: "2026-04-16"
assessed_by: "Senior EA Consultant"
---
```

## Team Description (Example)

The Claims Processing team is the operational heart of Nordvik Insurance. With 34 staff, they handle the end-to-end lifecycle of insurance claims — from first notification through assessment, settlement, and payment. The team processes approximately 400 new claims per week across property, casualty, and motor lines.

The team is experienced and domain-knowledgeable but is constrained by aging technology. Their core system (SAP FS-CM, 11 years old) requires significant manual data entry, and the document management system (OpenText) lacks modern search and OCR capabilities. The team has developed workarounds — including an Excel-based tracking spreadsheet used by all 34 staff — that signal both resourcefulness and systemic tooling gaps.

## Pain Points & Bottlenecks (Example)

### Process Bottlenecks
- **Claims intake is the biggest bottleneck.** Each new claim requires 15–20 minutes of manual data entry from paper/scanned forms into SAP. With 400 claims/week, this consumes ~120 hours of team time weekly.
- **Document classification adds another layer.** Mixed document batches arrive from multiple channels and must be manually sorted, classified, and attached to the correct claim file. Misfiled documents cause downstream delays.

### Technology Frustrations
- **SAP FS-CM is deeply unloved.** The team rates it 2/5. The interface is slow, search is poor, and the system requires data to be entered in a specific sequence that doesn't match the actual claim workflow.
- **OpenText DMS is the second-biggest pain point.** Search rarely returns useful results, older documents have no OCR, and timeout errors during peak hours force staff to retry operations repeatedly.

### Data Challenges
- **Medical documents are the hardest to work with.** They arrive in inconsistent formats (handwritten, PDF, fax), contain sensitive data (restricted classification), and are critical for assessment accuracy.
- **Historical claims data is trapped in SAP.** Building the knowledge base for reserve estimation requires complex queries that only 2 team members know how to write. The rest rely on those colleagues or use gut feeling.
