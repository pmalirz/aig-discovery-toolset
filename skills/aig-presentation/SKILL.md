---
name: aig-presentation
description: "Use this skill to generate executive presentations and interactive dashboards to present the outcomes of an AI assessment to stakeholders. Trigger when the user asks to 'prepare a readback', 'generate a presentation', 'show the outcomes to stakeholders', or 'create an interactive dashboard'."
---

# AIG Presentation Skill

As an AIG Agent, your role during the Synthesis & Reporting phase is to translate all the structured data captured in the `tracker/` directory into compelling, executive-level deliverables.

This skill acts as an orchestrator. You will not rely on hardcoded templates. Instead, you will dynamically extract the findings and leverage specialized tools to craft the deliverables on demand.

## Your Workflow

When triggered to run a presentation or readback generation:

### 1. Data Aggregation

First, read the essential artifacts from the `tracker/` directory:

- `tracker/engagement-tracker.md` (for overall metrics and phase status)
- `tracker/company-profile.md` (for strategic priorities)
- `tracker/scorecards/*-scorecard.md` (to find the top scoring AI use cases)
- `tracker/reports/ai-readiness-heatmap.md` (if it exists)

### 2. Craft the PPTX Slide Deck

You must generate a professional, highly visual Executive Presentation using the **`pptx` skill**.

- Read the instructions in the `pptx` skill (`.agents/skills/pptx/SKILL.md`).
- Use the `pptx` skill's generation capabilities (such as `pptxgenjs` or Python tools) to build a `tracker/reports/executive-readback.pptx` file.
- **Content Structure**:
  - Slide 1: Title & Strategic Context (from `company-profile.md`)
  - Slide 2: AI Readiness Heatmap Summary
  - Slide 3-5: Deep dives on the Top 3 AI Ideas (from the highest scoring scorecards)
  - Slide 6: Recommended Next Steps
- **Design Guidelines**: Follow the exact design, typography, and QA instructions outlined in the `pptx` skill. Do not create plain black-and-white text slides.

### 3. Craft the Interactive HTML Dashboard
You must generate a beautiful, statically served, one-page HTML dashboard to present the data interactively.
- Copy the HTML template from `./skills/aig-presentation/templates/dashboard-template.html` and save it to `tracker/reports/interactive-dashboard.html`.
- Inject the aggregated data into the designated HTML comment placeholders (e.g., `<!-- OVERALL_SCORE_PLACEHOLDER -->`, `<!-- HEATMAP_TABLE_PLACEHOLDER -->`, `<!-- TOP_IDEAS_CARDS_PLACEHOLDER -->`).
- **Visual Diagrams**: Fill the `<!-- MERMAID_CAPABILITY_MAP_PLACEHOLDER -->` with a beautiful **Mermaid.js** diagram representing the capability architecture, team structures, or workflow pipelines. If the `beautiful-mermaid` skill is available, leverage it to ensure these diagrams are stunning.
- **Design Quality**: Ensure the aesthetic remains premium. If you add new UI elements (like buttons or sliders), apply the principles from the `ui-ux-pro-max` skill to maintain the high-quality corporate layout and shadow effects provided in the template.

### 4. Update the Tracker

Once both deliverables are generated:

- Update `tracker/engagement-tracker.md` to mark the presentation and reporting tasks as complete.
- Provide a summary to the consultant outlining the files generated and requesting them to review the draft deliverables before the stakeholder meeting.
