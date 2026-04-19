# Guideline 02: Executive Workshop

> **Duration:** 2 hours
> **Participants:** C-suite, senior leadership, CIO/CTO, Chief Data Officer (if exists), Head of Compliance/Risk
> **Outputs:** Filled `company-profile.md`
> **Prerequisite:** Engagement kickoff completed, communication sent to organization

---

## Purpose

The Executive Workshop is where you capture the **strategic context** for the AI assessment. You need to understand what the organization is trying to achieve, how it makes decisions, what constraints it operates under, and how ready the leadership team is for AI-driven change.

This workshop is as much about **observation** as it is about data collection. The way executives talk about AI — their language, their body language, their disagreements — tells you as much about organizational readiness as their answers do.

---

## Preparation

### Materials Needed

- [ ] Blank `company-profile.md` template (printed or on screen for reference)
- [ ] Company's published strategy / annual report (review in advance)
- [ ] Industry regulatory landscape summary (AI Act applicability, DORA, NIS 2)
- [ ] Whiteboard or digital collaboration board (Miro/Mural) for mapping organizational structure
- [ ] Note-taking setup (laptop or, if using `aig-interview` skill, have it ready)

### Pre-Read for Executives

Send this to participants 2 days before the workshop:

> **Subject: AI Assessment — Executive Workshop Preparation**
>
> In preparation for our workshop on [date], it would be helpful if you could think about:
>
> 1. What are the top 3–5 strategic priorities for the organization over the next 1–3 years?
> 2. What processes or areas of the business do you believe have the most potential for AI?
> 3. What concerns do you have about AI adoption?
>
> No preparation is required — these are just thought-starters. We'll work through everything together in the session.

---

## Workshop Agenda

### Block 1: Strategic Landscape (40 minutes)

**Goal:** Understand the organization's strategic direction and where AI fits in that picture.

#### Opening (5 minutes)

Set the frame:
> "Today I want to understand your organization from the top — what you're trying to achieve, how you're structured, and where you see AI fitting in. There are no wrong answers. I'm here to learn from you."

#### Strategic Priorities Discussion (20 minutes)

**Key questions:**

1. **"What are the 3–5 most important strategic priorities for the organization right now?"**
   - Listen for: concrete goals vs. vague aspirations
   - Probe: "How would you measure success on that priority?"
   - Note: the order they list them in reveals relative importance

2. **"Which of these priorities could AI realistically accelerate?"**
   - Listen for: specificity vs. "AI could help everything"
   - Probe: "Can you give me a concrete example of how?"

3. **"What market pressures or competitive dynamics are you responding to?"**
   - Listen for: urgency, competitor mentions, regulatory pressure
   - This contextualizes why AI now vs. AI later

#### Organizational Structure (15 minutes)

**Key questions:**

4. **"Walk me through the organizational structure — the major divisions or pillars."**
   - Use the whiteboard to draw the structure as they describe it
   - Ask: "How autonomous are these pillars? Do they make their own technology decisions?"
   - Note: Which pillar gets mentioned first? With the most energy? With the most problems?

5. **"Are there shared services that cut across pillars? (IT, data, HR, finance)"**
   - These are often where data silos live and where cross-cutting AI opportunities exist

6. **"If we had to prioritize 2–3 pillars for this assessment, which would give us the most insight?"**
   - Useful if the organization is too large to assess everything

### Block 2: AI Landscape & Readiness (40 minutes)

**Goal:** Assess current AI maturity, existing initiatives, and the leadership team's mental model of AI.

#### Current AI State (15 minutes)

**Key questions:**

7. **"What AI or automation initiatives do you currently have running — whether formal or informal?"**
   - Listen for: production systems, pilots, failed experiments, shadow AI
   - Probe: "What happened with [that project]? Why did it succeed/struggle?"
   - Note: The gap between "what we've tried" and "what worked" is the most revealing data point

8. **"Are you aware of teams using tools like ChatGPT, Copilot, or other AI tools on their own?"**
   - Shadow AI signals unmet demand — this is a feature, not a bug
   - Probe: "How do you feel about that?"

#### AI Perception (15 minutes)

**Key questions:**

9. **"When you think about AI in your organization, what excites you?"**
   - Let them go first. Don't lead with your own views.
   - Listen for: specific use cases vs. general enthusiasm

10. **"What concerns you most about AI adoption?"**
    - Common responses and how to handle them:

    | Concern | What it signals | Follow-up |
    |---|---|---|
    | "Data quality" | Technical awareness, possibly burned before | "Tell me more — which data sets worry you?" |
    | "Job losses / unions" | Human impact awareness, change management need | "How has the organization handled automation in the past?" |
    | "Regulation" | Compliance awareness (good) or risk aversion (watch) | "Which regulations concern you specifically?" |
    | "Cost / ROI uncertainty" | Financial discipline (good) or analysis paralysis (watch) | "What ROI threshold would you need to see to proceed?" |
    | "We're not ready" | Realistic self-assessment | "What would 'ready' look like for you?" |
    | "Our competitors are ahead" | Urgency signal | "What have you seen competitors do?" |

11. **"How would you rate your organization's AI maturity on a 1–5 scale?"**
    - Their answer often reveals more than the number itself
    - A leader who says "2" with frustration is different from one who says "2" with acceptance
    - Note their self-assessment — you'll form your own independent assessment

#### Decision-Making & Risk (10 minutes)

**Key questions:**

12. **"How does this organization typically make technology investment decisions?"**
    - Listen for: committee/board approval, delegated authority, consensus-building, single decision-maker
    - This directly affects time-to-value and change management approach

13. **"What's your risk appetite for AI? Would you prefer proven, safe bets or are you open to more experimental approaches?"**
    - Translate to: `conservative | moderate | aggressive`

14. **"What budget range are you considering for AI initiatives in the first 12 months?"**
    - If they're uncomfortable with specifics: "Would you say under €100K, €100K–€500K, or over €500K?"
    - No budget = no sponsor commitment = high risk

### Block 3: Regulatory & Governance Context (20 minutes)

**Goal:** Understand regulatory constraints and existing governance structures.

**Key questions:**

15. **"Walk me through your regulatory landscape. Which of these apply to you: EU AI Act, DORA, NIS 2, GDPR (specific considerations)?"**
    - Most organizations know about GDPR but may not have assessed AI Act applicability
    - If they're uncertain: "I'll include a regulatory exposure assessment in our findings"

16. **"Do you have any existing AI governance policies, ethics guidelines, or an AI oversight committee?"**
    - If yes: ask to see the documents
    - If no: note this as a gap and introduce the Ethical AI Charter concept (Guideline 05)

17. **"Who would be accountable for an AI system if something went wrong — if it made an incorrect decision, exposed data, or produced biased output?"**
    - This question often produces uncomfortable silence — which is informative
    - If there's no clear answer, governance is immature

### Block 4: Wrap-Up & Next Steps (20 minutes)

**Goal:** Confirm scope, align on expectations, and schedule next steps.

18. **Playback:** Summarize what you've heard — the top 3 strategic priorities, the current AI state, the biggest concerns. Ask: "Did I capture that correctly?"

19. **Scope confirmation:** "Based on our discussion, I recommend we focus on [pillars]. Does that work?"

20. **Process preview:** "Over the next two weeks, I'll be running department discovery sessions with your team leads. Each is 45 minutes. I'll also run ideation workshops where anyone can propose AI ideas."

21. **Ask for the Ethical AI Charter discussion:** "Before we go further, I'd recommend we establish a brief set of ethical AI principles for this engagement. I have a template that works well. Can we schedule 30 minutes with a small cross-functional group?"

22. **Schedule the readback:** "The final output will be an executive presentation with a prioritized list of AI opportunities and a readiness heatmap. When would be a good date for that?"

---

## After the Workshop

### Immediate Actions (Same Day)

1. **Fill the `company-profile.md`** — transfer your notes into the template while the conversation is fresh
2. **Write the Executive Summary** — 2–3 paragraphs capturing the key takeaways
3. **Complete the Stakeholder Map** — note each participant's attitude toward AI and their influence level
4. **Update the `engagement-tracker.md`** — mark Phase 1 as in progress, log the artifacts

### Assessment Notes

After filling the template, write your private assessment notes:

- **AI maturity score (your assessment, not theirs):** Base this on evidence:
  - 1: No AI awareness or interest
  - 2: Exploring — have tried 1–2 things, nothing in production
  - 3: Piloting — active pilots with some success
  - 4: Scaling — production AI with plans to expand
  - 5: AI-native — AI embedded in core operations and strategy

- **Red flags to watch for:**
  - Executive team disagrees fundamentally about AI's role
  - No budget committed ("we'll find money if it's good" = no commitment)
  - All enthusiasm, no realism ("AI will transform everything")
  - All caution, no ambition ("we're not ready for any of this")
  - Decision-making is unclear or political

- **Green flags:**
  - Specific, quantified pain points identified by executives
  - Prior automation experience (even if it failed — they've been through change)
  - Named sponsor with budget authority
  - Willingness to engage on ethical considerations

---

## Tips for Facilitation

### Managing the Room

- **If one person dominates:** "That's a great point, [Name]. [Other person], what's your perspective on this?"
- **If the group is too polite:** "I'm hearing a lot of agreement. Is there a counter-argument or concern we should put on the table?"
- **If they jump to solutions:** "I love that you're already thinking about solutions. Let me capture that idea. For now, can we stay with understanding the problem space?"
- **If they're checking phones:** You've lost them. Shorten the session and offer to follow up 1:1.

### Language Choices

| Avoid | Use instead |
|---|---|
| "AI will replace..." | "AI can handle the repetitive parts, freeing people for..." |
| "Your processes are inefficient" | "There's an opportunity to streamline..." |
| "You're behind your competitors" | "There's an opportunity to leapfrog..." |
| "The assessment found problems" | "The assessment identified opportunities" |
| "Low AI maturity" | "Early in the AI journey — which means you can learn from others' mistakes" |
