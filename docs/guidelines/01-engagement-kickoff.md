# Guideline 01: Engagement Kickoff

> **Duration:** Half-day (preparation) + 1-hour kickoff meeting
> **Participants:** Consultant, Executive Sponsor, Project Coordinator
> **Outputs:** Signed-off scope, communication plan, scheduled workshops
> **Prerequisite for:** All subsequent phases

---

## Purpose

The engagement kickoff sets the tone for the entire AI assessment. Done well, it builds trust, aligns expectations, and creates the psychological safety that teams need to share honest information about their processes and pain points. Done poorly, it creates suspicion, surface-level answers, and political maneuvering that corrupts the assessment data.

**Your goal in this phase is not to assess — it is to prepare the ground for honest assessment.**

---

## Before the Meeting

### 1. Preparation Checklist

- [ ] Review any existing documentation the client has shared (org charts, strategy documents, annual reports)
- [ ] Research the client's industry context (regulatory environment, competitive landscape, recent news)
- [ ] Prepare a blank `company-profile.md` template
- [ ] Prepare a blank `engagement-tracker.md` template
- [ ] Review the client's regulatory exposure (is this industry subject to AI Act, DORA, NIS 2?)
- [ ] Identify likely stakeholders based on org chart
- [ ] Prepare the communication template (see below) for the sponsor to distribute

### 2. Set Your Mindset

You are entering someone's organization. The people you meet have built their careers, processes, and expertise over years. Some will see AI as an exciting opportunity. Others will see it as a threat to their relevance, their team's headcount, or their comfort zone. Both reactions are valid.

**Your role is not to evangelize AI.** Your role is to understand where AI creates genuine value and where it doesn't — and to communicate that honestly.

Principles to carry into every interaction:

- **Empathy first.** Before asking about processes, understand the people. What are they proud of? What frustrates them? What are they afraid of?
- **No hidden agendas.** If the assessment will lead to recommendations that could change roles, say so upfront. "We're looking at where AI can help your team do more meaningful work" is honest. "Don't worry, nothing will change" is a lie that will catch up with you.
- **Respect domain expertise.** A claims handler who has processed 10,000 claims knows things that no AI model does. Your job is to capture that expertise, not replace it.
- **Transparency about the process.** People cooperate when they understand what's happening and why. People resist when they feel studied.

---

## The Kickoff Meeting

### Agenda (1 hour)

| Time | Topic | Purpose |
|---|---|---|
| 0:00–0:10 | **Introductions & context** | Who you are, what this engagement is about, and what it is *not* about |
| 0:10–0:25 | **Process overview** | Walk through the 4-week engagement model — what happens when, who is involved |
| 0:25–0:40 | **Scope alignment** | Confirm which entities, pillars, and teams are in scope. Identify exclusions. |
| 0:40–0:50 | **Logistics & communication** | Schedule the executive workshop, agree on the communication plan to the organization |
| 0:50–1:00 | **Questions & next steps** | Address concerns, confirm immediate actions |

### Key Messages to Deliver

#### What this assessment IS:

> "We're here to build a clear, honest picture of where AI can create the most value for [Company Name]. We'll map your processes, understand your data landscape, and identify specific opportunities — then score them objectively so you can make informed investment decisions."

#### What this assessment IS NOT:

> "This is not a cost-cutting exercise in disguise. We're not here to identify jobs to eliminate. We're looking for work that is repetitive, time-consuming, or error-prone — work that most people don't enjoy doing — and asking whether AI can handle that so your people can focus on the work that requires human judgment, creativity, and expertise."

#### How people will be involved:

> "We'll run short workshops with department heads and team leads — about 45 minutes each. We'll ask about what your team does, what takes the most time, and where the biggest frustrations are. We'll also open up a way for anyone in the organization to propose AI ideas. Every idea gets evaluated fairly using the same framework."

### Handling Common Sponsor Concerns

| Concern | Response |
|---|---|
| "Will this create panic about job losses?" | "Not if we communicate it well. The kickoff email (which I'll draft for you) frames this as 'looking for ways to make your work easier', not 'looking for ways to replace you'. And we back that up in every interaction." |
| "How do we avoid scope creep?" | "We define scope today — which pillars and teams are in. Everything else is out. If we discover something interesting outside scope, we note it for a future engagement." |
| "What if the assessment finds we're not ready?" | "That's a valid and useful outcome. Knowing where your gaps are — in data, skills, governance — is the first step to closing them. The scorecard tells you exactly what to fix and how." |
| "Can we keep this confidential from the board for now?" | "Absolutely. We scope the audience for each deliverable. The executive summary can be shared selectively." |

---

## After the Meeting

### 1. Draft the Communication to the Organization

Prepare this for the Executive Sponsor to send (in their voice, from their email). This is critical — the first message employees receive about this assessment shapes every subsequent interaction.

**Template:**

> Subject: AI Opportunity Assessment — What to Expect
>
> Team,
>
> As part of our strategic planning, we've engaged [Consultant/Firm] to help us understand where artificial intelligence can make our work easier and more effective.
>
> **What this means for you:**
> Over the next few weeks, some of you will be invited to short workshops (about 45 minutes) where we'll discuss your team's work, tools, and challenges. These are conversations, not audits — we want your honest perspective on what works well and what could be better.
>
> **What this is NOT:**
> This is not a cost-cutting exercise. We're not looking to replace jobs with AI. We're looking for repetitive, time-consuming tasks — the kind of work that most of us wish we could spend less time on — and asking whether technology can help.
>
> **Your voice matters:**
> We'll also open a way for anyone to propose AI ideas. If you've ever thought "it would be great if AI could do this for me," we want to hear it. Every idea will be evaluated using the same objective framework.
>
> **Questions?**
> [Project Coordinator] is your point of contact. Don't hesitate to reach out.
>
> [Executive Sponsor Name]

### 2. Initialize the Tracker

1. Copy `templates/engagement-tracker.md` to `tracker/engagement-tracker.md`
2. Fill in the engagement metadata (name, dates, scope, stakeholders)
3. Copy `templates/company-profile.md` to `tracker/company-profile.md` (to be filled in the executive workshop)
4. Create pillar directories under `tracker/pillars/` based on the agreed scope:
   ```
   tracker/pillars/<pillar-name>/teams/
   tracker/pillars/<pillar-name>/capabilities/
   tracker/pillars/<pillar-name>/ideas/
   ```

### 3. Schedule the Executive Workshop

- Duration: 2 hours
- Participants: C-suite and/or senior leadership (typically 4–8 people)
- Ideally within 2–3 days of kickoff
- See `02-executive-workshop.md` for the detailed agenda

### 4. Prepare the Interview Schedule

Work with the Project Coordinator to schedule Department Discovery sessions:
- Group by pillar
- Allow 45–60 minutes per team
- Schedule a 15-minute buffer between sessions (for note completion)
- Allow async completion for remote teams (they fill the `team-card.md` independently and submit it)

---

## Ethical Foundations

Before proceeding to the Executive Workshop, ensure the sponsor has agreed to these principles:

1. **No assessment data will be used for performance evaluation** — what teams share about their processes and inefficiencies will not be used against them
2. **Transparency about outcomes** — teams that participate will see the findings relevant to their area (not just the C-suite)
3. **Employee participation is voluntary** — managers can volunteer their teams, but individual participation in AI ideation workshops should be genuinely optional
4. **Honest communication about change** — if AI adoption will change roles, the organization commits to communicating this clearly and providing retraining/transition support

If the sponsor will not commit to these principles, flag this as a significant risk in the `engagement-tracker.md` and discuss with them how it will affect data quality.

---

## Success Criteria

The kickoff is successful when:

- [ ] Scope is defined and agreed (entities, pillars, teams in scope)
- [ ] Executive Workshop is scheduled
- [ ] Communication has been sent to the organization (or is scheduled to be sent)
- [ ] Department Discovery sessions are being scheduled
- [ ] The tracker is initialized with the correct pillar structure
- [ ] Ethical principles are agreed upon
