---
schema: aig/ai-use-idea/v1
idea_name: ""
idea_id: ""                     # short unique identifier, e.g., "IDEA-001"
submitter: ""
submitter_role: ""              # e.g., "Claims Handler", "Team Lead", "CTO"
submitter_team: ""
pillar: ""
related_process: ""             # links to a business-process.md process_id if applicable
submission_date: ""             # YYYY-MM-DD
last_updated: ""                # YYYY-MM-DD
status: "draft"                 # draft | submitted | under_review | scored | approved | deferred | rejected
version: 1

# ─────────────────────────────────────────────
# Dimension 1 — Business Value & Strategic Fit
# ─────────────────────────────────────────────
problem_statement: ""           # What manual work, legacy application, or inefficiency does this address?
current_pain: ""                # How does this problem manifest today? What is the human cost?
proposed_ai_approach: ""        # What AI technique could solve this? e.g., "LLM-based document extraction", "Predictive ML model for churn"
ai_approach_type: ""            # extraction | classification | generation | prediction | recommendation | optimization | search | conversation | other

target_kpis:
  - metric: ""                  # e.g., "Hours saved per week", "Error rate reduction", "Customer satisfaction improvement"
    current_value: ""           # current measured or estimated value
    target_value: ""            # what you expect after AI implementation
    measurement_method: ""      # how will this be measured?
  - metric: ""
    current_value: ""
    target_value: ""
    measurement_method: ""

strategic_alignment: ""         # Which company strategic priority does this support? (reference company-profile.md)
time_to_value: ""               # quick_win (<8 weeks) | medium (3–6 months) | long (6+ months)
scalability_potential: ""       # Does value grow with scale? Explain briefly.

# ─────────────────────────────────────────────
# Dimension 2 — Data Readiness
# ─────────────────────────────────────────────
data_sources:
  - name: ""
    description: ""             # what is this data?
    exists: true                # does this data currently exist?
    accessible: true            # can it be accessed programmatically?
    format: ""                  # structured | semi-structured | unstructured
    quality_estimate: 0         # 1=Poor, 5=Excellent
    volume: ""                  # e.g., "~500K records", "~10GB documents"
    contains_pii: false
    contains_sensitive: false   # commercially sensitive, health data, financial data
    notes: ""

data_gaps: ""                   # What data would be ideal but doesn't exist or isn't accessible?

# ─────────────────────────────────────────────
# Dimension 3 — Technical Feasibility
# ─────────────────────────────────────────────
ai_technique: ""                # classification | generation | prediction | extraction | search | recommendation | anomaly_detection | optimization | conversation | other
ai_technique_maturity: ""       # commodity (proven, widely used) | established (proven, fewer implementations) | emerging (research stage)
build_vs_buy: ""                # build_custom | buy_saas | fine_tune_foundation_model | use_api | undecided
integration_target_systems:     # which existing systems would this AI need to connect to?
  - system: ""
    integration_type: ""        # API | file_transfer | database | UI_automation | manual
    complexity: ""              # low | medium | high
integration_complexity_overall: "" # low | medium | high
infrastructure_requirements: "" # What compute, storage, or platform requirements? e.g., "GPU for training", "Azure OpenAI endpoint", "On-premise only"

# ─────────────────────────────────────────────
# Dimension 4 — Cost & Effort
# ─────────────────────────────────────────────
estimated_effort: ""            # S (<4 weeks) | M (1–3 months) | L (3–6 months) | XL (6+ months)
estimated_implementation_cost: "" # rough € estimate or range, e.g., "€20K–€50K"
estimated_annual_opex: ""       # rough annual operating cost, e.g., "€5K–€15K/year"
estimated_annual_value: ""      # rough € estimate of annual value delivered, e.g., "€150K–€200K"
payback_period: ""              # e.g., "<6 months", "12–18 months"
resource_requirements:          # what people/skills are needed?
  - role: ""                    # e.g., "Data Engineer", "ML Engineer", "Domain Expert"
    effort: ""                  # e.g., "2 months full-time", "10% ongoing"
    available_internally: false

# ─────────────────────────────────────────────
# Dimension 5 — Risk Profile
# ─────────────────────────────────────────────
risk_flags:
  regulatory_exposure: ""       # none | low | medium | high
  regulatory_details: ""        # which regulations? e.g., "AI Act high-risk — automated decision on insurance claims"
  hallucination_impact: ""      # trivial | moderate | severe | catastrophic
  hallucination_mitigation: ""  # how will AI errors be caught? e.g., "Human review gate", "Confidence threshold"
  pii_involved: false
  pii_types: []                 # e.g., ["name", "address", "health_data", "financial_data"]
  human_review_gate: true       # will a human review AI outputs before they are actioned?
  reversibility: ""             # easy | moderate | difficult — can AI decisions be easily reversed if wrong?
  reputational_risk: ""         # low | medium | high — could a failure make headlines?

# ─────────────────────────────────────────────
# Dimension 6 — Organizational Readiness
# ─────────────────────────────────────────────
executive_sponsor: ""           # name and title, or "none identified"
champion_in_team: ""            # is there an enthusiastic individual in the target team? name/role
team_enthusiasm: 0              # 1=Resistant, 2=Cautious, 3=Open, 4=Enthusiastic, 5=Already experimenting
change_impact: ""               # minimal | moderate | significant | transformational
change_description: ""          # what would change for the people doing this work today?
training_requirements: ""       # what training would users need?
---

# AI Use Idea: [Idea Name]

## The Problem

_Describe the problem in plain language. What is happening today that is painful, slow, expensive, or error-prone? Who suffers from this problem — employees, customers, or both? Include specific numbers where possible: "Our team spends 120 hours per week manually entering claims data, with an 8% error rate that causes rework and delays for customers."_

## Proposed Solution

_How could AI help? Describe the envisioned solution at a high level. You don't need to be technical — "An AI that reads claim documents and fills in the form automatically" is perfectly fine. If you have technical knowledge, feel free to be more specific._

### How It Would Work (User's Perspective)

_Walk through the experience from the user's point of view. What would change in their daily workflow? What would they still do manually? Where is the human-in-the-loop?_

1. _Step 1_
2. _Step 2_
3. _Step 3_

## Expected Benefits

_What improvements do you expect? Be specific and quantify where possible._

- **Time saved:** _e.g., "60 hours per week across the team"_
- **Quality improvement:** _e.g., "Error rate reduced from 8% to <2%"_
- **Customer impact:** _e.g., "Claims acknowledged within 1 hour instead of 24 hours"_
- **Cost reduction:** _e.g., "€150K annual savings in labor costs"_
- **Strategic value:** _e.g., "Enables the company to scale claims volume without hiring"_

## Known Risks & Mitigations

_What could go wrong? Be honest — a well-identified risk is much better than a surprise._

| Risk | Likelihood | Impact | Mitigation |
|---|:---:|:---:|---|
| _Risk description_ | _Low / Medium / High_ | _Low / Medium / High_ | _How to address it_ |

## Dependencies

_What needs to be true for this idea to work? Does it depend on another system being upgraded, data being cleaned, or a team agreeing to change their process?_

- _Dependency 1_
- _Dependency 2_

---

# Guidance

## How to Fill This Template

This template is designed for **anyone** in the organization — you don't need to be technical. The most valuable ideas often come from people closest to the work.

### For Non-Technical Submitters

Focus on these sections. Leave the rest blank — the consultant will help fill in the technical details:

1. **YAML fields:** `idea_name`, `submitter`, `submitter_role`, `submitter_team`, `problem_statement`, `current_pain`
2. **Body:** "The Problem" and "Expected Benefits"
3. **Optional:** "Proposed Solution" — even a rough idea like "AI that can read emails" is helpful

### For Technical Submitters

Fill in as many YAML fields as you can. The more complete the data, the more accurate the automated scoring will be. Pay special attention to:
- `target_kpis` — quantified metrics are the single most important factor in scoring
- `data_sources` — data readiness is the #1 failure point for AI projects; be honest about quality
- `risk_flags` — especially `hallucination_impact` and `human_review_gate`

### For Consultants Running Ideation Workshops

Use the `aig-interview` skill with `--type ideation` to guide participants through this template conversationally. The skill will ask plain-language questions and auto-fill the YAML.

### Mapping to the Assessment Framework

Each section of this template feeds directly into the AI Opportunity Assessment Framework:

| Template Section | Framework Dimension | Weight |
|---|---|:---:|
| Problem statement, KPIs, strategic alignment, time-to-value | Dimension 1: Business Value & Strategic Fit | 30% |
| Data sources, data gaps | Dimension 2: Data Readiness & Availability | 20% |
| AI technique, build vs buy, integration, infrastructure | Dimension 3: Technical Feasibility & Architecture Fit | 15% |
| Effort, cost, value, payback, resources | Dimension 4: Cost, Effort & ROI | 15% |
| Risk flags (regulatory, hallucination, PII, reversibility) | Dimension 5: Risk Profile | 10% |
| Sponsor, enthusiasm, change impact, training | Dimension 6: Organisational & Change Readiness | 10% |

### What Makes an Idea Score Well?

| Factor | High score | Low score |
|---|---|---|
| **Business impact** | Quantified: "saves 60 hours/week, €150K/year" | Vague: "will make things faster" |
| **Data readiness** | Data exists, is accessible, and is reasonably clean | Data doesn't exist or is locked in legacy systems |
| **Technical maturity** | Uses proven AI techniques (classification, extraction) | Requires cutting-edge research with uncertain outcomes |
| **Risk profile** | Low regulatory exposure, human review gate, reversible | High-risk AI Act category, no human oversight, irreversible |
| **Sponsorship** | Named executive sponsor with budget authority | No sponsor identified |

### What Gets an Idea Rejected?

Common reasons for rejection (score < 2.0):
- No measurable business value identified
- Required data does not exist and cannot be created
- Regulatory risk is prohibitive (e.g., automated medical decisions without human oversight)
- No executive sponsor and no path to obtaining one
- Estimated cost far exceeds projected value

**Rejection is not failure.** A rejected idea may become viable when data matures, regulations clarify, or organizational readiness improves. The scorecard documents why it was deferred, so it can be revisited.

---

# Example

```yaml
---
schema: aig/ai-use-idea/v1
idea_name: "Intelligent Claims Intake"
idea_id: "IDEA-001"
submitter: "Martina Ehrlich"
submitter_role: "Team Lead"
submitter_team: "Claims Processing"
pillar: "Insurance Operations"
related_process: "PROC-CLM-001"
submission_date: "2026-04-17"
last_updated: "2026-04-17"
status: "submitted"
version: 1

problem_statement: "Claims intake requires 15–20 minutes of manual data entry per claim from unstructured documents (emails, scanned forms, PDFs). With 400 claims/week, this consumes ~120 staff-hours/week and has an 8% error rate causing downstream rework."
current_pain: "Staff spend their most productive hours on mechanical data entry instead of claims assessment. Morale is low in the intake sub-team. During peak periods (storms, floods), the backlog grows rapidly and SLA compliance drops below 80%."
proposed_ai_approach: "Deploy an Intelligent Document Processing (IDP) pipeline using Azure AI Document Intelligence + LLM post-processing to automatically extract structured data from claim documents and pre-populate SAP FS-CM fields. Human reviewers validate and correct before submission."
ai_approach_type: "extraction"

target_kpis:
  - metric: "Staff hours on data entry per week"
    current_value: "120 hours/week"
    target_value: "30 hours/week (review-only)"
    measurement_method: "Time tracking in SAP workflow"
  - metric: "Data entry error rate"
    current_value: "8%"
    target_value: "<2%"
    measurement_method: "Rework rate tracking in SAP FS-CM"
  - metric: "Average intake cycle time"
    current_value: "45 minutes per claim"
    target_value: "12 minutes per claim"
    measurement_method: "SAP workflow timestamps"

strategic_alignment: "Claims automation — reduce processing time from 14 days to under 5 days"
time_to_value: "medium"
scalability_potential: "High — AI extraction scales linearly with volume at near-zero marginal cost. Critical for handling surge events (storms, floods) without temporary staffing."

data_sources:
  - name: "Historical claims records"
    description: "3.2M structured claim records in SAP FS-CM with all extracted fields"
    exists: true
    accessible: true
    format: "structured"
    quality_estimate: 4
    volume: "~3.2M records"
    contains_pii: true
    contains_sensitive: true
    notes: "Good training data for field extraction patterns"
  - name: "Claims document archive"
    description: "Scanned forms, emails, photos, medical reports, invoices stored in OpenText DMS"
    exists: true
    accessible: true
    format: "unstructured"
    quality_estimate: 2
    volume: "~12TB"
    contains_pii: true
    contains_sensitive: true
    notes: "Older documents lack OCR. Scan quality varies widely."
  - name: "Email claim submissions"
    description: "Incoming claim notification emails in shared mailbox"
    exists: true
    accessible: true
    format: "unstructured"
    quality_estimate: 2
    volume: "~280 emails/week"
    contains_pii: true
    contains_sensitive: false
    notes: "Free-text, no standard format"

data_gaps: "No existing labelled dataset mapping documents to extracted fields. Would need to create ~500 labelled examples for fine-tuning/validation."

ai_technique: "extraction"
ai_technique_maturity: "commodity"
build_vs_buy: "use_api"
integration_target_systems:
  - system: "SAP FS-CM"
    integration_type: "API"
    complexity: "high"
  - system: "OpenText DMS"
    integration_type: "API"
    complexity: "medium"
  - system: "Email server (Exchange)"
    integration_type: "API"
    complexity: "low"
integration_complexity_overall: "medium"
infrastructure_requirements: "Azure OpenAI endpoint (already available in Nordvik's Azure tenant). Azure AI Document Intelligence service. No GPU needed — API-based."

estimated_effort: "M"
estimated_implementation_cost: "€80K–€120K"
estimated_annual_opex: "€15K–€25K (API costs + monitoring)"
estimated_annual_value: "€180K–€250K (90 hours/week × €40/hour avg cost + error reduction savings)"
payback_period: "<12 months"
resource_requirements:
  - role: "Data Engineer"
    effort: "2 months full-time"
    available_internally: true
  - role: "ML/AI Engineer"
    effort: "3 months full-time"
    available_internally: false
  - role: "Claims domain expert"
    effort: "20% for 3 months (validation and testing)"
    available_internally: true
  - role: "SAP integration specialist"
    effort: "1 month full-time"
    available_internally: true

risk_flags:
  regulatory_exposure: "medium"
  regulatory_details: "AI Act — document extraction is not high-risk per se, but outputs feed into claims decisions which may be. GDPR — processes customer PII including potentially health data."
  hallucination_impact: "moderate"
  hallucination_mitigation: "Human review gate — all AI-extracted fields are presented to a claims handler for validation before submission to SAP. Confidence scores displayed per field."
  pii_involved: true
  pii_types: ["name", "address", "policy_number", "date_of_birth", "health_data"]
  human_review_gate: true
  reversibility: "easy"
  reputational_risk: "low"

executive_sponsor: "Thomas Brenner, VP Insurance Operations"
champion_in_team: "Martina Ehrlich, Claims Processing Team Lead"
team_enthusiasm: 4
change_impact: "moderate"
change_description: "Claims intake staff would shift from manual data entry to AI-assisted review. Their role evolves from 'data typist' to 'quality reviewer'. Requires training on the new review interface and understanding of confidence scores."
training_requirements: "Half-day training on the review interface. Ongoing coaching for 2 weeks after launch. Clear escalation path for edge cases the AI can't handle."
---
```

## The Problem (Example)

The Claims Processing team at Nordvik Insurance handles approximately 400 new insurance claims per week. Each claim arrives as an unstructured document — a scanned paper form, a free-text email, a PDF attachment, or a combination of these. A claims handler must read each document, extract 20–30 data fields (policyholder name, date of loss, claim type, damage description, estimated amount, third parties involved, etc.), and manually key them into SAP FS-CM.

This process takes **15–20 minutes per claim** and consumes approximately **120 staff-hours per week** — nearly 4 full-time equivalents dedicated entirely to typing. The manual nature of the work produces an **8% error rate** (incorrect policy numbers, wrong dates, misclassified claim types), which causes downstream rework in the assessment stage.

During surge events (storms, floods, winter damage), claim volumes can triple. The team cannot scale data entry capacity proportionally, leading to SLA breaches and growing backlogs that take weeks to clear.
