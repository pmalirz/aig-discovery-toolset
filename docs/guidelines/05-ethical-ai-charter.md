# Guideline 05: Ethical AI Charter

> **Duration:** 30–60 minutes facilitated session + document review cycle
> **Participants:** Cross-functional group — Executive Sponsor, HR, Legal/Compliance, a Team Lead representative, IT/CTO
> **Outputs:** Organization's Ethical AI Charter document
> **Prerequisite:** Executive Workshop completed (can run in parallel with Department Discovery)

---

## Purpose

An Ethical AI Charter establishes the organization's principles for AI adoption **before** any implementation begins. It serves three purposes:

1. **Trust-building** — employees see that the organization takes their concerns seriously
2. **Guardrails** — provides clear boundaries for what AI will and will not do
3. **Governance foundation** — becomes the basis for future AI governance policies

This is not a legal compliance document (that comes later with AI Act, DORA, NIS 2 tracking). This is a **values statement** — a social contract between the organization and its people about how AI will be introduced.

---

## Why This Matters for the Assessment

Without an ethical charter (or at least agreed principles), you will encounter:
- **Data quality problems** — employees who fear AI will replace them give guarded, incomplete answers in discovery sessions
- **Passive resistance** — team leads who don't trust the process will deprioritize template completion
- **Political maneuvering** — executives who see AI as a tool for headcount reduction will bias the assessment toward cost-cutting, missing higher-value opportunities

The charter doesn't need to be perfect. It needs to be **visible, concrete, and credible**.

---

## Facilitation Guide

### Pre-Session

Send this to participants:

> **Subject: Ethical AI Principles — Input Session**
>
> Before we assess specific AI opportunities, I'd like us to agree on a set of principles that will guide how [Company Name] approaches AI. This 30-minute session will produce a short document — your AI Charter — that we'll reference throughout the assessment and beyond.
>
> To prepare, please think about: **What would a good employer promise its people about AI adoption?**

### Session Agenda (30–60 minutes)

| Time | Activity |
|---|---|
| 0:00–0:05 | **Why an ethical charter matters** |
| 0:05–0:20 | **Principle-by-principle discussion** (use the template below) |
| 0:20–0:30 | **Review and agreement** |
| 0:30–0:60 | *(Optional extension for organizations that want deeper discussion)* |

### Opening Frame

> "AI is going to change how work gets done here — not overnight, but over the next few years. Before we talk about specific AI projects, I think it's important to agree on some principles: How will you treat your people through this transition? What will you commit to? What lines won't you cross?"
>
> "This isn't a legal document. It's a promise from leadership to the organization. It should be short enough to fit on one page and clear enough that anyone can understand it."

---

## Charter Template

Guide the group through each principle. For each one, ask: *"Does this feel right for your organization? Would you modify it?"*

### Principle 1: Transparency

> **We will be open about where and how AI is used.**

Discussion questions:
- "When AI is involved in a process, should employees know? Should customers know?"
- "How will you communicate when AI is introduced to a new area?"

**Concrete commitments might include:**
- All AI-assisted processes will be clearly labelled
- Employees will be informed before AI is introduced to their workflow
- Customers will be told when they are interacting with AI

### Principle 2: Human Oversight

> **Critical decisions will always involve human judgment.**

Discussion questions:
- "Which decisions should never be made by AI alone?"
- "What does 'human in the loop' mean practically in your context?"

**Concrete commitments might include:**
- No employment, credit, or insurance decisions made by AI without human review
- AI outputs that affect customers will be validated by qualified staff
- Escalation paths will exist for cases where AI output is uncertain

### Principle 3: Fairness & Bias

> **We will actively monitor for and address bias in AI systems.**

Discussion questions:
- "Have you encountered bias in your existing systems or processes?"
- "How will you test AI systems for fairness before deployment?"

**Concrete commitments might include:**
- AI systems will be tested for demographic bias before production use
- Regular audits of AI decision patterns will be conducted
- Feedback mechanisms will allow users to flag potentially unfair AI outputs

### Principle 4: Data Privacy & Security

> **We will protect personal and sensitive data in all AI applications.**

Discussion questions:
- "What data should never be used for AI training or processing?"
- "Where should AI processing happen — cloud, on-premise, or either?"

**Concrete commitments might include:**
- AI systems will comply with GDPR and sector-specific data regulations
- Personal data used for AI will be subject to Data Protection Impact Assessments
- Employee data will not be used for AI surveillance or monitoring without consent

### Principle 5: Employee Impact

> **AI adoption will augment, not eliminate, our people.**

Discussion questions:
- "What happens to someone whose routine work is automated? What does the organization owe them?"
- "How will you handle the transition period?"
- This is the most sensitive principle — give it space

**Concrete commitments might include:**
- Roles affected by AI will be evolved, not eliminated — with retraining and transition support
- No employee will be made redundant solely due to AI automation
- Teams will be involved in co-designing how AI is integrated into their workflows
- Job impact assessments will be conducted before AI deployment in any area

### Principle 6: Accountability

> **Every AI system will have a clear human owner who is accountable for its performance.**

Discussion questions:
- "If an AI system makes a mistake, who is responsible?"
- "Who decides whether an AI system should be turned off?"

**Concrete commitments might include:**
- Every AI system will have a named human owner
- AI system owners are responsible for monitoring accuracy and addressing failures
- There will be a clear process for pausing or retiring AI systems that aren't performing

---

## Finalizing the Charter

After the discussion:

1. **Draft the charter** — a clean, one-page document with the agreed principles
2. **Circulate for review** — give participants 48 hours to suggest edits
3. **Executive sponsor signs off** — the charter carries weight only if leadership owns it
4. **Communicate to the organization** — ideally as part of the same communication channel used for the assessment announcement

### Charter Document Format

```markdown
# [Company Name] — AI Charter

*Adopted: [Date]*
*Sponsor: [Executive Sponsor Name, Title]*

## Our Principles

### 1. Transparency
[Agreed commitment text]

### 2. Human Oversight
[Agreed commitment text]

### 3. Fairness & Bias
[Agreed commitment text]

### 4. Data Privacy & Security
[Agreed commitment text]

### 5. Employee Impact
[Agreed commitment text]

### 6. Accountability
[Agreed commitment text]

---

*This charter reflects our commitment to responsible AI adoption. It will be reviewed annually and updated as our AI capabilities and understanding evolve.*
```

---

## When the Organization Pushes Back

### "This is too much bureaucracy before we've even started"

> "I understand it feels premature. Think of it as a 30-minute investment that prevents months of resistance later. When employees see that leadership has already thought about their concerns, workshops go smoother and data quality improves dramatically."

### "We can't promise no job losses"

> "Then don't. The charter should be honest. 'Roles will evolve and we will provide transition support' is credible. 'Nobody will lose their job' might not be. A credible promise beats an empty one."

### "Our legal team needs to review this"

> "Absolutely — please involve them. But note that this is a principles document, not a policy. It states intent. The detailed policies (AI governance framework, model risk management) come later."

### "We already have ethics guidelines"

> "Great — let me see them. We can build on what you have rather than starting from scratch."

---

## Connection to the Assessment

The ethical charter directly affects the assessment in several ways:

| Charter Principle | Assessment Impact |
|---|---|
| **Transparency** | AI use ideas that operate invisibly (no user awareness) will score lower on risk |
| **Human Oversight** | Ideas with `human_review_gate: false` in high-impact areas will be flagged |
| **Employee Impact** | Ideas with `change_impact: transformational` need stronger change management plans |
| **Data Privacy** | Ideas involving PII will be assessed against the charter's data commitments |
| **Accountability** | Ideas without a named sponsor/owner score lower on organizational readiness |

The charter doesn't block ideas — it shapes how they're implemented and what guardrails they need.
