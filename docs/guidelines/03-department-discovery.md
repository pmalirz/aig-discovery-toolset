# Guideline 03: Department Discovery Sessions

> **Duration:** 45–60 minutes per team
> **Participants:** Consultant + Team Lead (+ 1–2 senior team members, optional)
> **Outputs:** Filled `team-card.md` and `business-capability.md` (one or more per team)
> **Prerequisite:** Executive Workshop completed, communication sent to organization

---

## Purpose

Department Discovery is where the real data lives. While executives provide strategic context, team leads and their people know what actually happens day-to-day — the workarounds, the pain points, the data quality issues, and the tasks that eat hours every week.

Your job is to make this **a conversation, not an interrogation**. The best data comes from people who feel heard, not studied.

---

## Preparation

### Before Each Session

- [ ] Review the team's position in the organizational structure (from `company-profile.md`)
- [ ] Note which pillar this team belongs to
- [ ] Check if the executive workshop flagged this team or its domain as a priority area
- [ ] Have blank `team-card.md` and `business-capability.md` templates ready
- [ ] If using the `aig-interview` skill, run `aig-interview --type department` to start the guided flow

### Scheduling Tips

- **Batch by pillar** — schedule all teams within a pillar on the same day or consecutive days
- **Allow 15 minutes between sessions** — for note completion and mental reset
- **Offer async completion** — for remote teams or reluctant participants, allow them to fill the `team-card.md` template independently. Offer a 15-minute call to walk through questions.
- **Don't exceed 4 sessions per day** — quality degrades after 4; your notes become thinner and less insightful
- **Schedule the most critical teams first** — if the executive workshop identified priority areas, start there

### What to Tell Participants in Advance

Send via the Project Coordinator, 2–3 days before:

> **Subject: AI Assessment — Your Team's Discovery Session**
>
> Hi [Team Lead],
>
> As part of the AI assessment [Executive Sponsor] announced, I'd like to schedule a 45-minute session with you (and optionally 1–2 senior team members) to learn about your team's work.
>
> We'll discuss:
> - What your team does day-to-day
> - Where the biggest time sinks and frustrations are
> - What data and systems you work with
> - How you feel about AI — what excites or concerns you
>
> This is a conversation, not an audit. There are no wrong answers. The goal is to understand your world so we can identify where AI might genuinely help.
>
> No preparation is needed, but if you'd like to think ahead: "What are the 3 tasks that take the most time each week?"
>
> [Consultant Name]

---

## The Session

### Session Flow (45–60 minutes)

| Time | Block | Goal |
|---|---|---|
| 0:00–0:05 | **Opening** | Set the tone, explain what will happen |
| 0:05–0:15 | **Team overview** | Understand who they are and what they do |
| 0:15–0:30 | **Pain points & manual work** | Find the gold — repetitive, error-prone, time-consuming tasks |
| 0:30–0:40 | **Data & systems landscape** | Map what data they use, where it lives, what tools they depend on |
| 0:40–0:50 | **AI perception & readiness** | Gauge openness, excitement, fears |
| 0:50–0:55 | **Quick-fire round** | Capture anything missed |
| 0:55–1:00 | **Wrap-up** | Thank them, explain what happens next |

---

### Block 1: Opening (5 minutes)

Set the frame and build trust:

> "Thanks for making time. I'm here to learn about your team and your work — what goes well, what's frustrating, and where AI might help. This isn't about finding problems with your team. It's about finding opportunities. Everything you share will feed into our analysis, but it won't be used for performance reviews or headcount decisions."

**Key points to make:**
- This is a conversation, not a form-filling exercise
- You'll take notes and share a summary for their review
- Their team will see the relevant findings — this isn't a secret report to management
- You're interested in reality, not the org chart version of reality

---

### Block 2: Team Overview (10 minutes)

**Questions:**

1. **"In one sentence, what does your team exist to do?"**
   - This reveals how the team sees its own mission
   - If they struggle to answer, that's a signal

2. **"How many people are on the team? What's the split between permanent staff, contractors, and offshore?"**
   - Contractor-heavy teams face different AI adoption dynamics (knowledge loss risk, training challenges)

3. **"What are your team's top 3 responsibilities?"**
   - Listen for: the gap between what they're supposed to do and what they actually spend time on

4. **"Who do you depend on? Who depends on you?"**
   - Upstream/downstream relationships reveal integration points and handoff pain

> **💡 Mapping tip — Capabilities vs. Processes:** As the team describes their work, listen for two distinct things:
> - **Capabilities** = *what* they do ("We handle claims intake") — these become lightweight `business-capability.md` documents
> - **Processes** = *how* they do it step-by-step ("First we open the email, then we classify it, then we enter it into SAP...") — these become the core `business-process.md` documents
>
> Keep them separate. The capability rarely changes; the process is where AI discovery happens.

---

### Block 3: Pain Points & Manual Work (15 minutes)

**This is the most important block.** The tasks identified here become the raw material for AI use ideas.

**Questions:**

5. **"What takes the most time every week? Walk me through a typical day."**
   - Let them talk. Don't interrupt. The first answer is often the polished version; the real pain comes out in the elaboration.
   - Probe: "How many hours does that take across the team per week?"

6. **"What work do you or your team dread doing?"**
   - This surfaces the tasks people find demotivating — often the most ripe for AI
   - Probe: "Why is it dreaded? Is it boring, error-prone, high-pressure, or something else?"

7. **"Where do mistakes happen most often? What are the consequences?"**
   - Error-prone tasks with real consequences are high-priority AI candidates
   - Probe: "How are errors caught today? What does rework look like?"

8. **"Are there things your team should be doing but can't, because routine work takes up all the time?"**
   - This surfaces the opportunity cost — what value the team could create if freed from mechanical work

9. **"Walk me through your most annoying process, step by step."**
   - As they describe it, note each step, who does it, and the pain level (see `business-process.md` `steps`)
   - Draw it on a whiteboard or in notes as they talk — making the process visible often triggers additional insights

**Quantification prompts** (use throughout):
- "Roughly how many times per day/week does that happen?"
- "How many minutes/hours does each one take?"
- "What percentage require rework?"
- "What does that cost in terms of time/money/customer impact?"

---

### Block 4: Data & Systems Landscape (10 minutes)

**Questions:**

10. **"What are the main systems and applications you use every day?"**
    - List them all — including Excel, SharePoint, email, personal tools
    - For each: "On a scale of 1–5, how satisfied are you with it?"
    - Flag systems rated 1–2 — these are either replacement candidates or integration pain points

11. **"What data do you work with? Where does it come from? Where does it go?"**
    - Trace the data flow through the team
    - Probe: "How clean is that data? Do you spend time fixing it?"

12. **"Do you own any data sets or databases that other teams depend on?"**
    - Data domain ownership is critical for AI — you can't train on data nobody owns

13. **"Are there things you wish you could look up but can't easily find?"**
    - Search-intensive work is a prime candidate for RAG-based AI solutions

---

### Block 5: AI Perception & Readiness (10 minutes)

**Handle this block with care.** People's feelings about AI are tied to their feelings about their job security, their relevance, and their identity as professionals.

**Questions:**

14. **"Has your team used any AI tools — officially or unofficially?"**
    - If yes: "What for? Was it useful?"
    - If they mention ChatGPT, Copilot, etc.: "Is that officially sanctioned by the company?"
    - Note: Don't judge shadow AI usage. It's a demand signal.

15. **"When you hear 'AI in your work,' what comes to mind?"**
    - Open-ended on purpose. Listen for both excitement and fear.
    - If they mention specific use cases, capture them — these may become `ai-use-idea.md` submissions

16. **"What would concern you most about introducing AI into your team's work?"**
    - Common concerns and how to respond:

    | Concern | Response |
    |---|---|
    | "Will it replace our jobs?" | "The focus is on tasks, not jobs. We're looking at the work nobody enjoys — data entry, document sorting — not the judgment and expertise your team brings." |
    | "What if the AI makes mistakes?" | "Good question. Any AI we recommend will have human review. Your team's expertise is what catches the errors." |
    | "We don't have the skills for AI" | "You don't need to. If AI is adopted, it would be integrated into the tools you already use. Your role would evolve, not transform overnight." |
    | "Our data is too messy" | "That's incredibly common and actually one of the things we're assessing. Messy data doesn't mean no AI — it means we need to pick the right approach." |

17. **"On a scale of 1–5, how open is your team to trying AI? 1 being 'please don't' and 5 being 'we've been waiting for this.'"**
    - Note: this is a self-report. Form your own assessment based on the whole conversation.

---

### Block 6: Quick-Fire Round (5 minutes)

**Fast-paced closing questions:**

18. **"If you could automate one thing tomorrow, what would it be?"**
19. **"What's the one thing about your work that would surprise senior management?"**
20. **"Is there anything I should have asked but didn't?"**

---

### Block 7: Wrap-Up (5 minutes)

- Thank them for their time and honesty
- Explain what happens next: "I'll write up a summary based on our conversation. You'll have a chance to review it before it feeds into the assessment."
- Mention the AI Ideation Workshop: "In a few days, we'll run a workshop where anyone on your team can propose AI ideas. I'd love it if you encouraged your team to participate."
- Leave your contact details: "If anything else comes to mind, don't hesitate to reach out."

---

## After Each Session

### Immediate Actions (Within 1 Hour)

1. **Store shared documents** — if the team shared any materials (Word docs, spreadsheets, presentations, PDFs), save them to `tracker/pillars/<pillar>/sources/`. These are raw input for later translation.
2. **Store your interview notes** — save meeting notes, voice transcriptions, or workshop summaries to the same `sources/` folder alongside the shared documents.
3. **Translate into the silver layer** — use the `aig-interview` skill to translate both shared documents and your interview notes into structured templates:
   - The skill reads the `sources/` folder, delegates to specialized skills (`docx`, `xlsx`, `pptx`, `pdf`), and generates a draft `team-card.md` and `business-capability.md` with filled YAML frontmatter.
   - It flags gaps and conflicts between sources for your review.
4. **Review and adjust** — the generated silver-layer documents are drafts. Review them while the conversation is fresh:
   - Adjust the `ai_openness.score` based on your observation, not just their self-report
   - Fill in Cultural Observations with your private notes on team dynamics, leadership style, and morale
   - Log any AI ideas mentioned during the session for the ideation workshop

### Quality Checklist

Before moving to the next session, verify:

- [ ] `top_manual_tasks` has quantified hours per week (not just descriptions)
- [ ] `data_domains_owned` includes sensitivity classification
- [ ] `applications_owned` and `applications_consumed` are both filled (not just what they own)
- [ ] `current_ai_usage` includes both sanctioned and unsanctioned tools
- [ ] At least one `business-process.md` has been created
- [ ] The `ai_potential_indicators` flags in the process file are set based on evidence

---

## Handling Difficult Sessions

### The Resistant Team Lead

**Signals:** Short answers, arms crossed, checking phone, "we're too busy for this"

**Approach:**
- Acknowledge the time pressure: "I know you're busy. Let me make this as efficient as possible."
- Start with their pride: "Tell me about what your team does well. What are you most proud of?"
- Pivot to pain only after rapport: "What's the one thing that keeps you up at night about your operations?"
- Keep it short — a 30-minute session with honest answers beats a 60-minute session with defensive ones

### The Over-Enthusiastic Team Lead

**Signals:** "AI should do everything!" — lists 20 ideas, each one bigger than the last

**Approach:**
- Channel the energy: "I love the enthusiasm. Let me capture all these ideas."
- Ground in specifics: "For each idea — what data would it need? How many hours would it save?"
- Prioritize: "If you could only pick one, which would make the biggest difference?"

### The Skeptical Expert

**Signals:** "You don't understand how complex our work is. AI can't do what we do."

**Approach:**
- They're often right — and you should say so: "You're absolutely right that the judgment and expertise part of your work is not something AI can replicate."
- Redirect to the mechanical: "What about the parts before and after the judgment? The data gathering, the documentation, the reporting?"
- Validate their expertise: "Your deep knowledge of claims is exactly what makes the assessment accurate — AI could handle the prep work so you have more time for the work that requires your expertise."

---

## Efficiency Tips

- **Use the `aig-interview` skill** to translate shared documents and interview notes into silver-layer templates automatically — it reads the `sources/` folder and generates draft team cards and capability maps
- **Record sessions (with permission)** — if the team is comfortable, a recording lets you focus on the conversation instead of notes. Save the transcription to `sources/`.
- **Take photos of whiteboard drawings** — if you sketch a process flow together, photograph it and save to `sources/` alongside the shared docs
- **Encourage teams to share their existing docs** — process manuals, org charts, tech inventories. These go straight into `sources/` and the skill extracts what it can, flagging what's missing.
- **Send the filled template for review within 24 hours** — while memory is fresh, ask: "Did I capture this accurately?"
