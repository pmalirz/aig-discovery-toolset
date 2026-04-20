# The AIG Journey: A Narrative Guide to AI Adoption

*This is the story of how an Enterprise Architect (EA) uses the AIG Toolset to guide a company from AI curiosity to a structured, prioritized AI roadmap.*

---

## 1. The Spark: Setting the Stage

It starts when the C-suite realizes they need an AI strategy. The CEO has heard about generative AI, the CIO is worried about shadow IT, and department heads are demanding budgets for AI tools. They call you—the Enterprise Architect or Consultant.

You don't start by looking at tools. You start by opening the **AIG Toolset**.

Your first step is the **Engagement Kickoff** (`docs/guidelines/01-engagement-kickoff.md`). You sit down with the executive sponsor and explain that AI adoption isn't just an IT project—it's an organizational transformation. You establish an **Ethical AI Charter** (`05-ethical-ai-charter.md`), ensuring leadership commits to transparency, human-in-the-loop oversight, and employee upskilling rather than mere job replacement.

You fire up your AI assistant and use the `aig-interview` skill during a 2-hour executive workshop (`02-executive-workshop.md`). As the executives talk, the agent listens, extracting strategic priorities, risk appetite, and regulatory constraints (like AI Act or DORA exposure). It automatically generates the **Company Profile** (`tracker/company-profile.md`).

The stage is set. You know the boundaries.

## 2. Into the Trenches: Department Discovery

You can't automate what you don't understand. 

Over the next two weeks, you conduct **Department Discovery** sessions (`03-department-discovery.md`). You sit with the Head of Claims, the Lead of Customer Service, and the VP of Finance. 

These aren't interrogations; they are empathetic conversations. The input you gather comes from two complementary sources:

**Source 1 — Documents shared by teams.** When interviewing teams and assessing possibilities, unstructured documents are frequently shared by other people. A team lead might hand you a 40-page Word document detailing their processes, an Excel sheet of their software inventory, or a PowerPoint deck of their future vision. As the EA or consultant, your role is to gather this input from others. By convention, these unstructured documents should be stored in appropriate folders depending on what they describe (e.g., `tracker/pillars/claims/sources/`).

**Source 2 — Interview transcriptions and meeting notes.** The conversations themselves produce valuable raw material — meeting notes you jot down, voice transcriptions from recorded sessions, or workshop flipchart summaries. These capture the context, concerns, and nuances that no document fully conveys. You store these alongside the shared documents in the same `sources/` folder.

Instead of spending hours manually parsing this raw data, you trigger the `aig-interview` skill to translate **both** sources into the **md silver layer**, based on which you then make the assessments:
> *"I just uploaded the Claims Processing docs and my interview notes to their folder. Extract their tech stack, data domains, and pain points into a Team Card, and map out their capabilities."*

**⚡ Here is where the AIG toolset first sparks:** The skill delegates to its specialized tools (`docx`, `xlsx`, `pptx`, `pdf`), reads the files, parses your transcriptions, and structures the unstructured chaos into the md silver layer — crisp, machine-readable YAML frontmatter and Markdown. It merges insights from both the shared documents and the interview notes, flags conflicts between them, and highlights gaps — *"The team mentions 'lots of manual data entry' but didn't quantify the hours"* — so you know exactly what to ask in the follow-up. 

By the end of this phase, your `tracker/pillars/` directory is filled with this silver layer of rich **Team Cards** and **Business Capabilities**, creating a Git-versioned "As-Is" architecture.

## 3. The Democratization of Ideas: AI Ideation

Now comes the fun part. You run **AI Ideation Workshops** (`04-ai-ideation-workshop.md`). 

You don't just ask the data scientists for ideas; you ask the people doing the actual work. A junior underwriter proposes an idea: *"I spend 15 hours a week cross-referencing policy PDFs. Can an AI do that?"*

She fills out the **AI Use Idea** template (`ai-use-idea.md`) in plain language. She doesn't need to know if it requires a Vector DB or a fine-tuned LLM. She just describes the problem, the proposed solution, and the time saved.

Ideas flood into the `tracker/pillars/*/ideas/` directories.

## 4. The Intelligence Layer: Validation & Scoring

With dozens of ideas, team cards, and capability maps collected, it's time for the magic of Governance-as-Code.

First, you run the **Validation Check**:
> *"Agent, run `aig-validate` on the tracker."*

The agent scans the entire repository. It ensures every required YAML field is filled, scores are within the 1-5 range, and cross-references (like an idea pointing to a non-existent capability) are unbroken. It outputs a `validation-report.md`. You chase down a few missing details, and the data is clean.

Next, you run the **Assessment Engine**:
> *"Agent, use `aig-assess` to score all submitted ideas."*

**⚡ The second spark: Automated, objective scoring.** The agent acts as your junior analyst. It reads every idea, cross-references it with the submitter's Team Card and the Company Profile, and applies the rigorous **6-Dimension Scoring Framework**. It calculates Business Value, Data Readiness, Technical Feasibility, Cost/ROI, Risk, and Org Readiness. 

For each idea, it generates an **AI Opportunity Scorecard** (`tracker/scorecards/`). It assigns a draft score (e.g., 4.12), recommends a verdict (*"Proceed with conditions"*), and writes evidence statements. Crucially, it flags low-confidence areas: *"Data quality score is self-reported as a 5; recommend independent audit."*

You, the EA, review the scorecards. You adjust a technical feasibility score down because you know a legacy system is harder to integrate with than the agent realizes. You own the final judgment.

## 5. Seeing the Matrix: Architectural Cross-Reference

Before deciding what to build, you need to understand the blast radius. 
> *"Agent, run `aig-matrix`."*

The agent generates TOGAF-style Enterprise Architecture matrices (`tracker/reports/architecture-matrices.md`). It maps Capabilities to Applications, and Applications to Data Domains. 

It highlights a massive insight: **The AI Opportunity Cluster Map**. It turns out that Claims Intake, Invoice Processing, and HR Onboarding all share the exact same pain point—extracting data from unstructured PDFs. Instead of building three separate solutions, you realize you can build one central Intelligent Document Processing (IDP) platform to serve all three. 

## 6. The Readback: Executive Summary & Heatmap

It’s Week 4. You are walking into the boardroom for the executive readback session.

You don't bring a 100-page slide deck of raw data. You bring the output of your final skill:
> *"Agent, run `aig-heatmap`."*

The agent has generated a beautiful **AI Readiness Heatmap** (`tracker/reports/ai-readiness-heatmap.md`) and an **Executive Summary**. 

You project the Heatmap. The executives can visually see that while the Customer Service team is highly open to AI (🟢), their data quality is a systemic blocker (🔴). 

You present the **Top 5 Prioritized Initiatives**, backed by rigorous, data-driven scorecards, not just gut feelings. You present the **Top 3 Organizational Blockers**—convincing the C-suite that before they buy flashy AI tools, they must invest in data governance.

Finally, you present the **Phased Roadmap**:
- **Wave 1 (Months 1-3):** Quick wins to build momentum (e.g., Email Classification).
- **Wave 2 (Months 3-6):** Strategic pilots requiring process redesign.
- **Wave 3 (Months 6-12):** Scaling the shared IDP platform identified in your matrix analysis.

## The Result

The C-suite approves the roadmap. But the real victory isn't just the presentation. 

Because the AIG Toolset is Git-based "Governance-as-Code," you aren't leaving behind dead artifacts on a SharePoint drive. You are leaving behind a living, queryable, structured database of the enterprise's exact state of AI readiness. 

As teams mature, they simply update their Markdown files. As new ideas arise, they submit a PR. The agents continuously re-score and re-validate.

You haven't just delivered an assessment; you've installed a permanent AI governance operating system.

---

## Best Practices for AI Adoption Assessment

When running this methodology, keep these core principles in mind:

1. **Assess the Process, Not Just the Technology**
   AI shouldn't pave a cow path. Before applying AI to a process, evaluate if the process itself is broken. A highly manual, convoluted process often needs redesigning (or elimination) before it needs a language model.
   
2. **Prioritize Data Quality Over AI Hype**
   The most common blocker in any AI readiness assessment is data quality. *Always* drill deep into the `Data Readiness` dimension. If data is locked in unstructured formats or undocumented databases, surface this as the primary prerequisite.
   
3. **Capture the "Human in the Loop"**
   When scoring `Risk Profile`, ensure the assessment considers the human element. An AI system that fully automates a decision is vastly riskier than one that drafts a recommendation for a human to review. Focus early use cases on augmentation, not automation.
   
4. **Quantify the Pain**
   Don't accept "it takes a lot of time." Push for hours per week, error rates, and financial impact. The AIG validation skills are designed to flag unquantified pain points because you cannot calculate ROI without a baseline.
   
5. **Score Objectively, Decide Subjectively**
   The `aig-assess` skill provides a rigorous, data-driven draft score. However, consultants and EAs must review these scorecards. You understand political dynamics, unwritten constraints, and organizational appetite in ways the agent cannot. Use the score as a baseline to challenge assumptions, not as an unalterable verdict.
   
6. **Not Everything Needs AI (Avoid the "AI Hammer")**
   Often, the solution to a business problem is standard RPA, an API integration, or a simple script—not a complex, expensive AI model. Forcing AI into a problem where traditional technology is cheaper and more reliable often leads to project failure. The AIG assessment is designed to surface exactly this: if the framework reveals that a problem is purely rule-based and highly structured, the recommendation generated by the toolset should be traditional automation, saving the AI budget for truly complex cognitive tasks.
