---
name: aig-interview
description: "Use this skill to create or populate AIG assessment templates (team cards, company profiles, business capabilities, AI use ideas) from any input source. Triggers when the user wants to: interview a team and capture results in a template, extract assessment data from uploaded documents (docx, xlsx, pdf, pptx), convert meeting notes or workshop output into structured YAML+Markdown templates, fill or complete an AIG template from raw notes or conversations, create a new tracker document from scratch with guided questions. Also triggers when the user says 'fill team card', 'create company profile', 'intake from document', 'process workshop notes', 'extract from spreadsheet for AIG', or references any template in the templates/ directory and wants to populate it."
---

# AIG Interview & Template Builder

This skill helps EA consultants translate unstructured input into the **md silver layer** — the structured Markdown + YAML documents that form the foundation for all downstream AIG assessment, scoring, and reporting.

In this workflow, unstructured documents (Word docs, spreadsheets, presentations, PDFs) are **shared by other people** during interviews and discovery sessions. The EA/consultant gathers this input from others and uses this skill to translate it into properly formatted silver-layer documents (team cards, company profiles, business capabilities, AI use ideas) that conform to the AIG template schemas.

## When to Use This Skill

- A team has **shared unstructured materials** (Word docs, spreadsheets, presentations, PDFs) that need to be translated into the md silver layer
- A consultant wants to **interview a team** and capture the results in a template
- A consultant has **raw notes** from a workshop or meeting that need to be structured
- Someone wants to **fill a template from scratch** with guided questions
- An existing template has **gaps** that need to be identified and filled

## Core Workflow

### Step 1: Identify the Template Type

Determine which template the user needs. The available templates are:

| Template | When to use | Template path |
|---|---|---|
| `company-profile.md` | Capturing organizational context from executive workshops | `templates/company-profile.md` |
| `team-card.md` | Documenting a team's composition, tech stack, data, and AI readiness | `templates/team-card.md` |
| `business-capability.md` | Mapping a strategic business capability (the stable "what") | `templates/business-capability.md` |
| `business-process.md` | Mapping a step-by-step workflow with pain points and AI indicators | `templates/business-process.md` |
| `ai-use-idea.md` | Capturing an AI opportunity proposal from anyone in the organization | `templates/ai-use-idea.md` |
| `engagement-tracker.md` | Initializing or updating the engagement tracking document | `templates/engagement-tracker.md` |

If the user hasn't specified which template, ask: "Which type of document are you creating? (company profile, team card, business capability, AI use idea, or engagement tracker)"

### Step 2: Identify the Input Source

The input can come from multiple sources. Handle each appropriately:

#### Source A: Interactive Interview (No Input Documents)

Walk the user through the template fields conversationally. Don't present the raw YAML — ask natural questions that map to the fields.

**For a team card interview, the conversation flow is:**

1. **Team basics:** "What's the team name? Who leads it? How many people — permanent, contractors, offshore?"
2. **Mission:** "In one sentence, what does this team exist to do?"
3. **Tech stack:** "What languages, frameworks, databases, and tools does the team use day-to-day?"
4. **Data ownership:** "What data domains does this team own or steward? For each: how sensitive is it, what format, roughly how much data, and how would you rate the quality 1–5?"
5. **Applications:** "What applications does the team own/maintain? What about apps you depend on but don't control?"
6. **Current AI usage:** "Is anyone on the team using AI tools — officially or unofficially? What for?"
7. **AI openness:** "On a scale of 1–5, how open is the team to AI? What excites them? What concerns them?"
8. **Manual tasks:** "What are the top 3–5 most time-consuming repetitive tasks? For each: how many hours per week, how often, is it error-prone, what data is involved?"
9. **Key processes:** "What major business processes does this team own or contribute to?"
10. **Collaboration:** "Who feeds work into your team? Who depends on your output?"

After each answer, confirm understanding and ask follow-up questions when answers are vague. Push for quantification: "You mentioned 'a lot of manual work' — can you estimate hours per week?"

**For other template types, follow the same pattern** — read the template's YAML fields and convert them into natural conversation questions. The template's `## Guidance` section contains tips on what to ask and how.

#### Source B: Unstructured Documents (Shared by Others)

During interviews and discovery, teams share unstructured documents that describe their processes, tech stack, data landscape, and vision. By convention, these source documents should be stored in a `sources/` folder within the appropriate pillar or team directory:

```
tracker/pillars/<pillar-name>/sources/      # pillar-level shared docs
tracker/pillars/<pillar-name>/teams/sources/ # team-specific shared docs
```

The EA/consultant gathers these files and triggers this skill to translate them into the md silver layer.

**Processing workflow:**

1. **Locate source documents** in the relevant `sources/` folder (or accept a path from the user)
2. **Read the document** by delegating to the appropriate specialized skill:
   - **`.docx`** → Use the `docx` skill reading approach
   - **`.xlsx`** → Use the `xlsx` skill data extraction capabilities
   - **`.pdf`** → Use the `pdf` skill to extract text and tables
   - **`.pptx`** → Use the `pptx` skill to extract text from slides and notes
   - **Multiple files** → Process each file and merge the extracted information

3. **Map extracted content to template fields:**
   - Identify which YAML fields can be filled from the document content
   - Extract specific data points (team names, headcounts, technology lists, process descriptions)
   - For structured data (spreadsheets), map columns to template fields
   - For narrative documents, extract relevant sections

4. **Flag gaps:** After extraction, clearly list which template fields could NOT be filled from the provided documents and suggest how to obtain the missing information.

#### Source C: Raw Notes or Transcripts

When the user provides meeting notes, workshop output, or conversation transcripts:

1. **Parse the notes** for key information that maps to template fields
2. **Structure the data** into YAML fields and narrative sections
3. **Ask for clarification** on ambiguous or incomplete information
4. **Generate the template** with filled fields and clearly marked gaps

### Step 3: Read the Template Schema

Before generating output, read the actual template file to get the exact YAML schema:

```
Read: templates/<template-type>.md
```

Extract the YAML frontmatter structure (everything between the first `---` markers) and the Markdown body sections. The generated document must conform exactly to this schema.

### Step 4: Generate the Silver-Layer Document

The output of this step is the **md silver layer** — the structured, machine-readable Markdown + YAML that all downstream skills (`aig-validate`, `aig-assess`, `aig-matrix`, `aig-heatmap`) operate on.

Create the output document with:

1. **Complete YAML frontmatter** — every field from the schema, filled with extracted data or left with meaningful defaults (empty string `""`, zero `0`, or `false` for booleans)
2. **Filled Markdown body** — narrative sections populated with the extracted or interview content
3. **Consultant notes** — any observations, flags, or follow-up items noted inline

**Output location:** Save to the appropriate tracker directory (the silver layer):

- Company profiles → `tracker/company-profile.md`
- Team cards → `tracker/pillars/<pillar-name>/teams/<team-name>-team-card.md`
- Business capabilities → `tracker/pillars/<pillar-name>/capabilities/<capability-name>.md`
- Business processes → `tracker/pillars/<pillar-name>/processes/<process-name>.md`
- AI use ideas → `tracker/pillars/<pillar-name>/ideas/<idea-name>.md`
- Engagement tracker → `tracker/engagement-tracker.md`

If the pillar directory doesn't exist, create it with the necessary subdirectories (teams/, capabilities/, ideas/, sources/).

### Step 5: Completeness Review

After generating the document, perform a completeness check:

1. **Required fields:** Flag any required YAML fields that are empty
2. **Scores and ratings:** Verify all 1–5 scores are filled and justified
3. **Quantification:** Flag narrative-only answers that should have numbers (e.g., "lots of manual work" should have hours/week)
4. **Cross-references:** Verify that `pillar` and `entity` values match existing tracker entries
5. **AI potential indicators:** For business processes, verify each boolean flag is set based on evidence

Present the completeness summary:

```markdown
## Completeness Report

✅ Filled: 42/50 fields (84%)
⚠️ Needs follow-up:
  - `data_domains_owned[0].quality_self_assessment`: No quality rating provided — ask team lead
  - `top_manual_tasks[2].hours_per_week`: Described as "significant" but not quantified
  - `ai_openness.concerns`: Team lead mentioned concerns but didn't elaborate
❌ Missing (critical):
  - `applications_consumed`: No information about external dependencies
```

## Multi-Document Processing

When processing multiple source documents from a `sources/` folder for a single template:

1. **Scan the sources folder** — list all files in the relevant `sources/` directory and process each one
2. **Merge intelligently** — if the same field appears in multiple documents, use the most specific/recent value
3. **Note conflicts** — if documents disagree (e.g., different headcount numbers), flag the conflict for consultant resolution
4. **Track provenance** — note which source document each data point came from, so the consultant can verify against the original shared materials

## Updating Existing Documents

When an existing template document already exists in the tracker:

1. **Read the existing document** first
2. **Identify gaps** — which fields are empty or contain placeholder text
3. **Merge new information** — fill gaps without overwriting existing content unless the user explicitly says to update
4. **Show what changed** — present a summary of additions and modifications

## Quality Standards

Every generated document should:

- Have valid YAML that parses without errors
- Use the exact field names from the template schema (no renamed or invented fields)
- Include the `schema` field matching the template version (e.g., `aig/team-card/v1`)
- Set `assessment_date` to today's date and `assessed_by` to the consultant name (ask if not known)
- Remove the `## Example` and `## Guidance` sections from the output (those belong in the template, not in filled documents)
- Keep the narrative Markdown sections but replace placeholder text with actual content

## Integration with Other Skills

This skill works alongside the broader AIG toolset:

- After creating documents, suggest running `aig-validate` to check completeness
- When creating AI use ideas, mention that `aig-assess` can generate a draft scorecard
- For business capabilities with high AI potential indicators (4+ true), flag them as priority candidates
