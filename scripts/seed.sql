-- Glenride HQ seed — generated from the Muse backup snapshot.
-- Regenerate with: python3 scripts/seed.py [ --asset id=/path ... ]
DELETE FROM hq_documents;
DELETE FROM hq_assets;
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('operating-structure', 'Operating Structure Concept', 'structure', 'markdown', 'Concept', 'The institute, venture-studio loop, seven departments, leadership chain, budget cycle, and succession shape.', 0, 'Oct 8, 2026', '2026-10-10T04:03:54.554Z', '# Glenride Institute — Operating Structure Concept

*Concept document. A thinking tool for manifesting — not a plan, not a checklist, not a launch. Read it, feel it, argue with it.*

---

## The premise

Glenride works like it should: an **independent research institute** with a venture studio inside it. The institute asks the hard questions — where supply chains break, where data can be trusted, how people stay in charge of the machines. The studio turns the answers into things people can buy, license, or use.

One organization, two motions: **understand** and **build**. The research earns the credibility; the products fund the research. That loop is the whole machine.

---

## Leadership

**D''Vaughn House — Founder & Interim President.**

The interim title is honest: you''re a venture starter. You start things, you see around corners, you have the crazy ideas. Running departments day-to-day is not the highest use of you, and the structure should say so out loud.

The chain, top to bottom:
- **President** (you, interim) — raises the budget and deploys it. Sets the research direction and the venture thesis. The public voice. Final say on what carries the name.
- **Lead Director** — takes the deployed budget and allocates it across the departments, equally or by criteria: strategic priority, prior-year results, readiness to execute.
- **Department Directors** — one per department. Own their allocation, run their studies and programs, report spend and results upward.
- **Managers** — under each director. Manage the teams doing the actual work.
- **Teams** — researchers, engineers, writers, operators. The hands.

**Succession, planned from day one:** when revenue supports it, Glenride hires a permanent **President** (title negotiable — Executive Director, CEO — function isn''t). That person runs departments, budgets, hiring, and cadence. You move to **Founder & Chair**: vision, ventures, research direction. The institute outlives any one person''s calendar — including yours. That''s the point of the trust holding the company holding the institute.

Your job as interim President:
- Raise and deploy the budget.
- Set the research direction and the venture thesis.
- Be the public voice — the talks, the writing, the rooms.
- Start new ventures inside the institute and hand them to operators.
- Hold the standard: Human Primacy in everything shipped, Cognitive Stewardship in everything published.

---

## Departments & cost centers

Seven departments. Each one is a cost center with its own budget, its own mandate, and its own definition of done. No department exists to sound impressive — each maps to work already happening.

### 1. Research
*The institute''s core. Ask the hard questions, publish the answers.*
- Mandate: supply-chain vulnerability research, pharmaceutical data evaluation, enterprise systems analysis. The drug-shortage digest lives here. The council convenes here.
- Cost center: researcher time, data feeds and subscriptions, compute for analysis, peer review and editing.
- Done looks like: published findings with receipts, cited and standing up to scrutiny.

### 2. Applied AI Lab
*Turn answers into software.*
- Mandate: the token systems ($SPIN, $WAVY infrastructure), the Vapor Wire bot, the job scraper, the content factory, OSINT tooling. Everything that runs — on Cloudflare or the homelab — is built and maintained here.
- Cost center: engineering time, infrastructure (Cloudflare, hardware upkeep), third-party security audits, API and data costs.
- Done looks like: shipped software with users, documented and auditable.

### 3. Publications & Story
*The institute''s voice in long form.*
- Mandate: essays (cornerstone, Borrowed Spell), the STARBORN screenplay, the newsletter, the personal brand campaign. This department makes Glenride legible to the world.
- Cost center: writing time, editing, design and layout, publishing and distribution.
- Done looks like: published work with your name on it, selling or licensed.

### 4. Commerce
*The cash register.*
- Mandate: Reynard''s, the WAVY Ship''s Store, the Glenride app store. Every product regular people can buy or license.
- Cost center: cost of goods, fulfillment and shipping, payment processing, samples and quality control.
- Done looks like: revenue. This department funds the others.

### 5. Treasury
*The institute''s financial backbone.*
- Mandate: the treasury Safe, token vesting schedules, fee streams, reserves. Boring, exact, and untouchable without process.
- Cost center: transaction costs, audits, counsel for classification and compliance.
- Done looks like: every movement logged, every allocation matching the published tokenomics.

### 6. Community & Channels
*The people, gathered.*
- Mandate: the Vapor Wire channels, the Glenride Council on AI & Supply-Chain Resilience, public programs. This is the warm audience — the book of supporters every future build draws on.
- Cost center: moderation tooling, event costs, community programs.
- Done looks like: active rooms, a council that meets, members who bring others.

### 7. Operations
*The structure that holds the structure.*
- Mandate: finance and books, legal and compliance, the Wyoming LLC and trust paperwork, HR when there is an H to R. Nothing glamorous; everything load-bearing.
- Cost center: registered agent, accounting, counsel, insurance, filings.
- Done looks like: clean books, current filings, no surprises.

---

## How money moves

Commerce and licensing are the revenue centers. Publications sell. The lab licenses. The institute''s research is funded by the studio''s products — not by grants that come with strings, not by sponsors who want a say. **Independent means the money comes from the work.**

Treasury functions as the institute''s endowment logic: fee streams and reserves accrue there, and departments draw budgets from it. Each department head owns their cost center — they know their number, they stay inside it, they report on it. No department spends the institute''s future.

## The annual budget cycle

The institute runs on a yearly rhythm, planned a year ahead — the way serious research is run:

1. **Plan (year prior):** departments propose the next year''s trials and research studies — including the data licenses, compute, and staffing each study needs.
2. **Raise & deploy:** the President raises the institute''s budget and deploys it to the Lead Director.
3. **Allocate:** the Lead Director divides it across the departments — equally, or weighted by criteria: strategic priority, prior-year results, readiness to execute.
4. **Execute:** directors and managers run the planned studies. Spend is tracked against the plan as each study completes.
5. **Reallocate:** leftover budget doesn''t sit idle and doesn''t vanish — it''s reallocated to another project. Every dollar stays in motion until the work is done.

---

## The bridge: today → this

Nothing here is invented from nothing. Every department already exists in embryo:

| Department | Exists today as |
|---|---|
| Research | Glenride''s supply-chain work, drug-shortage digest, council charter |
| Applied AI Lab | Token systems, Vapor Wire bot, job scraper, content factory scaffold |
| Publications & Story | Cornerstone essay, Borrowed Spell, STARBORN, 12-piece campaign spec |
| Commerce | Reynard''s, Ship''s Store, Glenride app store |
| Treasury | The Safe, frozen tokenomics, fairness audit |
| Community & Channels | Vapor Wire channels, council concept |
| Operations | The business-structure system map, this concept |

Manifesting isn''t building from zero — it''s giving what''s already alive its proper rooms.

---

## Governance

The Wyoming LLC owns all of it — every department, every product, every stream. The revocable living trust holds the LLC. You hold the trust. Clean lines: the institute is an asset of the company, the company answers to the trust''s instructions, and the instructions outlive all of us. (See the business-structure system map for the full picture.)

Departments don''t change that. They organize the work inside the walls; the walls themselves are already drawn.

---

## What this concept is for

Read it when you''re deciding what to build next: *which department does this belong to?* Read it when someone asks what Glenride is: *an independent research institute with a venture studio inside.* Read it when you''re tired of being every department: *that''s what the President is for — and the plan to hire one is already written.*

*End of concept. Argue with it, mark it up, or let it sit — it''s a thinking tool, and thinking tools don''t expire.*
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('business-system-map', 'Business Structure & Shielding', 'structure', 'markdown', 'Living document', 'Living map of the trust, company, institute, liability boundaries, and next structural moves.', 0, 'Oct 7, 2026', '2026-10-09T22:02:38.312Z', '# System Map — Business Structure & Shielding

**Owner:** D''Vaughn House · **Created:** 2026-10-07 · **Status:** living document — updated as pieces move
**Purpose:** one page that says what exists, what shields what, and what''s next — so the structure holds itself and he can build software.

---

## 1. Target architecture (the end state)

```
D''Vaughn House (person)
  └── Revocable living trust (owns the company; avoids probate; he keeps full control)
        └── Wyoming LLC, foreign-registered in Ohio (operates everything)
              ├── Treasury Safe (0x594c0Bb58D103d5A603eeA62167A54095d939039)
              │     └── WAVY fee stream (0.665%) + 15% vesting allocation
              ├── Token holdings (WAVY, SPIN, future)
              ├── Operating businesses (Reynard''s, WAVY Ship''s Store, Glenride)
              └── IP (brand, code, PRDs, content, trust-center record)
Counsel (on call — classification consult first, relationship after)
```

Why this shape: the LLC draws the liability line between him and the business while he''s alive; the trust makes sure the paper actually works after he''s gone (no probate, no reinterpretation); Wyoming gives charging-order protection plus privacy (no public member disclosure). The trust owns the company; the company owns the assets. Clean lines, no commingling.

## 2. What each layer shields (and doesn''t)

| Layer | Shields against | Does NOT shield against |
|---|---|---|
| Wyoming LLC | Business debts/liabilities reaching personal assets; creditor seizure of the business itself (charging orders attach to distributions only) | Anything before formation; personal debts reaching the business (reverse piercing, rare); sloppy formalities — commingling kills the shield |
| Ohio foreign registration | Ohio fines / loss of standing for operating unregistered | Nothing on its own — it''s compliance, not armor |
| Revocable living trust | Probate; court reinterpretation of wishes; business interruption at death | Creditors while he''s alive (revocable = reachable). This is continuity, not fortress |
| Irrevocable trust (option, later) | Creditors, litigants — real asset protection | His control (he gives it up); anything transferred after a threat appears (fraudulent conveyance) |
| Counsel on call | Regulatory missteps; someone testing him | Nothing retroactively — engage before the fight, not during |
| Paper trail (audits, receipts, trust center) | "He said / she said" — every claim has a receipt | None — this layer is pure upside |

## 3. Asset inventory → destination

| Asset | Now | Eventual home |
|---|---|---|
| WAVY 15% vesting + 0.665% fee stream | Treasury Safe (deployed, his 1-of-1) | Safe owned by the LLC |
| SPIN holdings / vesting reserve | His wallets / Bankr control | LLC |
| Reynard''s (Shopify store) | Sole prop | LLC |
| WAVY Ship''s Store (memorabilia) | Sole prop | LLC |
| Glenride Institute + retainers | Sole prop | LLC |
| IP: brand, code, PRDs, content, trust-center record | His | LLC (assigned in writing at formation) |
| Personal assets (home, savings, etc.) | His | His — never in the LLC |

## 4. Status ledger

**DONE**
- [x] Treasury Safe deployed + verified (frozen WAVY fee recipient)
- [x] Tokenomics v1.0 frozen (100B, 85/15, 1yr/30-day cliff, tiers, job fee)
- [x] Fairness audit v1.0 (11 clear / 2 to-verify / 2 planned-and-stated)
- [x] Trust center live with Fair Launch section + honest counsel ledger
- [x] PRD v0.2 (feasible life-ops: agent plans, human executes)
- [x] Counsel consult brief assembled (one-page, sendable)

**NEXT (his move, no money needed)**
- [ ] Book a free counsel consult (Oberheiden 888-680-1745 or Conboy Law 312-726-9000) — send the brief ahead
- [ ] Post X announcement + open Telegram (drafts ready, needs his links)
- [ ] Form endpoint + Stripe KYC (start early, slow steps)
- [ ] Bankr wallet eligibility + free simulation → send summary for verification

**WAITING (sequenced, not skipped)**
- [ ] Paid 1–2hr classification consult (~$500–1,500) — when affordable
- [ ] Life-ops v1 build — the long pole; PRD v0.2 approved, build order set
- [ ] WAVY launch — gated on simulation sign-off + his explicit authorization
- [ ] Third-party security audit — when the treasury can fund it

**PLANNED (structure track)**
- [ ] Wyoming LLC formation (~$100–200 + registered agent ~$50–150/yr)
- [ ] Ohio foreign registration (~$99) — required since he operates from Cincinnati
- [ ] EIN, separate bank account, books — day one of the LLC, no commingling ever
- [ ] Revocable living trust holding the LLC interest — when counsel is engaged
- [ ] IP assignment (brand, code, content) into the LLC in writing
- [ ] Irrevocable layer — option only, if a real threat ever appears

## 5. Standing rules (the shield only works if these hold)

1. **No commingling.** Business money and personal money never touch. Ever.
2. **No profit promises.** In any copy, any channel, ever.
3. **No invented partners.** No name in public without a signed agreement.
4. **Nothing launches without his explicit approval.** The freeze-board principle, applied everywhere.
5. **Paper on everything.** If it isn''t written down, it didn''t happen — the audit log is the memory of the structure.
6. **Counsel before the fight.** The consult happens before launch; the relationship exists before it''s needed.

## 6. Sequencing

- **Now (free):** book the consult, post the announcements, run the simulation, keep building.
- **Soon (cheap):** form the Wyoming LLC + Ohio registration when he says go — a few hundred dollars, one afternoon of paperwork.
- **Later (funded):** trust drafting with the attorney, security audit from treasury revenue, irrevocable layer only if the future demands it.

*The structure exists so he doesn''t have to think about it. Check this map monthly; otherwise, build software.*
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('wyoming-checklist', 'Wyoming LLC Formation Checklist', 'structure', 'markdown', 'Decision guide', 'Sequenced formation checklist with the Ohio foreign-registration reality kept visible.', 0, 'Oct 7, 2026', '2026-10-09T22:03:31.613Z', '# Wyoming LLC Formation — Sequenced Checklist (Oct 2026)

Status: decision + filing work is yours; facts verified 2026-10-07 against Wyoming SOS fee schedule and Ohio SOS fee reductions (HB 3, $125→$99).

## The fork in the road: Wyoming vs. Ohio domestic LLC

You live and work in Ohio. A Wyoming LLC doing business from Cincinnati still has to register as a foreign LLC in Ohio — both states, both bills. What Wyoming actually buys you beyond Ohio:

- **Member privacy:** Wyoming keeps member names off the public Articles of Organization.
- **Stronger charging-order protection:** a creditor can lien distributions but can''t seize the business itself.
- **Coherent trust package later:** Wyoming is also a top trust jurisdiction, so Wyoming trust → Wyoming LLC is one clean structure.

What Ohio domestic buys you: **$99 once, $0/year forever** (Ohio LLCs file no annual report). It''s the cheaper door, and the shield works the same against Ohio courts.

Rule of thumb: if privacy + trust-package coherence is the goal, pay the Wyoming premium. If it''s just the liability line, Ohio domestic is $99 and done. Flag this as a question for the counsel consult.

## First-year cost, verified

| Step | Wyoming path | Ohio domestic path |
|---|---|---|
| State filing | $100 (online ~$102–$104 with card fee) | $99 |
| Registered agent (required, physical WY address) | $25–$125/yr (Northwest ~$125) | You can serve as your own ($0) |
| Ohio foreign LLC registration (Form 610) | $99 | n/a |
| EIN (IRS) | Free | Free |
| Operating agreement | $0 (write it; state doesn''t take it) | $0 |
| **Year 1 total** | **~$325** (WY + agent + OH) | **~$99** |
| Year 2+ per year | $60 (WY annual report) + agent ~$125 = ~$185 | $0 |

Notes: Wyoming annual report is due the first day of the anniversary month, $60 minimum, late penalty $25/month. Domestic US entities are currently exempt from FinCEN beneficial-ownership reporting (interim final rule) — could be finalized in 2026, so keep ownership records clean in case it returns.

## Sequenced steps (Wyoming path)

1. **Pick the name** — must contain LLC/LLC designator; check availability in Wyoming (WyoBiz name search) AND Ohio (you''ll register foreign there — a conflicting Ohio name complicates it).
2. **Hire the Wyoming registered agent first** — you can''t file without their physical address. Cheap services $25–$125/yr; don''t pay a $300+ "formation package" — the filing itself is a 15-minute form.
3. **File Articles of Organization on WyoBiz** — online, active immediately, ~$100. Keep the confirmation.
4. **Get the EIN free from IRS** (irs.gov, "apply for EIN") — do this before opening any account.
5. **Register as a foreign LLC in Ohio** — $99, online via Ohio Business Filings or Form 610 by mail; no certificate of good standing needed.
6. **Write a single-member operating agreement** — short, signed, kept with your records. Not filed, but courts ask for it when the shield is tested.
7. **Open a separate business bank account** with the EIN + Articles — and never pay a personal bill from it. Commingling is what kills LLCs in court, not bad paperwork.
8. **Move the assets in on paper:** assign the domains, token IP/contracts, store, and brand assets into the LLC with a simple assignment document, dated. The shield only covers what it holds, and only going forward.

## Trust sequencing (after the LLC)

- The expensive part: an estate attorney drafting an asset-protection (irrevocable) trust typically runs a few thousand — that''s the "when affordable" step, matching the counsel plan.
- The usual structure isn''t assets → trust; it''s **trust owns the LLC membership interest, LLC owns the assets.**
- Plain trade, already discussed: revocable = probate avoidance, no creditor protection; irrevocable = protection, but you give up control. No version gives both.

## Two timing notes

- **Form before $WAVY launches.** The LLC shield only covers liabilities that arise after formation. Pre-launch is exactly the right window — use it.
- **Bring the entity questions to the same counsel consult** (Oberheiden/Conboy free consults from tonight): WY vs OH for your fact pattern, whether forming now affects the token classification answers, and who holds what during the trust transition.

Not legal advice — structure thinking only, per the standing caveat.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('sop-outline', 'Research SOP Outline', 'operations', 'markdown', 'Outline', 'The 23-SOP control framework across governance, research integrity, data, publication, safety, finance, and people.', 0, 'Oct 8, 2026', NULL, '# Glenride Research — SOP Outline

*Subset of the Glenride operating structure. An outline of the standard operating procedures the research company should have, drawn from best practices (NIH research integrity guidance, FAIR data principles, standard publication ethics, ethics-committee review elements). Each SOP below needs an owner, a version number, and a Presidential approval before it counts. This outline is the table of contents — the full SOPs get written one at a time.*

---

## How to read this

- **SOP number** is permanent. When an SOP is revised, the version changes; the number doesn''t.
- **Owner** is the role in the org chain accountable for it (President → Lead Director → Department Directors → Managers → Teams).
- **Best-practice basis** names where the standard comes from, so nobody has to take it on faith.

---

## A. Study lifecycle

**SOP-01 — Study proposal & approval**
- Purpose: every study enters through the same door — written proposal, reviewed, approved before a dollar is spent.
- Basis: standard research governance; ties directly to the annual budget cycle (studies proposed in the planning year).
- Owner: Department Director (Research); approval: President.

**SOP-02 — Study design standards**
- Purpose: minimum bar for a credible design — defined question, appropriate method, sample/data rationale, analysis plan written before data is touched.
- Basis: scientific review-committee elements (design, predictable limitations, competence of staff, adequacy of resources).
- Owner: Department Director (Research).

**SOP-03 — Ethics & data-ethics review**
- Purpose: every study gets an ethics pass — even secondary-data work. Human data, re-identification risk, and downstream harm get explicit review.
- Basis: ethics-committee review elements; NSF-backed ethical data research guidelines (data are people; privacy isn''t binary; guard against re-identification; debate the hard choices).
- Owner: Lead Director; external ethics board contracted when human-subjects work is involved (Glenride holds no IRB of its own until scale justifies one).

---

## B. Data management

**SOP-04 — Data management plans (DMPs)**
- Purpose: every study writes a DMP before collection — what data, where it lives, who can touch it, how long it''s kept.
- Basis: FAIR principles — data findable, accessible, interoperable, reusable; planned from the outset, not retrofitted.
- Owner: study Manager.

**SOP-05 — Data collection & quality control**
- Purpose: collection methods documented, quality checks defined in advance, missing-data handling specified.
- Basis: standard data-integrity practice; post-collection screening methods declared upfront.
- Owner: study Manager.

**SOP-06 — Data security, privacy & de-identification**
- Purpose: who can access what, how data is de-identified, how breaches are handled and reported.
- Basis: privacy-beyond-binary practice; systems designed for auditability.
- Owner: Department Director (Research), with Operations for infrastructure.

**SOP-07 — Data retention & archiving**
- Purpose: how long data lives, where archives sit, what gets destroyed and when, with a record of destruction.
- Basis: records-management best practice; funder/journal retention expectations.
- Owner: Operations.

**SOP-08 — Data sharing & licensing**
- Purpose: what Glenride shares openly, what it licenses commercially, and the terms for each — decided before publication, not after.
- Basis: National Academies data-sharing principles (share what supports the claims; use public repositories; no exclusive commercial lockups on shared materials).
- Owner: President (commercial terms); Department Director (scientific terms).

---

## C. Research integrity

**SOP-09 — Research records & notebooks**
- Purpose: every experiment, analysis, and decision is recorded contemporaneously in a system with an audit trail. Corrections are tracked — never silently deleted. Failed runs and outliers stay in the record.
- Basis: NIH research-integrity practice (electronic notebooks with audit trails; "could an educated researcher repeat this from your record?").
- Owner: every team member; Managers verify.

**SOP-10 — Authorship & contribution**
- Purpose: who counts as an author (significant contribution to conception, design, execution, or interpretation), who goes in acknowledgements, and the order decided before writing starts.
- Basis: standard publication-ethics authorship criteria.
- Owner: Department Director (Research).

**SOP-11 — Originality & plagiarism**
- Purpose: all work original; others'' work cited or quoted; no duplicate publication of the same research; methods sections reused from prior work get cited.
- Basis: standard publication ethics (originality, no redundant publication, acknowledgement of sources).
- Owner: Department Director (Research).

**SOP-12 — Conflicts of interest**
- Purpose: financial and personal interests disclosed at study start and at publication; commercial licensing interests declared when they touch the research question.
- Basis: standard research-governance disclosure practice. Independence means the money never shapes the finding.
- Owner: President.

**SOP-13 — Misconduct reporting & investigation**
- Purpose: a protected channel to report suspected fabrication, falsification, or plagiarism; a defined investigation process; no retaliation.
- Basis: federal research-misconduct framework (allegation → inquiry → investigation → adjudication).
- Owner: President, with external counsel engaged for investigations.

---

## D. Publication & dissemination

**SOP-14 — Internal review before publication**
- Purpose: no finding leaves Glenride without internal review — methods checked, claims matched to evidence, limitations stated.
- Basis: the institute''s credibility is the product; review is how it''s manufactured.
- Owner: Department Director (Research); President signs off on high-visibility releases.

**SOP-15 — Publication ethics**
- Purpose: accurate reporting, no duplicate submission, full methods for reproducibility, data underlying the claims available.
- Basis: standard publication-ethics reporting standards.
- Owner: Department Director (Research).

**SOP-16 — Public communication**
- Purpose: how findings are communicated outside journals — preprints, press, social. No hype beyond the evidence; uncertainty stated plainly.
- Basis: responsible science-communication practice.
- Owner: Publications & Story (department), with Research sign-off on technical claims.

---

## E. Study operations

**SOP-17 — Study execution & monitoring**
- Purpose: studies run to the approved plan; deviations documented and approved; progress reported on a fixed cadence.
- Basis: Good Clinical Practice monitoring concepts, adapted to data studies.
- Owner: study Manager; Department Director reviews.

**SOP-18 — Vendor & data-license management**
- Purpose: data licenses and vendors approved before purchase; terms reviewed; renewals tracked. (Data licenses are a planned budget line — see the annual cycle.)
- Basis: standard procurement control.
- Owner: Department Director (Research); Operations for contracting.

**SOP-19 — Study budget tracking**
- Purpose: spend tracked per study against the allocated budget as studies complete; variances explained; leftovers flagged for reallocation.
- Basis: the institute''s own budget cycle (Execute → Reallocate).
- Owner: study Manager; Lead Director reallocates.

---

## F. People & training

**SOP-20 — Onboarding & training records**
- Purpose: every team member trained on the SOPs that touch their work; training recorded; retraining on SOP revision.
- Basis: standard quality-system practice — an SOP nobody was trained on doesn''t exist.
- Owner: Managers.

**SOP-21 — Roles, responsibilities & delegation**
- Purpose: the org chain in writing — who can approve what, who can spend what, what needs Presidential sign-off.
- Basis: the operating structure concept.
- Owner: President.

---

## G. Documents & the SOPs themselves

**SOP-22 — Document control**
- Purpose: every SOP versioned, approved, and distributed from one controlled set. Superseded versions archived, never deleted. Everybody works from the current version.
- Basis: ISO-9001-style document control, scaled to an institute.
- Owner: Operations.

**SOP-23 — SOP review cycle**
- Purpose: every SOP reviewed on a fixed schedule (annual) and after any incident or audit finding. The system improves or it rots.
- Basis: continuous-improvement practice.
- Owner: Lead Director.

---

## Writing order (suggested)

Start where the risk is: **SOP-01, SOP-09, SOP-12, SOP-19** — how studies get approved, how records are kept, how conflicts are disclosed, how money is tracked. Then data management (SOP-04 through SOP-08), then the rest. Four strong SOPs beat twenty-three drafts.

*End of outline. Each SOP gets written as its own document, owned, versioned, and approved — that''s when it becomes real.*
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('sop-index', 'SOP Draft Index', 'operations', 'markdown', 'Draft v0.1', 'Control sheet for the first four operating procedures, including owner, approver, and best-practice basis.', 0, 'Oct 8, 2026', NULL, '# Glenride SOPs — First Four (Draft)

**Status:** DRAFT v0.1 · 2026-10-08 · Awaiting D''Vaughn''s first pass. Nothing here is binding until approved.

These are the four the risk lives in, drafted from the writing order agreed 2026-10-08. They use the org chain (President → Lead Director → Department Directors → Managers → Teams) and the five-stage budget cycle exactly as defined in the system map.

| SOP | File | Owner | Approver |
|---|---|---|---|
| SOP-001 Study Approval | SOP-001-study-approval.md | Lead Director | President |
| SOP-002 Research Records | SOP-002-research-records.md | Department Director | Lead Director |
| SOP-003 Conflicts of Interest | SOP-003-conflicts-of-interest.md | Lead Director | President |
| SOP-004 Study Budget Tracking | SOP-004-study-budget-tracking.md | Lead Director (Treasury holds the ledger) | President |

## Best-practice basis (verified where noted)

- **FAIR data principles** — Findable, Accessible, Interoperable, Reusable (Wilkinson et al., *Scientific Data* 3:160018, 2016, doi:10.1038/sdata.2016.18) — verified live 2026-10-08.
- **ICMJE authorship criteria** — the four-criteria authorship test (substantial contribution; drafting or critical revision; final approval; accountability — all four, joined by AND), from the ICMJE Recommendations — verified live 2026-10-08; widely adopted beyond biomedical journals.
- **ALCOA-C data integrity** — attributable, legible, contemporaneous, original, accurate, complete (plus enduring and available) — standard regulator expectation for any research record that must hold up under scrutiny.
- **Conflict-of-interest management** — disclosure, institutional review, and documented management plans are the standard shape of institutional FCOI policy; thresholds are set by the President, not assumed here.
- **Publication ethics** — COPE (Committee on Publication Ethics) Core Practices inform the integrity and publication-ethics group, which these four point toward but do not yet cover.

## Remaining 19 SOPs

The full outline (23 across 7 groups) was delivered 2026-10-08. The natural next four after these: study design, ethics review, authorship policy, data retention — one per group, same template.

## Document control convention

Each SOP carries: ID, version, draft date, owner, approver, purpose, scope, procedure, records kept, and review schedule. When approved, version becomes v1.0 with an effective date; review at least annually.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('sop-001', 'SOP-001 · Study Approval', 'operations', 'markdown', 'Draft v0.1', 'Written authorization gate for every study, trial, data-license engagement, and published analysis.', 0, 'Oct 8, 2026', '2026-10-11T04:20:34.194Z', '# SOP-001 · Study Approval

**Status:** DRAFT v0.1 · 2026-10-08 · Not binding until approved
**Owner:** Lead Director · **Approver:** President

## Purpose

No study starts without written approval. This is the gate that keeps unfunded, off-mission, or ethically unexamined work from consuming budget — and the receipt that proves a study was authorized.

## Scope

Every research study, trial, data-licensing engagement, and published analysis run under the Glenride name, in any of the seven departments.

## Procedure

1. **Proposal.** The requesting Manager submits a one-page study proposal to their Department Director:
   - Research question in one sentence
   - Design and method (how the question gets answered)
   - Data sources required, including any licenses to buy and their cost
   - Budget estimate, tied to the department''s allocation
   - Ethics and data considerations (subjects, privacy, consent, dual use)
   - Proposed team and each member''s role
   - Reference to the authorship plan (see the authorship SOP when written; until then, name who writes)

2. **Director review.** The Department Director checks fit with the department mandate and the year''s plan, then forwards to the Lead Director with a written recommendation or return with notes.

3. **Budget gate.** The Lead Director checks the proposal against the five-stage budget cycle: studies run on what was planned the year prior. A study that was not planned needs the exception path (step 5).

4. **Presidential approval.** The President approves or declines in writing. Approval enters the study in the study register with a unique study ID and "approved" status. Declines go back with reasons. No study begins before this step.

5. **Exception path (unplanned study).** The request goes to the President with a written rationale for why it cannot wait for the next planning cycle. Approval is the same as step 4; the register marks it "exception."

## Records

- The study register: proposal, Director recommendation, Lead Director budget check, President decision, study ID, status — kept by Operations.
- Appeals: none informal — a declined proposal may be resubmitted once with material changes.

## Review

Annually, or after the first three studies close, whichever comes first — then the procedure gets its first revision from real use.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('sop-002', 'SOP-002 · Research Records', 'operations', 'markdown', 'Draft v0.1', 'Traceability, versioning, provenance, retention, and quarterly audit requirements for research records.', 0, 'Oct 8, 2026', NULL, '# SOP-002 · Research Records

**Status:** DRAFT v0.1 · 2026-10-08 · Not binding until approved
**Owner:** Department Director (each department''s own record set) · **Approver:** Lead Director

## Purpose

Every published claim must trace back to the raw data and the decisions that produced it. If it isn''t recorded, it didn''t happen — and if it can''t be traced, it can''t be defended.

## Scope

All research records: raw data, processed data, code and analysis scripts, lab or study notebooks, decision logs, and final datasets attached to publications.

## Principles

Records follow the data-integrity attributes used across regulated research: **attributable** (who did it), **legible** (readable, now and later), **contemporaneous** (recorded when it happened), **original** (or a certified copy), **accurate**, **complete** — and kept so they endure and stay available.

Datasets shared or licensed follow the FAIR principles: **Findable** (persistent identifier, rich metadata, indexed), **Accessible** (retrievable by standard protocol; metadata stays public even if data access is restricted), **Interoperable** (open formats, shared vocabularies), **Reusable** (clear license, documented provenance, community standards). FAIR does not mean open — it means findable with clear access terms.

## Procedure

1. **Record at the time.** Entries are made when the observation or decision happens. No backdating; late entries are marked as such with their actual date.
2. **Corrections are append-only.** Never overwrite. Strike through or supersede with a dated correction entry stating what changed and why. Raw data is immutable.
3. **Version everything.** Code, datasets, and analysis outputs carry version numbers. The version behind a published result is archived and never altered.
4. **Provenance is mandatory.** Every derived dataset records its source datasets and the script version that produced it, back to the raw input.
5. **Retention.** Records are kept a minimum of 7 years from publication or study closeout, whichever is later — unless a data licensor or counsel requires longer. The President may lengthen, not shorten, this period.

## Responsibilities

- **Manager:** owns the team record set; sees that entries are contemporaneous and corrections are append-only.
- **Director:** audits one closed study''s records per quarter; findings go to the Lead Director in writing.

## Records

- The record sets themselves, the quarterly audit notes, and the retention log — kept by Operations.

## Review

Annually, and after the first Director audit, to tune the procedure to what the audits actually find.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('sop-003', 'SOP-003 · Conflicts of Interest', 'operations', 'markdown', 'Draft v0.1', 'Annual and per-study disclosure, management-plan, publication, and counsel-review controls.', 0, 'Oct 8, 2026', NULL, '# SOP-003 · Conflicts of Interest

**Status:** DRAFT v0.1 · 2026-10-08 · Not binding until approved
**Owner:** Lead Director · **Approver:** President

## Purpose

A financial or personal interest that could — or could reasonably appear to — bias a study gets disclosed and managed before it touches the work. Trust is the product here; this SOP is how it''s kept.

## Scope

Everyone in the org chain — President through team members — plus external collaborators, advisors, and vendors paid to participate in research.

## Procedure

1. **Annual disclosure.** Every person in scope files a written disclosure once a year with the Lead Director: financial interests, paid roles, equity or token holdings, family interests, and anything else that could reasonably appear to affect — or benefit from — Glenride research.

2. **Per-study disclosure.** At study approval (SOP-001), each proposed team member discloses interests specific to that study: funding ties, data-licensor relationships, holdings related to the subject matter, pending partnerships.

3. **Review.** The Lead Director reviews disclosures and decides, in writing, one of: no action needed; manageable with a plan; or the person cannot join the study in that role.

4. **Management plans.** When needed, the plan states the concrete restriction — recusal from specific decisions, independent review of the affected analysis, reassignment of a role — plus who verifies compliance. The plan is attached to the study register.

5. **Publication disclosure.** Publications & Story discloses relevant interests in every output. Authors do not decide their own disclosure is unnecessary — the Lead Director does.

6. **Counsel when stakes are real.** Any conflict involving material money, equity, tokens, or a vendor relationship goes to counsel for review before the study starts. This is the system map''s standing rule: counsel before the fight.

## Thresholds

The President sets the monetary and materiality thresholds that trigger step 6 and step 4. Until set, disclose everything — over-disclosure is the default.

## Records

- Disclosure forms, Lead Director determinations, management plans, counsel referrals — kept by Operations, access-restricted to the Lead Director and the President.

## Review

Annually, and immediately after any conflict is found unmanaged — that is a procedure failure, not just a disclosure failure.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('sop-004', 'SOP-004 · Study Budget Tracking', 'operations', 'markdown', 'Draft v0.1', 'Study-level ledger, overrun approval, closeout, and reallocation procedure.', 0, 'Oct 8, 2026', NULL, '# SOP-004 · Study Budget Tracking

**Status:** DRAFT v0.1 · 2026-10-08 · Not binding until approved
**Owner:** Lead Director · **Approver:** President
**Ledger held by:** Treasury department

## Purpose

Money is tracked as studies complete, and leftovers go back to the pool for reallocation — stages 4 and 5 of the budget cycle, made into a repeatable procedure instead of a year-end scramble.

## Scope

Every approved study (SOP-001) and every dollar of its approved budget line. Data licenses are tracked per study, since that is the named spend type.

## The cycle this implements

1. The President raises and deploys the budget.
2. The Lead Director allocates it to departments — equally or by criteria, recorded in writing.
3. Departments spend it running the studies planned the year prior, including data licenses.
4. **This SOP:** spend is tracked as studies complete.
5. **This SOP:** leftover budget returns to the pool and the President reallocates it to another project.

## Procedure

1. **Budget line.** On approval, Treasury opens a ledger line per study: approved amount, line-item categories (data licenses, labor, tools, other), study ID.

2. **Recording.** The study Manager records every spend against the line within 5 business days of commitment — date, vendor, amount, category, receipt. No spend without a receipt in the ledger.

3. **Monthly check.** The Department Director reviews the department''s open lines monthly with the Manager: burn rate, forecast to completion, any line at risk of overrun.

4. **Overrun rule.** No study spends past its approved line. A needed overrun requires written re-approval before the spend: Lead Director for reallocations inside the department''s own allocation; President for any new money or movement between departments.

5. **Closeout.** When the study closes, the Lead Director closes the ledger: final spend, variance against the approved line, and the leftover amount. The closeout note is attached to the study register (SOP-001).

6. **Reallocation.** Leftover funds return to the pool. The President reallocates them in writing per stage 5 of the cycle — another study, a department reserve, or the endowment logic in Treasury.

## Records

- Study ledgers, monthly Director reviews, overrun re-approvals, closeout notes, reallocation decisions — kept by Treasury, reported to the President quarterly.

## Review

After the first full budget cycle completes, then annually. The first cycle is the real draft of this SOP.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('council-charter', 'Council Charter', 'council', 'markdown', 'Charter draft', 'Mission, membership shape, quarterly rhythm, principles, and first-session agenda.', 0, 'Oct 2026', '2026-10-10T06:02:12.611Z', '# Glenride Council on AI & Supply-Chain Resilience
*Charter draft — October 2026 (proposed name; rename as you like)*

## Mission
Convene business operators and academic leaders who work where AI meets the physical economy — supply chains, pharmaceutical operations, and enterprise systems — to share what they''re seeing, test ideas against reality, and keep each other from getting left behind.

## Why this, why now
The AI shift is not another .com. The people moving goods, running plants, and managing regulated operations need a room where they can talk plainly about what''s changing and what to do about it. That room doesn''t exist. Glenride is building it.

## Who it''s for
- **Operators** — people who run supply chains, logistics, manufacturing, or pharma operations.
- **Academics** — researchers and educators working on AI, systems, operations, or supply-chain resilience.
- **Builders** — founders and technologists shipping AI into the physical economy.

## What members do
- Join one 90-minute roundtable per quarter (virtual to start).
- Bring one real problem or observation each session. No pitches, no panels, no keynotes.
- Everything shared is on the record for the published notes unless flagged otherwise in the room.

## What members get
- The published session notes — Glenride''s dispatch on what operators and researchers are actually seeing.
- First look at Glenride research briefs.
- A peer room that stays small on purpose (capped at 20).

## Operating principles
- Plain speech. Say what you mean.
- Operators and researchers as equals. No hierarchy of titles.
- The council advises; it doesn''t vote. Glenride convenes and publishes.
- No selling from the room. Relationships first, deals never required.

## 90-day launch cadence
- **Days 1–14:** Charter finalized. Invite list built (12–15 names).
- **Days 15–30:** Personal invitations sent. Aim for 8–10 confirmed founding members.
- **Days 31–60:** Session 01 — "Where AI meets the loading dock." 90 minutes, virtual. Notes published within a week.
- **Days 61–90:** Session 02 scheduled. Founding member roster published. Begin planning the first in-person convening (Cincinnati).

## First invite list
One concrete name from your network:
1. **Your younger brother** — independent trucking operator. Last-mile freight is the sharp end of supply-chain resilience; his seat is earned, not courtesy.

Seats for you to fill (11–14 more):
- 2–3 former pharma ops colleagues (AstraZeneca / Merck) — regulated-operations perspective.
- 2 UC contacts — academic / research perspective.
- 2–3 logistics or manufacturing operators from your wider network.
- 1–2 AI builders shipping into industry.
- Brian, Dez, Cameron, Matthew — your call on fit. Only if the room serves them and they serve the room.

*Note: I didn''t invent roles or credentials for anyone — the seat-based list is for you to fill with real names.*

## What this becomes
The council is the warm book. When Glenride or your ventures build next — research briefs, pilots, or larger technical bets — this is the list you call first. No cold outreach, ever again.
', NULL, NULL, NULL);
INSERT INTO hq_assets (id, name, mime, size, data_b64) VALUES ('council-prospectus', 'glenride-council-prospectus.pdf', 'application/pdf', 70358, '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Y3QKL1AgMTUgMCBSCi9QZyAyIDAgUgovSyAyPj4KZW5kb2JqCjE3IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAxNSAwIFIKL1BnIDIgMCBSCi9LIDM+PgplbmRvYmoKMTUgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDEyIDAgUgovSyBbMTYgMCBSIDE3IDAgUl0+PgplbmRvYmoKMTkgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDE4IDAgUgovUGcgMiAwIFIKL0sgND4+CmVuZG9iagoxOCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTIgMCBSCi9LIDE5IDAgUj4+CmVuZG9iagoyMSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMjAgMCBSCi9QZyAyIDAgUgovSyA1Pj4KZW5kb2JqCjIwIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL0gxCi9QIDEyIDAgUgovSyAyMSAwIFI+PgplbmRvYmoKMjMgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDIyIDAgUgovUGcgMiAwIFIKL0sgNj4+CmVuZG9iagoyNSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMjQgMCBSCi9QZyAyIDAgUgovSyA3Pj4KZW5kb2JqCjI0IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL1N0cm9uZwovUCAyMiAwIFIKL0sgMjUgMCBSPj4KZW5kb2JqCjI2IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAyMiAwIFIKL1BnIDIgMCBSCi9LIDg+PgplbmRvYmoKMjIgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCAxMiAwIFIKL0sgWzIzIDAgUiAyNCAwIFIgMjYgMCBSXT4+CmVuZG9iagoyNyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTIgMCBSCi9QZyAyIDAgUgovSyAwPj4KZW5kb2JqCjMwIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAyOSAwIFIKL1BnIDIgMCBSCi9LIDk+PgplbmRvYmoKMzEgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDI5IDAgUgovUGcgMiAwIFIKL0sgMTA+PgplbmRvYmoKMjkgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvSDIKL1AgMjggMCBSCi9LIFszMCAwIFIgMzEgMCBSXT4+CmVuZG9iagozNCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MYmwKL1AgMzMgMCBSCi9QZyAyIDAgUgovSyAxMT4+CmVuZG9iagozNiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMzUgMCBSCi9QZyAyIDAgUgovSyAxMj4+CmVuZG9iagozNSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9TdHJvbmcKL1AgMzMgMCBSCi9LIDM2IDAgUj4+CmVuZG9iagozNyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMzMgMCBSCi9QZyAyIDAgUgovSyAxMz4+CmVuZG9iagozMyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MSQovUCAzMiAwIFIKL0sgWzM0IDAgUiAzNSAwIFIgMzcgMCBSXT4+CmVuZG9iagozOSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MYmwKL1AgMzggMCBSCi9QZyAyIDAgUgovSyAxND4+CmVuZG9iago0MSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNDAgMCBSCi9QZyAyIDAgUgovSyAxNT4+CmVuZG9iago0MCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9TdHJvbmcKL1AgMzggMCBSCi9LIDQxIDAgUj4+CmVuZG9iago0MiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMzggMCBSCi9QZyAyIDAgUgovSyAxNj4+CmVuZG9iagozOCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MSQovUCAzMiAwIFIKL0sgWzM5IDAgUiA0MCAwIFIgNDIgMCBSXT4+CmVuZG9iago0NCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MYmwKL1AgNDMgMCBSCi9QZyAyIDAgUgovSyAxNz4+CmVuZG9iago0NiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNDUgMCBSCi9QZyAyIDAgUgovSyAxOD4+CmVuZG9iago0NSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9TdHJvbmcKL1AgNDMgMCBSCi9LIDQ2IDAgUj4+CmVuZG9iago0NyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNDMgMCBSCi9QZyAyIDAgUgovSyAxOT4+CmVuZG9iago0MyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MSQovUCAzMiAwIFIKL0sgWzQ0IDAgUiA0NSAwIFIgNDcgMCBSXT4+CmVuZG9iago0OSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MYmwKL1AgNDggMCBSCi9QZyAyIDAgUgovSyAyMD4+CmVuZG9iago1MSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNTAgMCBSCi9QZyAyIDAgUgovSyAyMT4+CmVuZG9iago1MCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9TdHJvbmcKL1AgNDggMCBSCi9LIDUxIDAgUj4+CmVuZG9iago1MiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNDggMCBSCi9QZyAyIDAgUgovSyAyMj4+CmVuZG9iago0OCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MSQovUCAzMiAwIFIKL0sgWzQ5IDAgUiA1MCAwIFIgNTIgMCBSXT4+CmVuZG9iago1NCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MYmwKL1AgNTMgMCBSCi9QZyAyIDAgUgovSyAyMz4+CmVuZG9iago1NiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNTUgMCBSCi9QZyAyIDAgUgovSyAyND4+CmVuZG9iago1NSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9TdHJvbmcKL1AgNTMgMCBSCi9LIDU2IDAgUj4+CmVuZG9iago1NyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNTMgMCBSCi9QZyAyIDAgUgovSyAyNT4+CmVuZG9iago1MyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MSQovUCAzMiAwIFIKL0sgWzU0IDAgUiA1NSAwIFIgNTcgMCBSXT4+CmVuZG9iagozMiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9MCi9QIDI4IDAgUgovSyBbMzMgMCBSIDM4IDAgUiA0MyAwIFIgNDggMCBSIDUzIDAgUl0KL0EgWzw8L08gL0xpc3QKL0xpc3ROdW1iZXJpbmcgL0RlY2ltYWw+Pl0+PgplbmRvYmoKMjggMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDEyIDAgUgovSyBbMjkgMCBSIDMyIDAgUl0+PgplbmRvYmoKNjAgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDU5IDAgUgovUGcgMiAwIFIKL0sgMjY+PgplbmRvYmoKNjEgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDU5IDAgUgovUGcgMiAwIFIKL0sgMjc+PgplbmRvYmoKNTkgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvSDIKL1AgNTggMCBSCi9LIFs2MCAwIFIgNjEgMCBSXT4+CmVuZG9iago2MyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNjIgMCBSCi9QZyAyIDAgUgovSyAyOD4+CmVuZG9iago2MiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9QCi9QIDU4IDAgUgovSyA2MyAwIFI+PgplbmRvYmoKNjQgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDU4IDAgUgovUGcgMiAwIFIKL0sgMjk+PgplbmRvYmoKNjUgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDU4IDAgUgovUGcgMiAwIFIKL0sgMzA+PgplbmRvYmoKNjcgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDY2IDAgUgovUGcgMiAwIFIKL0sgMzE+PgplbmRvYmoKNjYgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCA1OCAwIFIKL0sgNjcgMCBSPj4KZW5kb2JqCjY4IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA1OCAwIFIKL1BnIDIgMCBSCi9LIDMyPj4KZW5kb2JqCjY5IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA1OCAwIFIKL1BnIDIgMCBSCi9LIDMzPj4KZW5kb2JqCjcxIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA3MCAwIFIKL1BnIDIgMCBSCi9LIDM0Pj4KZW5kb2JqCjcwIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL1AKL1AgNTggMCBSCi9LIDcxIDAgUj4+CmVuZG9iago3MiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNTggMCBSCi9QZyAyIDAgUgovSyAzNT4+CmVuZG9iago3MyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNTggMCBSCi9QZyAyIDAgUgovSyAzNj4+CmVuZG9iago3NSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgNzQgMCBSCi9QZyAyIDAgUgovSyAzNz4+CmVuZG9iago3NCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9QCi9QIDU4IDAgUgovSyA3NSAwIFI+PgplbmRvYmoKNzYgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDU4IDAgUgovUGcgMiAwIFIKL0sgMzg+PgplbmRvYmoKNzcgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDU4IDAgUgovUGcgMiAwIFIKL0sgMzk+PgplbmRvYmoKNzkgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDc4IDAgUgovUGcgMiAwIFIKL0sgNDA+PgplbmRvYmoKNzggMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCA1OCAwIFIKL0sgNzkgMCBSPj4KZW5kb2JqCjgwIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA1OCAwIFIKL1BnIDIgMCBSCi9LIDQxPj4KZW5kb2JqCjgxIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA1OCAwIFIKL1BnIDIgMCBSCi9LIDQyPj4KZW5kb2JqCjgzIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA4MiAwIFIKL1BnIDIgMCBSCi9LIDQzPj4KZW5kb2JqCjgyIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL1AKL1AgNTggMCBSCi9LIDgzIDAgUj4+CmVuZG9iago1OCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTIgMCBSCi9LIFs1OSAwIFIgNjIgMCBSIDY0IDAgUiA2NSAwIFIgNjYgMCBSIDY4IDAgUiA2OSAwIFIgNzAgMCBSIDcyIDAgUiA3MyAwIFIgNzQgMCBSIDc2IDAgUiA3NyAwIFIgNzggMCBSIDgwIDAgUiA4MSAwIFIgODIgMCBSXT4+CmVuZG9iago4NiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgODUgMCBSCi9QZyAyIDAgUgovSyA0ND4+CmVuZG9iago4NyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgODUgMCBSCi9QZyAyIDAgUgovSyA0NT4+CmVuZG9iago4NSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9IMgovUCA4NCAwIFIKL0sgWzg2IDAgUiA4NyAwIFJdPj4KZW5kb2JqCjg5IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA4OCAwIFIKL1BnIDIgMCBSCi9LIDQ2Pj4KZW5kb2JqCjg4IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL0gzCi9QIDg0IDAgUgovSyA4OSAwIFI+PgplbmRvYmoKOTEgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDkwIDAgUgovUGcgMiAwIFIKL0sgNDc+PgplbmRvYmoKOTAgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCA4NCAwIFIKL0sgOTEgMCBSPj4KZW5kb2JqCjkzIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA5MiAwIFIKL1BnIDIgMCBSCi9LIDQ4Pj4KZW5kb2JqCjkyIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL0gzCi9QIDg0IDAgUgovSyA5MyAwIFI+PgplbmRvYmoKOTUgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDk0IDAgUgovUGcgMiAwIFIKL0sgNDk+PgplbmRvYmoKOTQgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCA4NCAwIFIKL0sgOTUgMCBSPj4KZW5kb2JqCjk3IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCA5NiAwIFIKL1BnIDIgMCBSCi9LIDUwPj4KZW5kb2JqCjk2IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL0gzCi9QIDg0IDAgUgovSyA5NyAwIFI+PgplbmRvYmoKOTkgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDk4IDAgUgovUGcgMiAwIFIKL0sgNTE+PgplbmRvYmoKOTggMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCA4NCAwIFIKL0sgOTkgMCBSPj4KZW5kb2JqCjg0IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAxMiAwIFIKL0sgWzg1IDAgUiA4OCAwIFIgOTAgMCBSIDkyIDAgUiA5NCAwIFIgOTYgMCBSIDk4IDAgUl0+PgplbmRvYmoKMTAxIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAxMDAgMCBSCi9QZyAyIDAgUgovSyA1Mj4+CmVuZG9iagoxMDAgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDEyIDAgUgovSyAxMDEgMCBSPj4KZW5kb2JqCjEwMyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTAyIDAgUgovUGcgMiAwIFIKL0sgNTM+PgplbmRvYmoKMTAyIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL0gzCi9QIDEyIDAgUgovSyAxMDMgMCBSPj4KZW5kb2JqCjEwNSAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTA0IDAgUgovUGcgMiAwIFIKL0sgNTQ+PgplbmRvYmoKMTA3IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAxMDYgMCBSCi9QZyAyIDAgUgovSyA1NT4+CmVuZG9iagoxMDYgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvU3Ryb25nCi9QIDEwNCAwIFIKL0sgMTA3IDAgUj4+CmVuZG9iagoxMDggMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvTm9uU3RydWN0Ci9QIDEwNCAwIFIKL1BnIDIgMCBSCi9LIDU2Pj4KZW5kb2JqCjExMCAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTA5IDAgUgovUGcgMiAwIFIKL0sgNTc+PgplbmRvYmoKMTA5IDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL1N0cm9uZwovUCAxMDQgMCBSCi9LIDExMCAwIFI+PgplbmRvYmoKMTExIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAxMDQgMCBSCi9QZyAyIDAgUgovSyA1OD4+CmVuZG9iagoxMDQgMCBvYmoKPDwvVHlwZSAvU3RydWN0RWxlbQovUyAvUAovUCAxMiAwIFIKL0sgWzEwNSAwIFIgMTA2IDAgUiAxMDggMCBSIDEwOSAwIFIgMTExIDAgUl0+PgplbmRvYmoKMTEyIDAgb2JqCjw8L1R5cGUgL1N0cnVjdEVsZW0KL1MgL05vblN0cnVjdAovUCAxMiAwIFIKL1BnIDIgMCBSCi9LIDU5Pj4KZW5kb2JqCjExMyAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Ob25TdHJ1Y3QKL1AgMTIgMCBSCi9QZyAyIDAgUgovSyA2MD4+CmVuZG9iagoxMiAwIG9iago8PC9UeXBlIC9TdHJ1Y3RFbGVtCi9TIC9Eb2N1bWVudAovTGFuZyAoZW4pCi9QIDExIDAgUgovSyBbMTMgMCBSIDE1IDAgUiAxOCAwIFIgMjAgMCBSIDIyIDAgUiAyNyAwIFIgMjggMCBSIDU4IDAgUiA4NCAwIFIgMTAwIDAgUiAxMDIgMCBSIDEwNCAwIFIgMTEyIDAgUiAxMTMgMCBSXT4+CmVuZG9iagoxMTQgMCBvYmoKWzI3IDAgUiAxNCAwIFIgMTYgMCBSIDE3IDAgUiAxOSAwIFIgMjEgMCBSIDIzIDAgUiAyNSAwIFIgMjYgMCBSIDMwIDAgUiAzMSAwIFIgMzQgMCBSIDM2IDAgUiAzNyAwIFIgMzkgMCBSIDQxIDAgUiA0MiAwIFIgNDQgMCBSIDQ2IDAgUiA0NyAwIFIgNDkgMCBSIDUxIDAgUiA1MiAwIFIgNTQgMCBSIDU2IDAgUiA1NyAwIFIgNjAgMCBSIDYxIDAgUiA2MyAwIFIgNjQgMCBSIDY1IDAgUiA2NyAwIFIgNjggMCBSIDY5IDAgUiA3MSAwIFIgNzIgMCBSIDczIDAgUiA3NSAwIFIgNzYgMCBSIDc3IDAgUiA3OSAwIFIgODAgMCBSIDgxIDAgUiA4MyAwIFIgODYgMCBSIDg3IDAgUiA4OSAwIFIgOTEgMCBSIDkzIDAgUiA5NSAwIFIgOTcgMCBSIDk5IDAgUiAxMDEgMCBSIDEwMyAwIFIgMTA1IDAgUiAxMDcgMCBSIDEwOCAwIFIgMTEwIDAgUiAxMTEgMCBSIDExMiAwIFIgMTEzIDAgUl0KZW5kb2JqCjExNSAwIG9iago8PC9UeXBlIC9QYXJlbnRUcmVlCi9OdW1zIFswIDExNCAwIFJdPj4KZW5kb2JqCjExIDAgb2JqCjw8L1R5cGUgL1N0cnVjdFRyZWVSb290Ci9LIDEyIDAgUgovUGFyZW50VHJlZU5leHRLZXkgMQovUGFyZW50VHJlZSAxMTUgMCBSPj4KZW5kb2JqCjExOCAwIG9iago8PC9UaXRsZSA8RkVGRjAwMzAwMDMxMDAyMDAwQTAwMDQ4MDA0RjAwNTcwMDIwMDA1NDAwNDgwMDQ1MDAyMDAwNTIwMDRGMDA1NTAwNEUwMDQ0MDA1NDAwNDEwMDQyMDA0QzAwNDUwMDIwMDA1NzAwNEYwMDUyMDA0QjAwNTM+Ci9EZXN0IFsyIDAgUiAvWFlaIDUwLjc0NjU4MiA1MzIuNzg0MTggMF0KL1BhcmVudCAxMTcgMCBSCi9TRSAyOSAwIFIKL05leHQgMTE5IDAgUj4+CmVuZG9iagoxMTkgMCBvYmoKPDwvVGl0bGUgPEZFRkYwMDMwMDAzMjAwMjAwMEEwMDA1NDAwNDgwMDQ1MDAyMDAwNTMwMDQ1MDA0MTAwNTQwMDUzPgovRGVzdCBbMiAwIFIgL1hZWiAzMDMuNjAyMDUgNTMyLjc4NDE4IDBdCi9QYXJlbnQgMTE3IDAgUgovU0UgNTkgMCBSCi9QcmV2IDExOCAwIFIKL05leHQgMTIwIDAgUj4+CmVuZG9iagoxMjEgMCBvYmoKPDwvVGl0bGUgKFRoZSBwdWJsaXNoZWQgcmVjb3JkKQovRGVzdCBbMiAwIFIgL1hZWiA1MC41NTQ2ODggMTgyLjc4NTQ2IDBdCi9QYXJlbnQgMTIwIDAgUgovU0UgODggMCBSCi9OZXh0IDEyMiAwIFI+PgplbmRvYmoKMTIyIDAgb2JqCjw8L1RpdGxlIChGaXJzdCBsb29rIGF0IHRoZSByZXNlYXJjaCkKL0Rlc3QgWzIgMCBSIC9YWVogMjI1Ljk3NjMyIDE4Mi43ODU0NiAwXQovUGFyZW50IDEyMCAwIFIKL1NFIDkyIDAgUgovUHJldiAxMjEgMCBSCi9OZXh0IDEyMyAwIFI+PgplbmRvYmoKMTIzIDAgb2JqCjw8L1RpdGxlIChBIHJvb20gdGhhdCBzdGF5cyBzbWFsbCkKL0Rlc3QgWzIgMCBSIC9YWVogNDAxLjMwNTY2IDE4Mi43ODU0NiAwXQovUGFyZW50IDEyMCAwIFIKL1NFIDk2IDAgUgovUHJldiAxMjIgMCBSCi9OZXh0IDEyNCAwIFI+PgplbmRvYmoKMTI0IDAgb2JqCjw8L1RpdGxlIChPbmUgc3RlcDogcmVwbHkgYW5kIGNsYWltIHlvdXIgc2VhdC4pCi9EZXN0IFsyIDAgUiAvWFlaIDY2LjA5ODUxMSA5Ni4zMDkwMjEgMF0KL1BhcmVudCAxMjAgMCBSCi9TRSAxMDIgMCBSCi9QcmV2IDEyMyAwIFI+PgplbmRvYmoKMTIwIDAgb2JqCjw8L1RpdGxlIDxGRUZGMDAzMDAwMzMwMDIwMDBBMDAwNTcwMDQ4MDA0MTAwNTQwMDIwMDA0RDAwNDUwMDREMDA0MjAwNDUwMDUyMDA1MzAwNDgwMDQ5MDA1MDAwMjAwMDQ3MDA0OTAwNTYwMDQ1MDA1MzAwMjAwMDU5MDA0RjAwNTU+Ci9EZXN0IFsyIDAgUiAvWFlaIDUwLjc0NjU4MiAyMDUuMDM0MTggMF0KL1BhcmVudCAxMTcgMCBSCi9TRSA4NSAwIFIKL1ByZXYgMTE5IDAgUgovRmlyc3QgMTIxIDAgUgovTGFzdCAxMjQgMCBSCi9Db3VudCA0Pj4KZW5kb2JqCjExNyAwIG9iago8PC9UaXRsZSAoQSByb29tIHdoZXJlIHRoZSBwZW9wbGUgd2hvIG1vdmUgZ29vZHMgYW5kIHJ1bnBsYW50cyB0YWxrIHBsYWlubHkgYWJvdXQgd2hhdCBBSSBpcyBkb2luZyB0byB0aGVpcndvcmsuKQovRGVzdCBbMiAwIFIgL1hZWiA1MC40NTc5ODkgNjk2LjIwNTAyIDBdCi9QYXJlbnQgMTE2IDAgUgovU0UgMjAgMCBSCi9GaXJzdCAxMTggMCBSCi9MYXN0IDEy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vqAsREr9/3hPc/4nN3mj9av+C9KtZxwKZW5kc3RyZWFtCmVuZG9iagoxMjcgMCBvYmoKPDwvVHlwZSAvRm9udERlc2NyaXB0b3IKL0ZvbnROYW1lIC9BQUFBQUErTGliZXJhdGlvblNlcmlmLUJvbGQKL0ZsYWdzIDYKL0FzY2VudCA4OTEuMTEzMjgKL0Rlc2NlbnQgLTIxNi4zMDg1OQovU3RlbVYgODMuOTg0Mzc1Ci9DYXBIZWlnaHQgLTY1NC43ODUxNgovSXRhbGljQW5nbGUgMAovRm9udEJCb3ggWy01NDMuOTQ1MzEgLTMwMy4yMjI2NiAxMzQ0LjIzODI4IDEwMDcuODEyNV0KL0ZvbnRGaWxlMiAxMjYgMCBSPj4KZW5kb2JqCjEyOCAwIG9iago8PC9UeXBlIC9Gb250Ci9Gb250RGVzY3JpcHRvciAxMjcgMCBSCi9CYXNlRm9udCAvQUFBQUFBK0xpYmVyYXRpb25TZXJpZi1Cb2xkCi9TdWJ0eXBlIC9DSURGb250VHlwZTIKL0NJRFRvR0lETWFwIC9JZGVudGl0eQovQ0lEU3lzdGVtSW5mbyA8PC9SZWdpc3RyeSAoQWRvYmUpCi9PcmRlcmluZyAoSWRlbnRpdHkpCi9TdXBwbGVtZW50IDA+PgovVyBbMCBbNzc3LjgzMjAzIDAgMCAyNTBdIDkgWzgzMy4wMDc4MV0gMTYgWzMzMy4wMDc4MSAyNTBdIDI5IFszMzMuMDA3ODFdIDM2IFs3MjIuMTY3OTcgNjY2Ljk5MjE5IDAgNzIyLjE2Nzk3IDY2Ni45OTIxOSA2MTAuODM5ODQgNzc3LjgzMjAzIDAgMzg5LjE2MDE2IDAgMCA2NjYuOTkyMTkgOTQzLjg0NzY2IDcyMi4xNjc5NyA3NzcuODMyMDMgNjEwLjgzOTg0IDAgNzIyLjE2Nzk3IDAgNjY2Ljk5MjE5XSA2OSBbNTU2LjE1MjM0IDQ0My44NDc2NiA1NTYuMTUyMzQgNDQzLjg0NzY2IDMzMy4wMDc4MV0gNzUgWzU1Ni4xNTIzNCAyNzcuODMyMDMgMCA1NTYuMTUyMzQgMjc3LjgzMjAzIDgzMy4wMDc4MSA1NTYuMTUyMzRdIDgzIFs1NTYuMTUyMzQgMCA0NDMuODQ3NjYgMzg5LjE2MDE2IDMzMy4wMDc4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bnMKL0ZsYWdzIDQKL0FzY2VudCA5MDUuMjczNDQKL0Rlc2NlbnQgLTIxMS45MTQwNgovU3RlbVYgNDUuODk4NDM4Ci9DYXBIZWlnaHQgLTY4Ny45ODgyOAovSXRhbGljQW5nbGUgMAovRm9udEJCb3ggWy01NDMuOTQ1MzEgLTMwMy4yMjI2NiAxMzAxLjc1NzgxIDk3OS45ODA0N10KL0ZvbnRGaWxlMiAxMzAgMCBSPj4KZW5kb2JqCjEzMiAwIG9iago8PC9UeXBlIC9Gb250Ci9Gb250RGVzY3JpcHRvciAxMzEgMCBSCi9CYXNlRm9udCAvQkFBQUFBK0xpYmVyYXRpb25TYW5zCi9TdWJ0eXBlIC9DSURGb250VHlwZTIKL0NJRFRvR0lETWFwIC9JZGVudGl0eQovQ0lEU3lzdGVtSW5mbyA8PC9SZWdpc3RyeSAoQWRvYmUpCi9PcmRlcmluZyAoSWRlbnRpdHkpCi9TdXBwbGVtZW50IDA+PgovVyBbMCBbNzUwIDAgMCAyNzcuODMyMDNdIDkgWzY2Ni45OTIxOV0gMTUgWzI3Ny44MzIwMyAzMzMuMDA3ODEgMjc3LjgzMjAzXSAxOSAyMSA1NTYuMTUyMzQgMzAgWzI3Ny44MzIwM10gMzYgMzcgNjY2Ljk5MjE5IDM4IDM5IDcyMi4xNjc5NyA0MCBbNjY2Ljk5MjE5IDYxMC44Mzk4NCA3NzcuODMyMDMgNzIyLjE2Nzk3IDI3Ny44MzIwMyAwIDAgNTU2LjE1MjM0IDgzMy4wMDc4MSA3MjIuMTY3OTcgNzc3LjgzMjAzIDY2Ni45OTIxOSAwIDcyMi4xNjc5NyA2NjYuOTkyMTkgNjEwLjgzOTg0IDcyMi4xNjc5NyA2NjYuOTkyMTkgOTQzLjg0NzY2IDAgNjY2Ljk5MjE5IDYxMC44Mzk4NF0gNjggNjkgNTU2LjE1MjM0IDcxIDcyIDU1Ni4xNTIzNCA3MyBbMjc3LjgzMjAzIDU1Ni4xNTIzNCA1NTYuMTUyMzQgMjIyLjE2Nzk3XSA3OSBbMjIyLjE2Nzk3IDgzMy4wMDc4MV0gODEgODQgNTU2LjE1MjM0IDg1IFszMzMuMDA3ODFdIDg3IFsyNzcuODMyMDMgNTU2LjE1MjM0XSA5MCBbNzIyLjE2Nzk3XV0KL0RXIDUwMD4+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MDAwMCBuIAowMDAwMDAwMzMxIDAwMDAwIG4gCjAwMDAwMzE5NDMgMDAwMDAgbiAKMDAwMDA0NDQ5MCAwMDAwMCBuIAowMDAwMDU3MzgzIDAwMDAwIG4gCjAwMDAwNjcyODggMDAwMDAgbiAKMDAwMDAwMDM2OCAwMDAwMCBuIAowMDAwMDAwNDQ0IDAwMDAwIG4gCjAwMDAwMTA1NTUgMDAwMDAgbiAKMDAwMDAxOTEyMyAwMDAwMCBuIAowMDAwMDE4NDMxIDAwMDAwIG4gCjAwMDAwMTA2ODggMDAwMDAgbiAKMDAwMDAxMDYxMSAwMDAwMCBuIAowMDAwMDEwOTE0IDAwMDAwIG4gCjAwMDAwMTA3NjAgMDAwMDAgbiAKMDAwMDAxMDgzNyAwMDAwMCBuIAowMDAwMDExMDcyIDAwMDAwIG4gCjAwMDAwMTA5OTUgMDAwMDAgbiAKMDAwMDAxMTIyMSAwMDAwMCBuIAowMDAwMDExMTQ0IDAwMDAwIG4gCjAwMDAwMTE1ODYgMDAwMDAgbiAKMDAwMDAxMTI4NiAwMDAwMCBuIAowMDAwMDExNDQwIDAwMDAwIG4gCjAwMDAwMTEzNjMgMDAwMDAgbiAKMDAwMDAxMTUwOSAwMDAwMCBuIAowMDAwMDExNjY2IDAwMDAwIG4gCjAwMDAwMTM5OTggMDAwMDAgbiAKMDAwMDAxMTg5OCAwMDAwMCBuIAowMDAwMDExNzQzIDAwMDAwIG4gCjAwMDAwMTE4MjAgMDAwMDAgbiAKMDAwMDAxMzg2MiAwMDAwMCBuIAowMDAwMDEyMjY5IDAwMDAwIG4gCjAwMDAwMTE5NzIgMDAwMDAgbiAKMDAwMDAxMjEyMiAwMDAwMCBuIAowMDAwMDEyMDQ0IDAwMDAwIG4gCjAwMDAwMTIxOTEgMDAwMDAgbiAKMDAwMDAxMjY0NyAwMDAwMCBuIAowMDAwMDEyMzUwIDAwMDAwIG4gCjAwMDAwMTI1MDAgMDAwMDAgbiAKMDAwMDAxMjQyMiAwMDAwMCBuIAowMDAwMDEyNTY5IDAwMDAwIG4gCjAwMDAwMTMwMjUgMDAwMDAgbiAKMDAwMDAxMjcyOCAwMDAwMCBuIAowMDAwMDEyODc4IDAwMDAwIG4gCjAwMDAwMTI4MDAgMDAwMDAgbiAKMDAwMDAxMjk0NyAwMDAwMCBuIAowMDAwMDEzNDAzIDAwMDAwIG4gCjAwMDAwMTMxMDYgMDAwMDAgbiAKMDAwMDAxMzI1NiAwMDAwMCBuIAowMDAwMDEzMTc4IDAwMDAwIG4gCjAwMDAwMTMzMjUgMDAwMDAgbiAKMDAwMDAxMzc4MSAwMDAwMCBuIAowMDAwMDEzNDg0IDAwMDAwIG4gCjAwMDAwMTM2MzQgMDAwMDAgbiAKMDAwMDAxMzU1NiAwMDAwMCBuIAowMDAwMDEzNzAzIDAwMDAwIG4gCjAwMDAwMTU5NDEgMDAwMDAgbiAKMDAwMDAxNDIzNSAwMDAwMCBuIAowMDAwMDE0MDc5IDAwMDAwIG4gCjAwMDAwMTQxNTcgMDAwMDAgbiAKMDAwMDAxNDM4NyAwMDAwMCBuIAowMDAwMDE0MzA5IDAwMDAwIG4gCjAwMDAwMTQ0NTEgMDAwMDAgbiAKMDAwMDAxNDUyOSAwMDAwMCBuIAowMDAwMDE0Njg1IDAwMDAwIG4gCjAwMDAwMTQ2MDcgMDAwMDAgbiAKMDAwMDAxNDc0OSAwMDAwMCBuIAowMDAwMDE0ODI3IDAwMDAwIG4gCjAwMDAwMTQ5ODMgMDAwMDAgbiAKMDAwMDAxNDkwNSAwMDAwMCBuIAowMDAwMDE1MDQ3IDAwMDAwIG4gCjAwMDAwMTUxMjUgMDAwMDAgbiAKMDAwMDAxNTI4MSAwMDAwMCBuIAowMDAwMDE1MjAzIDAwMDAwIG4gCjAwMDAwMTUzNDUgMDAwMDAgbiAKMDAwMDAxNTQyMyAwMDAwMCBuIAowMDAwMDE1NTc5IDAwMDAwIG4gCjAwMDAwMTU1MDEgMDAwMDAgbiAKMDAwMDAxNTY0MyAwMDAwMCBuIAowMDAwMDE1NzIxIDAwMDAwIG4gCjAwMDAwMTU4NzcgMDAwMDAgbiAKMDAwMDAxNTc5OSAwMDAwMCBuIAowMDAwMDE3MjEyIDAwMDAwIG4gCjAwMDAwMTYyODMgMDAwMDAgbiAKMDAwMDAxNjEyNyAwMDAwMCBuIAowMDAwMDE2MjA1IDAwMDAwIG4gCjAwMDAwMTY0MzUgMDAwMDAgbiAKMDAwMDAxNjM1NyAwMDAwMCBuIAowMDAwMDE2NTc4IDAwMDAwIG4gCjAwMDAwMTY1MDAgMDAwMDAgbiAKMDAwMDAxNjcyMCAwMDAwMCBuIAowMDAwMDE2NjQyIDAwMDAwIG4gCjAwMDAwMTY4NjMgMDAwMDAgbiAKMDAwMDAxNjc4NSAwMDAwMCBuIAowMDAwMDE3MDA1IDAwMDAwIG4gCjAwMDAwMTY5MjcgMDAwMDAgbiAKMDAwMDAxNzE0OCAwMDAwMCBuIAowMDAwMDE3MDcwIDAwMDAwIG4gCjAwMDAwMTc0MDggMDAwMDAgbiAKMDAwMDAxNzMyOCAwMDAwMCBuIAowMDAwMDE3NTYyIDAwMDAwIG4gCjAwMDAwMTc0ODIgMDAwMDAgbiAKMDAwMDAxODE3MyAwMDAwMCBuIAowMDAwMDE3NjI5IDAwMDAwIG4gCjAwMDAwMTc3ODkgMDAwMDAgbiAKMDAwMDAxNzcwOSAwMDAwMCBuIAowMDAwMDE3ODYxIDAwMDAwIG4gCjAwMDAwMTgwMjEgMDAwMDAgbiAKMDAwMDAxNzk0MSAwMDAwMCBuIAowMDAwMDE4MDkzIDAwMDAwIG4gCjAwMDAwMTgyNzMgMDAwMDAgbiAKMDAwMDAxODM1MiAwMDAwMCBuIAowMDAwMDE4NjExIDAwMDAwIG4gCjAwMDAwMTkwNjYgMDAwMDAgbiAKMDAwMDAyMDcyNCAwMDAwMCBuIAowMDAwMDIwNDg1IDAwMDAwIG4gCjAwMDAwMTkyMTYgMDAwMDAgbiAKMDAwMDAxOTQ0NSAwMDAwMCBuIAowMDAwMDIwMjE0IDAwMDAwIG4gCjAwMDAwMTk2MjggMDAwMDAgbiAKMDAwMDAxOTc2MSAwMDAwMCBuIAowMDAwMDE5OTE0IDAwMDAwIG4gCjAwMDAwMjAwNjQgMDAwMDAgbiAKMDAwMDAyMDc5OSAwMDAwMCBuIAowMDAwMDIxMDE0IDAwMDAwIG4gCjAwMDAwMzA2NDEgMDAwMDAgbiAKMDAwMDAzMDg5OCAwMDAwMCBuIAowMDAwMDMxNTQ2IDAwMDAwIG4gCjAwMDAwMzIwOTcgMDAwMDAgbiAKMDAwMDA0MzEzNiAwMDAwMCBuIAowMDAwMDQzMzg3IDAwMDAwIG4gCjAwMDAwNDQxMDggMDAwMDAgbiAKMDAwMDA0NDYzOCAwMDAwMCBuIAowMDAwMDU1OTk2IDAwMDAwIG4gCjAwMDAwNTYyNTMgMDAwMDAgbiAKMDAwMDA1Njk4NCAwMDAwMCBuIAowMDAwMDU3NTM2IDAwMDAwIG4gCjAwMDAwNjYxODcgMDAwMDAgbiAKMDAwMDA2NjQzOSAwMDAwMCBuIAowMDAwMDY2OTE4IDAwMDAwIG4gCnRyYWlsZXIKPDwvU2l6ZSAxNDIKL1Jvb3QgMTI1IDAgUgovSW5mbyAxIDAgUj4+CnN0YXJ0eHJlZgo2NzQzNwolJUVPRgo=');
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('council-prospectus', 'Council Prospectus', 'council', 'pdf', 'Prospectus', 'One-page prospectus for the Glenride Council on AI & Supply-Chain Resilience.', 0, 'Oct 2026', '2026-10-10T06:01:07.738Z', '', 'council-prospectus', 'glenride-council-prospectus.pdf', 'application/pdf');
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('commercial-plan', 'App Store Commercial Plan', 'commercial', 'markdown', 'Working plan', 'Product lineup, plain-language sales model, status rules, licensing, and launch decisions.', 0, 'Oct 8, 2026', NULL, '# Glenride App Store — Commercial Plan

**Written 2026-10-08.** Positions the store as a real storefront: regular people
can **buy** products or **license** work. No crypto-investment language anywhere.
$SPIN and $WAVY are never listed as products (WAVY hasn''t launched; SPIN has no
market). Publications are sold as writing, not financial products. No profit
promises, ever.

---

## 1. Product lineup

### BUY — one-time purchase

| Product | What it is (plain language) | Status | Price |
|---|---|---|---|
| 30-Day Ruck Reset guide | A 30-day rucking/fitness plan: walk with weight, build up safely, track it daily. ~7,200 words, printable. | Done — final draft + review PDF exist. Needs: store listing + payment link. | **$19** (his price, set) |
| Cornerstone essay | "The Power-Wisdom Gap and the Imperative for Independent Infrastructure" — 9,560-word essay on technology, independence, and building your own infrastructure. | Draft complete, rendered preview exists. Needs: his publish approval + rebrand decisions. | **$9–$12 digital** (suggestion — needs his call) |
| The Borrowed Spell | Essay on language, words, and consent (~4,100 words). | Draft complete, awaiting his first pass. | **$7–$9 digital, or bundle with cornerstone essay for $15** (suggestion — needs his call) |
| STARBORN screenplay | Feature screenplay, ancient-aliens/Native American story. | v1 draft, awaiting his notes. **Not for sale yet.** | — (later: option/production licensing) |
| WAVY Ship''s Store memorabilia | Society burgee ($36), brass compass ($68), linen tee ($78), wax seal kit ($95) — made to order. Founder pricing now; goes up at launch. | Vendor researched, CSV ready. Needs: samples + quality checks first. | **$36–$120 founder pricing** (his prices, set) |
| Token checker | Downloadable script: checks a Base or Solana token''s basics before you touch it. Runs on any computer with Python 3. | Working CLI. | **Free download** (suggestion — lead magnet, builds trust) |

### LICENSE — recurring or commercial-use rights

| Product | What it is (plain language) | Status | Price |
|---|---|---|---|
| The Dispatch (paid tier) | Weekly field-notes letter: outdoors, body, workshop. Paid tier adds a monthly deep cut, a 30-day challenge, and Q&A. | Planned — free tier launches first, paid after ~8 issues. | **$6/mo or $60/yr** (his prices, set) |
| Vapor Wire Bot setup | His Telegram chat-automation bot, installed and configured for YOUR channels: welcomes, scheduled posts, moderation, keyword alerts. | Built and tested on his channels. Needs: his own deployment proven first. | **Setup fee + monthly care plan** (suggestion — needs his call; e.g. one-time setup + $25/mo) |
| Content-factory service | He turns your long videos into short clips with captions, using his clipping pipeline. | Scaffold built, untested — smoke test on the Mac Studio first. | **Per-project or monthly** (suggestion — needs his call, after it works) |
| Job-digest data feed | The startup job digest as a feed/API for someone else''s site or newsletter. | Digest runs daily; feed export not built yet. | **Monthly license** (suggestion — later) |
| Brand/IP licensing | Reynard''s fox mark, WAVY Society marks for merch collaborations. | Later — needs counsel before any IP deal. | **Case by case** |

### Pricing rationale

- **$19 guide:** his number, grounded in the float-free plan (one $19 sale ≈ 1.4 physical orders of profit; 3 sales/month covers a Shopify sub). Digital = ~90% margin after card fees.
- **$6/mo / $60/yr Dispatch:** his number. 200 paying readers ≈ $1,200/mo recurring. Newsletters pay in months 6–18, not week 2 — the free tier is the asset.
- **Essays $7–$12:** suggestion. Priced like a good ebook chapter — low enough to impulse-buy, high enough to signal it''s real writing. Bundle at $15 rewards buying both.
- **Token checker free:** suggestion. A free tool that genuinely helps people builds the audience that buys everything else.
- **Bot/service licensing:** suggestions only. Price after his own deployment proves the value; never sell a service he hasn''t run himself.

---

## 2. License template (personal vs commercial)

*Template — have counsel review before relying on it. This is plain language, not legal advice.*

**Personal license** (included with every purchase): you may read, print, and use
the work for yourself. You may not resell it, post it publicly, or use it in
anything you sell.

**Commercial license** (bought separately): everything in the personal license,
plus the right to use the work in your business — your channels, your products,
your client work. One business per license. You may not resell the work itself
or claim you made it.

**For the bot and services:** the commercial license covers one deployment
(your channels, your server). Monthly care covers updates and fixes; cancel
anytime, the bot keeps working, you just stop getting updates.

**Refunds:** digital guides — 14 days, no questions. Services — deposit
non-refundable once work starts, balance on delivery. Subscriptions — cancel
anytime, keep access through the paid period.

---

## 3. Payment setup — Stripe Payment Links

**Reality check:** Stripe KYC is not done (known blocker). Nothing below starts
onboarding — these are his steps, in order.

Why Payment Links: $0 upfront, no website code needed, Stripe takes ~2.9% + 30¢
per sale only when money moves. Each product gets its own link; paste the link
on the store page behind a buy button.

**His exact steps:**
1. Go to stripe.com and create an account (business type: individual/sole proprietor for now).
2. Complete identity verification (Stripe will ask for ID + tax info — this is the KYC step; nothing sells until this clears).
3. In the Stripe dashboard: Products → Add product → name it (e.g. "30-Day Ruck Reset"), set $19 one-time.
4. Products → Payment Links → Create payment link for that product. Copy the URL.
5. Repeat for each buy product. For The Dispatch paid tier: create a $6/mo recurring product instead (Stripe handles the subscription billing).
6. Paste each link on the store page as the buy button. Test with Stripe''s test mode first, then flip to live.

**What I did not do:** no Stripe account created, no onboarding started, no checkout built. The store page will carry plain "Buy" buttons wired to his links once he hands them over.

---

## 4. Ship sequence (free/cheap first)

1. **30-Day Ruck Reset ($19)** — finished product, zero upfront cost. Payment Link + store listing. First dollar candidate.
2. **Token checker (free download)** — builds the email list and trust. Costs nothing.
3. **The Dispatch, free tier** — signup form on the store page. The audience everything else feeds.
4. **Cornerstone essay ($9–$12)** — after his publish approval. Payment Link.
5. **The Dispatch, paid tier ($6/mo)** — after ~8 free issues prove the value.
6. **WAVY Ship''s Store founder pricing** — after samples + quality checks (physical goods need the float).
7. **Vapor Wire Bot licensing** — after his own channels prove it in production.
8. **Borrowed Spell, STARBORN, data feeds, IP deals** — as drafts finish and counsel is in place.

**Standing rules:** nothing launches without his explicit approval. No profit promises in any copy, ever. Tokens are never products.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('commercial-inventory', 'App Store Inventory', 'commercial', 'markdown', 'Verified inventory', 'Verified inventory of web-deployable, artifact, and self-hosted Glenride work.', 0, 'Oct 8, 2026', NULL, '# Glenride App Store — Inventory

**Swept 2026-10-08.** Every entry below was verified against files on disk or a
live HTTP check. Anything the files don''t support is marked "unverified" —
nothing here is claimed functional on vibes. Parent context (main-agent
handoffs) is cited where the web-artifact catalog couldn''t be listed from here.

Related: `staging-map.md` (the Cloudflare staging proposal this inventory feeds).

## Classification key

- **(a) Web-deployable** — fits Cloudflare Pages/Workers free tier as-is or with a small export step.
- **(b) Homelab-only** — needs his iMac/Docker/secrets/GPU; not a Cloudflare fit.
- **(c) Needs work** — real code or a real pipeline exists, but something concrete blocks staging.

## (a) Web-deployable

### 1. SpinWave teaser site — LIVE
- **Path:** `~/workspace/your_files/spinwave-teaser-site/` (index.html, flow.html, token.html, trust.html, status.js, media)
- **What:** Static teaser/launch site for $SPIN.
- **Evidence:** Live at https://spinwave.pages.dev — HTTP 200 verified 2026-10-08.
- **Deploy route:** Already on Pages under his account. Nothing to do except fill social/form links.

### 2. WAVY prelaunch site — LIVE
- **Path:** `~/workspace/wavy-site/` (index.html, flow.html, token.html, trust.html, status.js, coin.webp)
- **What:** Static prelaunch site for $WAVY with trust center + fair-launch section.
- **Evidence:** Live at https://wavysociety.pages.dev — HTTP 200 verified 2026-10-08.
- **Deploy route:** Already on Pages under his account. Still needs: Telegram invite, X URL, form endpoint, Stripe.

### 3. Tier-2 token backend (Cloudflare Worker + D1 + KV) — code complete, undeployed
- **Path:** `~/workspace/your_files/token-backend-worker/` (wrangler.toml, src/index.js, deploy.py, mac-deploy-runbook.md, migrations/)
- **What:** Wallet-native sign-in backend for both token sites: member numbers, masked referral codes, 0–1000 on-chain score, pending-recognition ledger. No X, no third-party accounts.
- **Evidence:** wrangler.toml names worker `token-backend`, main `src/index.js`, D1 + KV bindings declared (IDs are `REPLACE_WITH_*` placeholders by design — `deploy.py` fills them at deploy time). README documents the full flow; mac-deploy-runbook.md exists.
- **Deploy route:** His Mac: `wrangler login` → `npm install` → `python3 deploy.py` (creates D1 + KV, migrates, sets ADMIN_KEY secret, deploys, prints URL). All free tier.
- **Blocker:** His Cloudflare login. My connection currently 401s on token verify (checked 2026-10-08), so I can''t push or create anything — his run is the only route.

### 4. Job scraper digest page — export-ready
- **Path:** `~/workspace/your_files/job-scraper/digest.md` (regenerated daily by the 08:30 weekday cron; `src/digest.py` renders it)
- **What:** Freshness-ranked startup job digest (567 postings on the 2026-10-08 run).
- **Evidence:** digest.md on disk, 111KB, regenerated 2026-10-08 12:41 UTC; cron `weekday-morning-job-shortlist` active.
- **Deploy route:** Wrap digest.md in a minimal HTML shell and push to a Pages project on each cron run. Tiny change to `src/run.py`.
- **Blocker:** His call — public or private? — plus a deploy (his account; my CF connection is 401).

### 5. Cornerstone essay preview — staged, unpublished by his decision
- **Path:** `~/workspace/your_files/personal-brand-campaign/cornerstone-essay-preview.html`
- **What:** 42-page rendered preview of the 9,560-word cornerstone essay.
- **Evidence:** Local render succeeded 2026-10-07 (per parent context). Static HTML — Pages-ready as-is.
- **Blocker:** His publish approval only (rebrand direction, .org path, conference-passage decision still open).

### 6. The Glenride app store directory itself — proposed
- **What:** The unofficial list this inventory feeds — one static Pages site, Glenride-branded, labeled unofficial, with Live / Staging / Homelab / In-build sections and an honest ledger.
- **Blocker:** His name + URL call, then a build. (`app-store-content.md` in this folder is the content draft.)

## (b) Homelab-only

### 7. Vapor Wire Telegram bot — built, undeployed
- **Path:** `~/workspace/your_files/telegram-chatbot/` (bot/: 9 modules — welcome, scheduler, crosspost, moderation, keywords, digest, admin, config, database; Dockerfile, docker-compose.yml, docs/deploy-imac.md)
- **What:** Chat automation across his vapor wire Telegram channels: welcome/onboarding, scheduled posts, cross-posting, moderation (flood/link/forward + warn/mute/ban), keyword alerts, daily digest. Long polling, SQLite, config-driven.
- **Evidence:** Build completed 2026-10-08; offline verification passed (compileall clean, dry-run import/config/DB/cron/digest tests; 2 real bugs fixed).
- **Why homelab:** Long-polling Docker container needs a persistent process — not a Workers/Pages fit.
- **Blocker:** iMac Docker/Compose setup (still open) + his BotFather token + chat IDs. Deploy doc is click-by-click.

### 8. Job scraper engine — running here
- **Path:** `~/workspace/your_files/job-scraper/src/` (9 fetchers, store.py, run.py, digest.py), `jobs.db` (3,448 jobs)
- **What:** The scraper itself — weekday cron, polite HTTP, SQLite.
- **Evidence:** Ran clean 2026-10-08 (per parent context); digest regenerated.
- **Why not Cloudflare:** Needs cron + SQLite + outbound scraping with per-host politeness — a persistent-runner shape, not Workers. Keep on this VM (or move to the iMac later).

### 9. Personal AI content factory (Phase A) — untested scaffold
- **Path:** `~/workspace/your_files/content-factory-spec/phase-a-build/content-factory/` (factory/: transcribe, clip, captions, score, review, db, run; requirements.txt, Modelfile)
- **What:** Faster-whisper + local-LLM clipping pipeline for his own content.
- **Evidence:** Real code on disk. Memory explicitly warns: untested, never describe as a working engine.
- **Why homelab:** Needs Mac Studio GPU (faster-whisper, Ollama). **Blocker:** Mac Studio smoke test first.

### 10. LM Studio MCP config — Mac Studio config
- **Path:** `~/workspace/your_files/lm-studio-mcp/` (README.md, mcp.json)
- **What:** MCP server config draft for the Mac Studio''s LM Studio agent (filesystem, fetch, memory, brave-search, etc.).
- **Evidence:** README verified 2026-10-08. Config only — not an app. Listed so it isn''t lost.

### 11. iMac homelab services — planned persistent services
- **Path:** `~/workspace/your_files/imac-homelab-setup/dvaughnhouse-backend-imac-plan.md`
- **What:** Laravel monolith in Docker via Cloudflare Tunnel (.org + .store).
- **Why homelab:** Persistent services by design. Nothing to stage — the tunnel is already the plan.

## (c) Needs work before staging

### 12. Glenride drug-shortage digest — pipeline runs, no web export
- **Path:** goal `glenride-weekly-drug-shortage-digest/` (weekly cron active; run log 2026-10-05 in hidden_files)
- **What:** Weekly Monday digest of drug-shortage data (ASHP/FDA/Drugs.com).
- **Evidence:** Run log shows real checks 2026-10-05. No digest output file found in goal files/ — state lives in `workspace/.jarvis/...`.
- **To stage:** Write the digest to a markdown/HTML file each run (like the job digest), then same Pages pattern as #4.

### 13. OSINT token checker — functional CLI, not web-shaped
- **Path:** `~/workspace/your_files/osint-arsenal-curated/base-token-check.py`
- **What:** Token due-diligence checker (Base + Solana), stdlib-only, public RPCs, no API keys.
- **Evidence:** Docstring + usage verified on disk. Real, runnable script.
- **To stage:** Needs a web wrapper (Worker or small web UI) before it belongs in the store. Listable as a downloadable tool as-is.

### 14. Personal status dashboard — private by design
- **What:** Private fullstack web artifact tracking every workstream (162 items per parent context); repaired 2026-10-07.
- **Evidence:** Parent context only — artifact catalog not listable from this subagent session.
- **Store treatment:** Mention as "private — not publicly listed," not a store entry.

### 15. Telegram Emoji Lab — live web artifact
- **What:** Shared at https://muse.ai/s/telegram-emoji-lab-su6jxwyxgjxfxfxe (per parent handoff; repair confirmed, 26.2KB WebM verified).
- **Evidence:** Parent context only — catalog not listable from here.
- **Store treatment:** Listable under Live with the shared URL.

### Unverified from here
- **Startup Opportunities Brief** (web artifact) — parent context says completion unverified. Not listed until confirmed.

## Excluded (not apps)
Research briefs (SignSplit), Shopify store (Reynard''s — external), essays/screenplays/drafts, brand kits, PRDs, resumes, pitch decks, the VAPOR rework notes. The store lists things he built that run, not documents.

## Deploy blockers needing him (consolidated)
1. **Cloudflare account access from my side is down** — token verify returns 401 (checked 2026-10-08 via the skill''s credential helper). I can''t list, create, or deploy anything on Cloudflare right now. Every Cloudflare move goes through his account: his `wrangler login`, his deploys, or exact runbooks.
2. **Token backend worker:** his `wrangler login` + `python3 deploy.py` on the Mac (one command creates D1 + KV + deploys).
3. **Digest pages:** his public-vs-private call, then a deploy.
4. **App store directory:** his name + URL call, then I build the static site.
5. **Essay preview:** his publish approval.
6. **Vapor Wire bot:** BotFather token + chat IDs + iMac Docker setup.
7. **OSINT checker web wrapper:** his call on whether it''s worth one.

## Cost notes (money is tight — all free tier)
Cloudflare Pages: free (unlimited static sites, 500 builds/mo). Workers: free 100k requests/day. D1: free 5M row reads/day, 100k writes/day. KV: free 100k reads/day, 1k writes/day. Nothing in this inventory needs a paid plan.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('commercial-copy', 'App Store Content', 'commercial', 'markdown', 'Content draft', 'Customer-facing catalog language for products, licenses, and custom work.', 0, 'Oct 8, 2026', NULL, '# Glenride App Store

Unofficial shop of D''Vaughn House''s original work. Buy it once and it''s yours,
or license it for your business. Everything here is made by a real person —
no hype, no promises, just the work.

---

## Buy — yours to keep

- **30-Day Ruck Reset — $19.** A 30-day plan for getting strong with a weighted
  backpack: walk, build up safely, track it daily. ~7,200 words, printable.
  Ready now — checkout opening soon.
- **Cornerstone essay — coming soon.** "The Power-Wisdom Gap and the Imperative
  for Independent Infrastructure." A 9,560-word essay on technology,
  independence, and building your own infrastructure. Digital download.
- **The Borrowed Spell — coming soon.** An essay on language, words, and
  consent (~4,100 words). Digital download.
- **WAVY Ship''s Store — founder pricing.** Society burgee ($36), brass pocket
  compass ($68), embroidered linen tee ($78), wax seal kit ($95). Made to order
  in small batches; prices go up at launch. Coming soon — samples first.
- **Token checker — free.** A small script that checks a Base or Solana token''s
  basics before you touch it. Runs on any computer with Python 3. Download
  coming soon.

## License — for your business

- **The Dispatch — $6/mo or $60/yr.** A weekly field-notes letter: outdoors,
  body, workshop. The paid tier adds a monthly deep cut, a printable 30-day
  challenge, and subscriber Q&A. Free tier launches first; paid opens after
  the first issues prove their worth.
- **Vapor Wire Bot setup — coming soon.** His Telegram chat-automation bot,
  installed and configured for your channels: welcomes, scheduled posts,
  moderation, keyword alerts, daily digest. One deployment per license, with
  an optional monthly care plan for updates.
- **Content clipping — coming soon.** He turns your long videos into short,
  captioned clips using his own pipeline. Per-project or monthly.
- **Job-digest data feed — later.** The startup job digest as a feed for your
  site or newsletter. Monthly license.

## Also live (not for sale)

- **SpinWave** — the $SPIN token''s teaser site. [spinwave.pages.dev](https://spinwave.pages.dev)
- **WAVY** — the $WAVY prelaunch site with trust center. [wavysociety.pages.dev](https://wavysociety.pages.dev)
- **Telegram Emoji Lab** — a sticker/emoji lab for Telegram. [Open](https://muse.ai/s/telegram-emoji-lab-su6jxwyxgjxfxfxe)

Tokens are never products here. $WAVY hasn''t launched and $SPIN has no market —
nothing on this page is an investment, and nothing here promises returns.

---

## Honest ledger

- "Coming soon" means exactly that: the work exists, the last mile doesn''t.
  No vaporware labels.
- Prices marked "his price, set" are his. Prices marked "suggestion" are
  starting points for his call.
- The personal status dashboard exists but stays private — it tracks his
  work, it isn''t a public listing.
- Publications are sold as writing. Tools are sold as tools. Nothing here is
  a financial product.
- Listings update as things ship.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('cloudflare-staging', 'Cloudflare Staging Map', 'commercial', 'markdown', 'Draft proposal', 'Deployment boundary between Cloudflare web surfaces and persistent iMac services.', 0, 'Oct 8, 2026', NULL, '# Glenride App Store — Cloudflare staging map

**Drafted 2026-10-08.** Answers the two open scope questions from your
10:10 UTC message ("which projects staged on Cloudflare, and what transition
are you staging for") with a concrete proposal you can react to.

## The transition, as I''d aim it

Two readings, one answer:

- **Off the iMac?** No — the iMac stays the compute box (Docker, tunnels,
  long-running bots). Cloudflare takes the *web-facing* layer: static sites,
  Workers, and the public directory.
- **Under Glenride?** Yes for the directory itself — the app store is the
  Glenride-branded index that makes everything findable in one place.

So: **web-facing things live on Cloudflare; compute stays on your machines;
the app store is the directory that ties them together.** Nothing here needs
the iMac to change.

## Per-project staging map

| Project | Current home | Cloudflare fit | Deploy path | Needs from you |
|---|---|---|---|---|
| SpinWave teaser site | ✅ live — spinwave.pages.dev | Pages (done) | — | social/form links |
| WAVY prelaunch site | ✅ live — wavysociety.pages.dev | Pages (done) | — | Telegram invite, X URL, form endpoint, Stripe |
| dvaughnhouse.com | ✅ live — Pages (per backend plan) | Pages (done) | — | — |
| Tier-2 token backend (Worker + D1) | code complete, unpushed to your account | Workers (ideal) | `deploy.py` on the Mac: `wrangler login` → `npm install` → `python3 deploy.py` | wrangler login + run (my connection can''t create the D1) |
| **Glenride app store** (the directory) | doesn''t exist yet | Pages static site (ideal) | new tiny static site in your Cloudflare account | name/URL call, then I build it |
| Job scraper digest | runs here; digest.md in workspace | Pages — publish the daily digest as a static page | export digest → Pages on each run | say whether public or private |
| Drug-shortage digest | weekly cron | Pages — same static-publish pattern | same as above | — |
| Telegram Emoji Lab | ✅ live — shared artifact URL | n/a (already on the web) | — | — |
| Personal status dashboard | private web artifact | keep private (not a public listing) | — | — |
| Vapor Wire Telegram bot | built, undeployed | **not a fit** — long-polling Docker needs a persistent process | iMac: `docker compose up -d --build` | BotFather token + chat IDs |
| iMac homelab (NPM, Laravel, tunnel) | iMac Docker | **not a fit** — persistent services | Cloudflare Tunnel (already the plan) | tunnel token + DNS cutover |
| Content factory Phase A | needs Mac Studio GPU | **not a fit** | Mac Studio smoke test | hardware test |
| LM Studio agent | Mac Studio | **not a fit** | local only | — |

The honest bottom line: most of your web-facing surface is **already staged**.
What''s genuinely missing is the directory itself — the unofficial "Glenride
app store" list — plus two small deploy runs (the token-backend Worker and,
optionally, static digest pages).

## The app store page, as proposed

One static Pages site, Glenride-branded, clearly labeled unofficial. Sections:

1. **Live** — spinwave, WAVY prelaunch, dvaughnhouse.com, Emoji Lab.
2. **Staged / in testing** — token-backend worker (once deployed), digest pages.
3. **Self-hosted** — Vapor Wire bot, homelab services (status, not public links).
4. **Honest ledger** — same plain-language "what''s live / what''s not" convention
   as your token sites: dead rails labeled previews, pending labeled pending.

Status chips reuse the single-config pattern from your token sites so every
listing shows the same trust language.

## Standing constraint (unchanged)

Cloudflare deploys go under **your** Cloudflare account — my connection can''t
create D1 databases or push to your Pages projects. For anything I can''t push,
you get the exact commands or a ready-to-import repo, same as the token-backend
deploy doc.

## Your three calls

1. **Name + URL** for the app store (e.g. `apps.glenride...`? your call).
2. **Build it?** — say go and I build the static directory site.
3. **Digest pages public or private?** — decides whether the job/drug-shortage
   digests get a public Pages home.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('launch-transcript', 'Glenride Launch Transcript', 'brand', 'docx', 'Source transcript', 'Source transcript for the Glenride soft-launch talk on innovation, supply-chain fragility, and the institute’s purpose.', 0, 'Original', '2026-10-10T04:18:54.171Z', 'Top of Form

earch transcript

Bottom of Form

0:03

3 seconds

tonight marks a pivotal moment in our Collective especially in our Collective

0:13

13 seconds

Journey um toward Innovation and

0:21

21 seconds

transformation let''s see can I get it to move what okay

0:30

30 seconds

Innovation and transformation tonight marks a pivotal moment in our

0:40

40 seconds

Collective it marks a pivotal moment in our Collective and I can''t get this computer to work that would be great it would be great if I can get it to work

0:48

48 seconds

right now um but you know here we are fiddling

0:57

57 seconds

with technology but I wanted to just share with you a few things if my computer would

1:06

1 minute, 6 seconds

work I just wanted to share with you a few things because tonight marks a pivotal moment in our

1:14

1 minute, 14 seconds

Collective um in our Collective Journey towards Innovation and transformation and let''s let''s start with uh a story

1:21

1 minute, 21 seconds

that encapsulates why why I''m here why we''re all here why I''m sharing a story that''s born not

1:30

1 minute, 30 seconds

from imagination but from the raw reality of our Global Systems three years ago I found myself

1:39

1 minute, 39 seconds

learning about one of the most busiest ports in the world it''s a testament to human Ingenuity massive

1:48

1 minute, 48 seconds

container ships they''re dotted they dotted The Horizon cranes danced their mechanical ballet and the air hummed

1:56

1 minute, 56 seconds

with the Symphony of Commerce yet beneath this impressive display of industrial

2:03

2 minutes, 3 seconds

might I discovered something very troubling I learned about Sarah uh a

2:12

2 minutes, 12 seconds

veteran Logistics manager with 20 years in the industry and her story wasn''t just about managing shipments it was

2:20

2 minutes, 20 seconds

about managing chaos every single day she she said um we''re walking a tight rope one small

2:30

2 minutes, 30 seconds

disruption whether it''s whether it''s like the weather or labor issues or political tension she said the whole system is threatened to

2:38

2 minutes, 38 seconds

unravel and um she also went on to say that we become expert firefighters but we''re

2:45

2 minutes, 45 seconds

exhausted this isn''t sustainable end quote and her words resonated deeply with me and not just as an observation

2:54

2 minutes, 54 seconds

of one sector but as a reflection of the broader truth these weren''t just logistical challenges

3:03

3 minutes, 3 seconds

they were human challenges every delayed shipment meant a farmer waiting for crucial equipment a hospital running low

3:11

3 minutes, 11 seconds

owned supplies or a small business owner watching their dreams slip away the Ripple effects of these

3:19

3 minutes, 19 seconds

systemic vulnerabilities touch every single corner of society and when Supply chains falter not just numbers on a

3:27

3 minutes, 27 seconds

spreadsheet but it''s real people that suffer real communities that suffer real lives that

3:34

3 minutes, 34 seconds

end and I begin and sorry I began to see how our

3:42

3 minutes, 42 seconds

Global infrastructure despite its impressive scale it was built on increasingly fragile foundations and this realization

3:50

3 minutes, 50 seconds

sparked a journey of Discovery and purpose and I spent the next two years deep diving into research Consulting

3:58

3 minutes, 58 seconds

with experts across Industries and studying breakthrough innovations that never made it past academic journals what I found was both troubling

4:07

4 minutes, 7 seconds

and inspiring while our challenges were significant the solutions

4:14

4 minutes, 14 seconds

existed they were simply trapped in silos separated from The Real World applications that could bring them to life we have Brilliant Minds developing

4:24

4 minutes, 24 seconds

groundbreaking Solutions in universities worldwide we have businesses desperate for Innovation to solve their pressing challenges we have

4:32

4 minutes, 32 seconds

communities eager for positive change what we lack is the bridge The crucial connection that transforms theoretical

4:41

4 minutes, 41 seconds

breakthroughs into practical Solutions this is the gap between Innovation and

4:49

4 minutes, 49 seconds

implementation it isn''t just an academic concern it''s a missed opportunity of

4:56

4 minutes, 56 seconds

Staggering proportions every day that revolutionary ideas remain trapped in research papers is another day we''re not

5:04

5 minutes, 4 seconds

solving critical problems every moment we continue with business as usual in a moment

5:11

5 minutes, 11 seconds

where is a moment that we''re going to be falling behind in addressing specific specifically addressing urgent challenges of our

5:20

5 minutes, 20 seconds

time today I''m standing before you with more than just a vision I stand here with a solution or sit rather a solution

5:29

5 minutes, 29 seconds

that doesn''t just patch the cracks in our current systems but reimagines how we approach Innovation

5:36

5 minutes, 36 seconds

itself a solution that brings together the brightest Minds the most promising technology and practical expertise

5:43

5 minutes, 43 seconds

needed to create lasting change this is why we''ve gathered here not just to discuss problems but to launch a movement that will transform

5:52

5 minutes, 52 seconds

how we solve them together we''re going to build something extraordinary a bridge between possibility and reality

6:00

6 minutes

between academic Brilliance and practical implementation between the world as it is and the world as it could

6:09

6 minutes, 9 seconds

be welcome to the beginning of Glen R in an age where we can send

6:17

6 minutes, 17 seconds

information across the globe in milliseconds and have computing power that would have seemed magical just decades ago we Face a paradox despite

6:27

6 minutes, 27 seconds

our technological advancement our fun Al systems the ones that keep our world running are fragile alarmingly

6:35

6 minutes, 35 seconds

fragile and let me share something some sobering statistics in 2001 an astounding 94% of Fortune 1000 companies

6:45

6 minutes, 45 seconds

experienced severe supply chain disruptions the financial impact trillions of dollars in

6:52

6 minutes, 52 seconds

losses but these aren''t just numbers they they represent

6:59

6 minutes, 59 seconds

real business real businesses that are struggling to survive real workers facing uncertainty and real communities

7:08

7 minutes, 8 seconds

bearing the burden of systemic failure think about that scale for a moment when nearly every major company

7:16

7 minutes, 16 seconds

in the world facing facing significant disruptions we''re not talking about isolated incidents or manageable

7:24

7 minutes, 24 seconds

hiccups we''re talking about the fundamental weakness in the very Foundation of our global economy and these disruptions Cascade through our interconnected World affecting

7:32

7 minutes, 32 seconds

everything from the availability of basic consumer goods to critical medical supplies but the problem runs deeper than just Supply chains across

7:42

7 minutes, 42 seconds

Industries we see a troubling pattern of resistance to change in Innovation manufacturing facilities cling to outdated processes despite proven

7:51

7 minutes, 51 seconds

Alternatives Health Care Systems struggle despite inefficiencies um or they struggle

7:59

7 minutes, 59 seconds

with inefficiencies that cost both money and lives energy sectors remain Tethered

8:07

8 minutes, 7 seconds

to unsustainable practices even as climate change accelerates agricultural methods

8:13

8 minutes, 13 seconds

continue to deplete resources while failing to meet Global demand perhaps the most frustrating is the wealth of

8:22

8 minutes, 22 seconds

solutions sitting untapped in our academic institutions every year researchers and Scholars produce breakthrough insights

8:31

8 minutes, 31 seconds

that could revolutionize these struggling Industries and they develop new methodologies create Innovative Technologies and propose transformative

8:40

8 minutes, 40 seconds

solutions to our most pressing challenges yet the vast majority of these Innovations never see the light of

8:48

8 minutes, 48 seconds

day beyond academic Publications and why is that because we''ve built walls between Innovation and implementation

8:56

8 minutes, 56 seconds

these barriers take many forms risk of diverse corporate cultures bureaucratic inertia lack of funding mechanisms and

9:04

9 minutes, 4 seconds

the absence of platforms to bridge theoretical knowledge with practical application it''s as it''s as if we have

9:12

9 minutes, 12 seconds

brilliant Architects drawing up plans for better buildings but no one is willing to construct them the cost of this is of this

9:20

9 minutes, 20 seconds

disconnect is staggering when businesses can''t adapt to changing conditions they fail when Industries resist Innovation they stagnate when systems remain

9:29

9 minutes, 29 seconds

fragile they break the human toll is immense jobs lost communities devastated

9:37

9 minutes, 37 seconds

opportunity squandered meanwhile our Global challenges from climate change to healthcare

9:45

9 minutes, 45 seconds

accessibility they grow more Urgent by the day and we cannot afford to continue this way the pace of change in our world

9:54

9 minutes, 54 seconds

is accelerating and our problems are becoming more complex and interconnected we need systems that can adapt and evolve we need businesses that can

10:03

10 minutes, 3 seconds

Embrace innovation without fear we need mechanisms to turn brilliant ideas into practical Solutions the good news is that we have

10:12

10 minutes, 12 seconds

all the pieces necessary for transformation we have the intellectual capital in our universities the technological capabilities in our

10:19

10 minutes, 19 seconds

Industries and the human Talent ready to give a drive to the change what we''ve lacked until now is a

10:28

10 minutes, 28 seconds

systemic way to bring these elements together a catalyst to turn potential into reality

10:34

10 minutes, 34 seconds

and that is where Glen R enters the picture not just another business venture but as a fundamental reimagining

10:43

10 minutes, 43 seconds

of how we approach Innovation and implementation in our modern world inter Glen ride is

10:50

10 minutes, 50 seconds

not inter Glen we''re not just another company but a revolutionary Force designed to transform how Innovation

10:58

10 minutes, 58 seconds

moves from concept to reality and we''re building a bridge between the world''s brightest minds and the Practical platforms needed to implement these

11:06

11 minutes, 6 seconds

ideas but more than that we''re creating a sustainable ecosystem where Innovation thrives and grows and

11:16

11 minutes, 16 seconds

multiplies so what makes Glenn Ry different at its core we''re developing a unique virtuous cycle of innovation that

11:24

11 minutes, 24 seconds

addresses the fundamental gaps in our current system and this cycle begins with research we Taff into the intellectual Powerhouse

11:31

11 minutes, 31 seconds

of Academia working with Scholars and researchers who are passionate about solving real world problems but unlike

11:39

11 minutes, 39 seconds

but unlike traditional think Tes or research institutions we don''t stop at theoretical Solutions the next phase is action we

11:48

11 minutes, 48 seconds

will strategically acquire Revenue generating businesses and other Ventures not speculative startups but established

11:56

11 minutes, 56 seconds

companies with proven track records and stable Cas cash flows and these businesses become our living Laboratories where innovative solutions

12:03

12 minutes, 3 seconds

can be tested refined and validated in the real world this approach allows us to bypass the traditional barriers to

12:11

12 minutes, 11 seconds

implementation while maintaining Financial stability and from there we move on to scale once Solutions prove

12:19

12 minutes, 19 seconds

successful within our test environment the living laboratory we don''t keep them locked away as proprietary advantages

12:27

12 minutes, 27 seconds

instead we will scale them across industry making them available to other businesses facing similar challenges this

12:35

12 minutes, 35 seconds

multiplication effect it it will create waves of positive change that extend far beyond our immediate operations and

12:42

12 minutes, 42 seconds

finally we reinvest the profits generated through our successful implementations aren''t simply distributed to

12:49

12 minutes, 49 seconds

shareholders instead they''re strategically reinvested into the cycle funding new research enabling more Acquisitions and accelerating the pace

12:57

12 minutes, 57 seconds

of innovation this creates a self-sustaining engine of progress that grows stronger with each

13:05

13 minutes, 5 seconds

iteration but Glen ride is more than just technology or business process it''s about people it''s about identity it''s

13:13

13 minutes, 13 seconds

about empowering professionals like Sarah the the logistics manager from

13:21

13 minutes, 21 seconds

earlier it is about empowering people like her uh with with tools and systems that support rather than h hinder her

13:29

13 minutes, 29 seconds

work it''s about giving researchers and Scholars a clear path to seeing their ideas make a real difference in the world and it''s about creating

13:37

13 minutes, 37 seconds

connections between Scholars that have traditionally operated in isolation we''re not just researching

13:44

13 minutes, 44 seconds

businesses we''re building an ecosystem we''re not just funding bold ideas we''re creating Pathways to implementation

13:52

13 minutes, 52 seconds

we''re not just generating profits we''re reinvesting in progress this is what makes Glenn ride

13:59

13 minutes, 59 seconds

unique the ability to bring together the key elements needed to transform change and allow transformative change in a way

14:07

14 minutes, 7 seconds

that is both practical and sustainable this is the power of the Glen ride model we don''t just identify problems or

14:16

14 minutes, 16 seconds

theorize Solutions we will create the mechanisms to make real change happen we will break down barriers we will challenge conventional thinking and

14:25

14 minutes, 25 seconds

build systems that work for everyone involved so let me show you exactly how it will

14:32

14 minutes, 32 seconds

transform business and industry in practice picture traditional manufacturing a company one that''s been

14:40

14 minutes, 40 seconds

operating for decades generating steady Revenue but but struggling to adapt to Modern challenges while many would see such a

14:48

14 minutes, 48 seconds

company as a as past its prime at Glen rde we see opportunity and when we eventually acquire such a business we

14:57

14 minutes, 57 seconds

will begin a carefully orchestrated transformation process first our team of Scholars and Industry experts conducts

15:04

15 minutes, 4 seconds

comprehensive analyses and identifying areas where Innovation can create the most significant impact and this isn''t just about implementing new technology

15:12

15 minutes, 12 seconds

it''s about reimagining how business operates at every level and say we consider an acquisition in the Industrial Automation sector the company

15:21

15 minutes, 21 seconds

had a the company may have a solid customer base a consistent profit but its operations were based in outdated

15:28

15 minutes, 28 seconds

systems at Limited growth within 6 months of acquisition we could imple within 6 months of acquisition we could

15:35

15 minutes, 35 seconds

Implement Aid driven production scheduling systems developed by our own Scholars the result potentially a 40

15:43

15 minutes, 43 seconds

redu 40% reduction in downtime potentially a 25% Improvement in Energy Efficiency and potentially a

15:51

15 minutes, 51 seconds

30% increase in overall productivity but the transformation wouldn''t stop at operational improvements we would invest heavily in

16:00

16 minutes

employee development ensuring that workers aren''t replaced by technology but rather empowered by it in this case

16:07

16 minutes, 7 seconds

machine operators become process optimation optimization Specialists developing new skills that increase both their job satisfaction and their value

16:16

16 minutes, 16 seconds

to the company the knowledge and systems we we will develop through these Transformations will become part of our

16:24

16 minutes, 24 seconds

Innovation ecosystem the AI scheduling system that will revolutionize and manuf ufacturing plant it''s now being adapted

16:31

16 minutes, 31 seconds

for use in health care facilities or it will could be um optimized uh used to optimize patient

16:40

16 minutes, 40 seconds

schedules the Energy Efficiency protocols we will develop they''ll be implemented across various industries

16:46

16 minutes, 46 seconds

from data centers to agricultural operations this cross-pollination of innovation is a crucial aspect of our

16:55

16 minutes, 55 seconds

model when we develop a solution that works in one cont text we analyze its core principles and adapt them for other

17:02

17 minutes, 2 seconds

applications this multiplier effect means that each successful Innovation can impact dozens of Industries and

17:10

17 minutes, 10 seconds

thousands of businesses so consider our focus in supply chain optimization what could begin as a

17:19

17 minutes, 19 seconds

solution for tracking shipments and shipping containers could evolve into comprehensive systems for managing complex Logistics networks hospitals

17:28

17 minutes, 28 seconds

could use it to track medical supplies Farmers could use it to monitor crop shipments and the retailers they could use it to maintain optimal inventory

17:37

17 minutes, 37 seconds

levels each implementation would teach us something new which we then would feed back into our research and development cycle the financial model

17:46

17 minutes, 46 seconds

supporting these Transformations is equally Innovative when we exit a transform business typically within 3 to 5 years we will do so at a significant

17:55

17 minutes, 55 seconds

premium reflecting the enhanced value we''ve created these profits aren''t simply distributed to shareholders they''ll be reinvested into our next wave

18:04

18 minutes, 4 seconds

of Acquisitions and Innovations creating a self-sustaining cycle of progress but perhaps most importantly our models will

18:13

18 minutes, 13 seconds

create lasting change we don''t just Implement Solutions we will move on we will build systems and capabilities that

18:22

18 minutes, 22 seconds

continue to evolve and improve long after our direct involvement ends the businesses we transform become

18:30

18 minutes, 30 seconds

Innovation hubs in their own right contributing to a network of Forward Thinking Enterprises this is how we make real

18:39

18 minutes, 39 seconds

change happen not through isolated improvements or temporary fixes but through systematic transformation that

18:46

18 minutes, 46 seconds

builds upon itself and spreads organically through Industries and markets so imagine a future where the

18:54

18 minutes, 54 seconds

brightest Minds the most promising ideas and the industries that power our world are not just siloed but seamlessly

19:03

19 minutes, 3 seconds

connected picture a world where Innovation isn''t just a buzzword but a measurable Force for good where transformative ideas aren''t left to

19:10

19 minutes, 10 seconds

gather dust and academic journals but are actively solving Humanity''s most pressing challenges Glen ride is that

19:18

19 minutes, 18 seconds

bridge by funding this initiative you are not just fueling a business you are investing in a movement that turns

19:26

19 minutes, 26 seconds

systemic fragility into resilience efficiencies into opportunities and untapped potential into tangible

19:35

19 minutes, 35 seconds

progress your support will catalyze the transformation of Industries it will enhance real lives and create a

19:42

19 minutes, 42 seconds

self-sustaining ecosystem of innovation that will Ripple across communities and generations so this is your opportunity to affect

19:51

19 minutes, 51 seconds

the greatest good for the greatest number of people together we can break down barriers and connect Brilliance

19:58

19 minutes, 58 seconds

with action and refine and redefine what is possible Glen ride isn''t just an

20:05

20 minutes, 5 seconds

investment it''s a legacy of progress a Beacon of Hope and a commitment to a better stronger and more interconnected

20:14

20 minutes, 14 seconds

future so let''s build this future together thank you

Sync to video time

All

Startup company

Politics News

For you

Recently uploaded

Watched

1:03:17

New

Andrew Weissmann Spots the Biggest Tell in the Jack Smith Hearing | Illegal News

The Bulwark

649K4d ago

24:27

Local AI Explained: How to Run AI Models on Your Computer', 'launch-docx', NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('thinktank-deck', 'Glenride & ThinkTank OS Deck', 'brand', 'pptx', 'Presentation', 'Ten-slide presentation covering Glenride’s mission, research pillars, ThinkTank OS, and ecosystem fit.', 0, 'Oct 2026', '2026-10-10T04:18:59.191Z', '## Slide 1



## Slide 2



## Slide 3



## Slide 4



## Slide 5



## Slide 6



## Slide 7



## Slide 8



## Slide 9



## Slide 10

', 'thinktank-pptx', NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('narrative-prospectus', 'Narrative Series Prospectus', 'brand', 'markdown', 'Series plan', 'Twelve-piece publishing architecture built from the launch talk, with audience, spine, derivatives, and release logic.', 0, 'Oct 6, 2026', '2026-10-10T04:22:27.896Z', '# Glenride Narrative Series Prospectus

**Audience:** serious hard scientists. Every piece carries evidence, precise language, and no hype — the series earns their attention the way a paper does.
**Source:** Glenride soft-launch YouTube transcript (`~/workspace/user/files/glenride_launch.docx`, ~20 min)
**Spec:** 12 standalone pieces, ~2000 words each (~14 min on camera / ~8 min read). Total ≈ 24,000 words.
**Shared spine per piece:** 1. Anchor line from the talk → 2. Receipts since → 3. The project that answers it → 4. The door (join / partner / fuel).
**Derivatives per piece:** 2–4 short clips + quote graphics (not standalones).
**Companion source map:** 29 verified sources (peer-reviewed, official databases, institutional reports), mapped per piece with cohesion review: `glenride-narrative-series-sources.md` (same directory).

## The talk''s three claims (everything maps to these)
1. Our systems are fragile, and people pay the price (Sarah''s story).
2. The solutions exist but are trapped in academic journals.
3. The fix is a cycle: research → test in the real world → scale → reinvest.

---

## Piece 1 — Front door: "I Gave This Talk Years Ago"
**Anchor:** "Tonight marks a pivotal moment in our collective journey toward innovation and transformation."
- Open on the old talk — the room, the fiddling with the computer. Keep it human and honest; the stumbles are part of the story.
- Restate the three claims in one breath, in plain language.
- The turn: "I didn''t know it then, but I was writing a to-do list, not giving a speech."
- Trailer the whole series in one line per claim → project. This piece is the map; the rest are the territory.
- **Door:** follow the series.

## Piece 2 — Flagship 1: "The Systems Are Still Fragile"
**Anchor:** Sarah — "We''ve become expert firefighters, but we''re exhausted. This isn''t sustainable."
- Retell Sarah''s story: 20-year logistics manager, the tightrope, the chaos.
- **Correction, on the record:** the talk''s "2001 / 94% of Fortune 1000" figure does not verify — every traceable 94% figure is 2020, COVID-era. Correct it explicitly in the piece; for this audience, self-correction is credibility. Never present the talk''s number as fact.
- Widen on verified ground: GAO-25-107110 (shortages lasting longer post-2020), Aljuneidi et al. 2023 systematic review, ASHP statistics (227 active U.S. shortages, Q2 2026) — then the ongoing drug-shortage crisis.
- His witness years: UC, AstraZeneca, Merck — 10+ years inside regulated data operations, watching fragility from the inside.
- The weekly digest as live documentation: every Monday, the fragility quantified (ASHP bulletins, FDA listings, what changed).
- **Door:** read the digest / join.

## Piece 3 — Flagship 2: "The Journals Are Still a Graveyard"
**Anchor:** "The vast majority of these innovations never see the light of day beyond academic publications."
- The scale of trapped knowledge; why it stays trapped (publish-or-perish incentives, paywalls, no bridge to application).
- His two years deep-diving research that never made it past the journals (from the talk).
- SPIN as the mechanism: 25,000 SPIN per accepted manuscript, 40,000 per dataset, 55,000 with a worked example; reader tiers at 500 / 5,000 / 20,000; 60/15/15/10 split.
- **Scope note:** the literature receipts are biomedical (Morris et al. 2011: 17-year translation lag; Butler 2008 *Nature*: the valley of death; Contopoulos-Ioannidis et al. 2003: 5% licensed / 1% used; Piwowar et al. 2018: OA prevalence). The talk''s cross-industry extension (manufacturing, energy, agriculture) is marked as author''s observation.
- **Boundary with P6:** this piece owns the trap; P6 owns why the academy can''t self-repair. One handoff sentence between them, no re-litigation.
- The money-purge rule, stated plainly: recognition, not speculation. No profit promises — ever.
- **Door:** scholars and readers — explore SpinWave.

## Piece 4 — Flagship 3: "The Cycle, at My Scale"
**Anchor:** The virtuous cycle — research → living laboratories → scale → reinvest.
- The talk''s version: acquire revenue-generating businesses, transform them, exit at a premium in 3–5 years, reinvest.
- The honest translation: no acquisition capital — so build the pieces instead. The principle survives the scale change.
- Walk the cycle as he runs it: research (digest, ThinkTank) → living lab (homelab) → scale (Reynard''s, WAVY) → reinvest (everything funds everything).
- **Honesty note:** "no acquisition capital, so build the pieces instead" and the solo-founder-scale cycle have no literature analogue — marked as his model, not a cited claim.
- Close: the cycle was never about money. It was about direction.
- **Door:** partner.

## Piece 5 — Origin: Digest — "Sarah''s Story, Every Monday"
**Anchor:** "Every delayed shipment meant a farmer waiting... a hospital running low... it''s real people that suffer."
- Sarah as the human cost of systemic fragility.
- His pharma years watching it from inside regulated operations.
- The decision to document it weekly and publicly: how the digest works (ASHP live bulletins, FDA database, only what changed).
- Why a public record matters: fragility you can measure is fragility you can act on.
- **Differentiation from P2:** this piece leads with Kaakeh et al. 2011 (the system-level burden of managing shortages) + ASHP/FDA as the feeds it draws on; P2 leads with GAO + Aljuneidi. Different jobs, same shelf.
- **Door:** subscribe to the digest.

## Piece 6 — Origin: SPIN — "The Way Out of the Journals"
**Anchor:** "We have brilliant architects drawing up plans for better buildings but no one is willing to construct them."
- The incentive problem in academia: brilliance with no bridge.
- SPIN''s design as the answer — the full utility mechanics in plain language.
- The honest state of the build: contract live on Base (0x4c972a…ba3), pool deployed, zero trades, unindexed. Building in public means showing the empty room too.
- "The straight line" — from journal to world, no maze.
- **Door:** scholars (earn) / readers (license).

## Piece 7 — Origin: ThinkTank OS — "The Workbench"
**Anchor:** "What we lack is the bridge — the crucial connection that transforms theoretical breakthroughs into practical solutions."
- Freed research needs somewhere to be written, edited, and published — the manuscript engine.
- Plan / write / edit / publish loop; how it connects to SPIN (the earning layer) and the digest (the research feed).
- ThinkTank OS is the software the talk assumed would exist. He''s building it because it doesn''t.
- **Build piece:** no external sources. Do not citation-stuff. The piece''s authority is the build itself.
- **Door:** join / partner.

## Piece 8 — Origin: Homelab — "The Living Laboratory"
**Anchor:** "These businesses become our living laboratories where innovative solutions can be tested, refined and validated."
- The talk''s living labs were acquired companies. His is a 2017 iMac and a Mac Studio — the cycle at his scale.
- Why build your own compute: fragile centralized systems (claim 1, again). Practice what the talk preaches.
- The build story, honestly told: the Omarchy install saga, the SD-card saga, the tiling wars. Real build-in-public material.
- What''s running and what''s coming: reverse proxy, self-hosted services, the LAN model endpoint.
- **Framing (load-bearing):** outage frequency is *declining* per Uptime Institute — use their data for cost/severity/concentration of risk only, never for "outages are getting worse." The honest frame is concentration of failure boundaries (Moura et al. 2020: DNS centralization, single points of failure).
- **Door:** follow the build.

## Piece 9 — Origin: Reynard''s — "The Revenue Arm"
**Anchor:** "We will strategically acquire revenue-generating businesses... with proven track records and stable cash flows."
- Honest translation: no acquisition capital, so build the revenue arm instead of buying it.
- Why commerce, why this niche (outdoor/health/wellness), why the fox.
- The $0-budget plan, stated plainly: $19 guide, The Dispatch (free weekly + $6/mo paid), affiliate shelf. The float constraint (~$15/order tied up) — building in public means showing the math.
- How store profits feed the cycle: the "reinvest" step, made concrete.
- **Macro-stats discipline:** SBA/Census figures stay subordinate to the float math; the 49.2% five-year survival rate is the counterweight. Never let institutional numbers inflate a one-person store.
- **Door:** shop / partner.

## Piece 10 — Origin: WAVY — "The People"
**Anchor:** "It''s about people. It''s about identity."
- Systems are operated by people; the talk implied a community layer but never named it. This names it.
- WAVY''s design in plain language: consent-based life-operations, mapped funds, real-money outcomes after one confirmation, allowlisted exits. Not a loan. No custody.
- The Society brand: "stay wavy, baby." Harbor Pass and the Ship''s Store as gathering places.
- Pre-launch honesty: the token isn''t launched; the community is the product being built first.
- **Source discipline:** Kuk et al. 2024 (Sarafu complementary currency) used once, lightly, for the social mechanism (consent + trust + reciprocity) — never as validation of WAVY''s design.
- **Door:** join the Society.

## Piece 11 — Origin: Council — "The Brightest Minds, Convened"
**Anchor:** "A bridge between the world''s brightest minds and the practical platforms needed to implement these ideas."
- The talk''s convening instinct, made standing: a quarterly roundtable, 20 seats, operator-heavy.
- The first seat: his younger brother, the independent last-mile freight operator — Sarah''s world, represented at the table.
- The open seats as invitation, not gap: pharma ops, academia, logistics/manufacturing, AI builders.
- The talk ended asking a room for support; the Council is the standing version of that room.
- **Plain statement required:** the Danish consensus-conference model convenes *lay citizens*; the Council is operator-heavy. Map to the convening form (deliberative roundtable with expert briefings), not to citizen selection. Say it outright.
- **Door:** take a seat / partner.

## Piece 12 — Closing: "The Invitation"
**Anchor:** "Glenride isn''t just an investment — it''s a legacy of progress."
- Recap the arc in one breath: thesis → receipts → mechanism → people.
- The honest state of the build: what''s live, what''s not, what''s next. No inflation.
- The three doors, each defined plainly — join (the community), partner (operators and builders), fuel (supporters). What each door means and what it doesn''t promise. The no-profit-promise guardrail, stated outright.
- Close on the talk''s last line, kept: "Let''s build this future together."
- **Door:** all three, clearly.
', NULL, NULL, NULL);
INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) VALUES ('narrative-sources', 'Narrative Series Source Map', 'brand', 'markdown', 'Source map', 'Verified source library mapped to the twelve-piece Glenride narrative series.', 0, 'Oct 6, 2026', NULL, '# Glenride Narrative Series — Source Map & Cohesion Review

Companion to: `glenride-narrative-series-prospectus.md`
Compiled: 2026-10-06. Research + verification only; nothing drafted.
Audience standard: serious hard scientists — peer-reviewed, official databases, institutional reports only.
Rule applied throughout: every source fetched and confirmed against the claim it supports; unverifiable beats marked "author''s experience/observation," never padded.

**Unique verified sources: 29** across 12 pieces (34 slots counting 4 deliberate reuses in P5).

---

## PIECE 1 — "I Gave This Talk Years Ago" (3 sources)

**S1.1 — D''Vaughn House, Glenride soft-launch talk transcript** (`~/workspace/user/files/glenride_launch.docx`, ~20 min). PRIMARY. Beats: the anchor ("tonight marks a pivotal moment…", 0:03–0:40, incl. the computer-fiddling stumble); the three claims restated (Sarah 2:03–3:34; "never see the light of day beyond academic publications" ~8:40; virtuous cycle 11:16–13:05); the closing ("Glenride isn''t just an investment — it''s a legacy of progress"). Why: the piece is *about* the talk; verbatim anchors live here. Status: fetched-confirmed (read in full).

**S1.2 — Mazzucato, M. (2018). "Mission-oriented innovation policies: challenges and opportunities."** *Industrial and Corporate Change*, 27(5), 803–815. Oxford University Press. Beats: "the turn" — a declared mission held over a long horizon as the organizing principle for sustained work. Why: peer-reviewed, widely cited; the scholarly frame for thesis-first, long-horizon institution building. Status: fetched-confirmed (via RePEc/IDEAS records: https://ideas.repec.org/d/iiucluk.html).

**S1.3 — Bush, V. (1945). *Science, the Endless Frontier*.** Report to the President, U.S. Government Printing Office. Beats: "the turn" — the canonical precedent: a written thesis ("basic research is the pacemaker of technological progress") that became an institution (NSF, 1950). Why: the foundational U.S. document of long-horizon research policy; public-domain; instantly legible to scientists. Status: confirmed via official records (hosted at https://www.nsf.gov/od/lpa/nsf50/vbush1945.htm; cited in CRS R43935 via congress.gov).

*Gaps:* the room/humanity beats — primary source only (fine). His personal history behind the talk — author''s experience (fine). Beyond Mazzucato and Bush, no other genuinely solid source fit; not padded.

---

## PIECE 2 — "The Systems Are Still Fragile" (6 sources)

**S2.1 — ASHP, "Drug Shortages Statistics — National Drug Shortages: January 2001 to June 2026"** (data: University of Utah Drug Information Service). https://www.ashp.org/drug-shortages/shortage-resources/drug-shortages-statistics. Beats: the digest as live documentation; "what''s happened since" — 227 active U.S. shortages (Q2 2026), down from all-time high 323 (Q1 2024); severe chemo shortage (ifosfamide); 48% of new 2026 shortages sole-source; "lower numbers do not necessarily translate into fewer patients impacted." Why: the authoritative U.S. tracker the digest is built on. Status: fetched-confirmed.

**S2.2 — FDA, "Current and Resolved Drug Shortages and Discontinuations Reported to FDA"** (CDER database). Official record: https://catalog.data.gov/dataset/current-and-resolved-drug-shortages-and-discontinuations-reported-to-fda. Beats: the digest''s second feed ("only what changed" — weekly accrual, manufacturer-reported, current-vs-resolved status). Why: the federal source of record. Status: fetched-confirmed via data.gov record. Caveat: the accessdata.fda.gov query page itself 404''d the fetcher (a .cfm-interface quirk, not evidence it''s down) — confirm rendering in the live browser before drafting.

**S2.3 — U.S. Government Accountability Office (April 2025). *Drug Shortages: HHS Should Implement a Mechanism to Coordinate Its Activities.* GAO-25-107110.** https://www.gao.gov/products/gao-25-107110. Beats: post-pandemic picture — 102 FDA-tracked shortages (7/31/2024); new shortages/year declining since 2020 but shortages **lasting longer**; sterile injectables most affected; pandemic "exacerbated existing supply chain vulnerabilities"; causes (no incentives for less-profitable drugs; manufacturing-quality underinvestment); harm ("delaying or limiting access to care, with potentially dire consequences"). Why: the federal watchdog''s 2017–2024 analysis — the most authoritative post-pandemic trend record. Status: fetched-confirmed.

**S2.4 — Aljuneidi, T., Bhat, S. A., & Boulaksil, Y. (2023). "A comprehensive systematic review of the literature on the impact of the COVID-19 pandemic on supply chains."** *Supply Chain Analytics*, 3, 100025. https://doi.org/10.1016/j.sca.2023.100025. Beats: post-2020 disruption as a scholarly field — 393 papers (2019–2022) across impacts, resilience strategies, sustainability, mitigation. Why: a peer-reviewed systematic review, not a single study — the "widen" beat after Sarah. Status: abstract-only (Elsevier paywall; via https://research.uaeu.ac.ae/en/publications/a-comprehensive-systematic-review-of-the-literature-on-the-impact/).

**S2.5 — McBride, A., et al. (2013). "National survey on the effect of oncology drug shortages on cancer care."** *Am J Health-Syst Pharm*, 70(7), 609–617. DOI: 10.2146/ajhp120563. PMID: 23515514. Beats: human cost — 243 U.S. oncology pharmacists: 93% reported chemo delays/regimen changes; 85% increased costs; 16% near misses, 6% documented errors. Why: the field''s own journal; national survey; patient-level harm behind the counts. Status: fetched-confirmed (PubMed https://pubmed.ncbi.nlm.nih.gov/23515514/; AHRQ PSNet summary https://psnet.ahrq.gov/issue/national-survey-effect-oncology-drug-shortages-cancer-care).

**S2.6 — Phuong, J. M., et al. (2019). "The impacts of medication shortages on patient outcomes: a scoping review."** *PLoS ONE*, 14(5), e0215837. DOI: 10.1371/journal.pone.0215837. PMID: 31050671. Beats: human cost synthesized — shortages "predominantly reported to have adverse economic, clinical and humanistic outcomes" (costs, errors, adverse events, mortality, complaints). Why: open-access scoping review purpose-built for "what do shortages do to patients." Status: fetched-confirmed (https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0215837).

**⚠️ CRITICAL — the talk''s "2001 / 94% of Fortune 1000" stat: TALK-ATTRIBUTED, UNVERIFIED.** Two independent origin searches found no source for the talk''s version. Every traceable "94% of Fortune 1000" figure is **2020, COVID-era** (Accenture/Deloitte findings) — the talk appears to have grafted the 2020 number onto a 2001 setting. The piece MUST frame it as the talk''s claim, never as fact. (The 2020 figure is itself only search-attributed, not fetch-verified — do not lean on it either without verification at drafting.)

*Gaps:* Sarah''s story — his account from the talk (frame as reported). His pharma years — author''s experience. The ASHP live-bulletins list page is bot-blocked (403) for fetchers — the statistics page covers the same program publicly; confirm the list page in the live browser.

---

## PIECE 3 — "The Journals Are Still a Graveyard" (5 sources)

**S3.1 — Morris, Z. S., Wooding, S., & Grant, J. (2011). "The answer is 17 years, what is the question: understanding time lags in translational research."** *J R Soc Med*, 104(12), 510–520. DOI: 10.1258/jrsm.2011.110180. https://pmc.ncbi.nlm.nih.gov/articles/PMC3241518/. Beats: the translation-gap scale (17-year research-to-practice lag) — and it *nuances* the figure ("hides complexities"), so the piece cites it honestly, not as a slogan. Why: the canonical review quantifying the lag. Status: fetched-confirmed (open access).

**S3.2 — Butler, D. (2008). "Translational research: crossing the valley of death."** *Nature*, 453(7197), 840–842. DOI: 10.1038/453840a. https://www.nature.com/articles/453840a. Beats: "no bridge" — "a chasm has opened up between biomedical researchers and the patients who need their discoveries." Why: the *Nature* feature that named the chasm — the talk''s beat, verbatim in spirit. Status: abstract-only (paywall; via RePEc https://ideas.repec.org/a/nat/nature/v453y2008i7197d10.1038_453840a.html).

**S3.3 — Contopoulos-Ioannidis, D. G., Ntzani, E. E., & Ioannidis, J. P. A. (2003). "Translation of highly promising basic science research into clinical applications."** *Am J Med*, 114(6), 477–484. DOI: 10.1016/S0002-9343(03)00013-5. Beats: the attrition rate — only **5%** of "highly promising" basic findings licensed for clinical use; **1%** actually used for the licensed indication. The hardest number in the literature for "the vast majority never see the light of day." Why: quantified attrition, not vibes. Status: verified via fetched peer-reviewed secondary (Vukotich, C. J. Jr. (2016), *J Res Practice*, 12(2), Art. P2 — https://jrp.icaap.org/index.php/jrp/article/download/552/454-inline=1.html); original paywalled. At drafting: cite the 2003 paper for the stat (not the 2008 *Science* follow-up), and fetch the original via institutional access if quoting directly.

**S3.4 — Piwowar, H., et al. (2018). "The state of OA: a large-scale analysis of the prevalence and impact of Open Access articles."** *PeerJ*, 6, e4375. DOI: 10.7717/peerj.4375. https://doi.org/10.7717/peerj.4375. Beats: paywalls as a wall — ~28% of the literature openly available (19M of 67M articles), much of it "Bronze" (free-to-read, no open license); OA articles get 18% more citations. Why: the largest-scale reproducible OA-prevalence study — hard numbers for the paywall beat. Status: fetched-confirmed via the University of Nebraska–Lincoln repository abstract (https://digitalcommons.unl.edu/scholcom/142/); the PeerJ page itself 403''d the fetcher.

**S3.5 — van Dalen, H. P., & Henkens, K. (2012). "Intended and unintended consequences of a publish-or-perish culture: A worldwide survey."** *J Am Soc Inf Sci Technol*, 63(7), 1282–1293. DOI: 10.1002/asi.22636. Beats: publish-or-perish — publication pressure "negatively affects the orientation of [researchers] towards policy and knowledge sharing." Why: a worldwide survey showing the perverse mechanism in scientists'' own words — pressure pushes scholars *away* from application. Status: abstract-only (Wiley paywall; via https://ideas.repec.org/a/bla/jamist/v63y2012i7p1282-1293.html).

*Gaps:* his "two years deep-diving research that never escaped" — author''s experience. The talk extends the graveyard claim beyond medicine (manufacturing, energy, agriculture) — **no single literature source covers that**; the piece must scope its receipts to biomedical research (where the evidence is strongest) or mark the broader claim as his observation.

---

## PIECE 4 — "The Cycle, at My Scale" (3 sources)

**S4.1 — Etzkowitz, H., & Leydesdorff, L. (2000). "The dynamics of innovation: from National Systems and ''Mode 2'' to a Triple Helix of university–industry–government relations."** *Research Policy*, 29(2), 109–123. DOI: 10.1016/S0048-7333(99)00055-4. http://www.leydesdorff.net/th12/th12.pdf. Beats: research↔industry bridging as an established model — the university "can play an enhanced role in innovation in increasingly knowledge-based societies." Why: the foundational paper for the talk''s exact claim — knowledge production coupled to practical spheres, not siloed. Status: fetched-confirmed (via the author''s hosted elaboration + cross-confirmation).

**S4.2 — Hossain, M., Leminen, S., & Westerlund, M. (2019). "A systematic review of living lab literature."** *J Cleaner Production*, 213, 976–988. DOI: 10.1016/j.jclepro.2018.12.257. Beats: "living laboratories" as an established methodology — "physical regions or virtual realities where stakeholders from public–private–people partnerships… create, prototype, validate, and test… in real-life contexts." Why: a systematic review giving his "living laboratories" language a real literature home — the term isn''t his metaphor. Status: fetched-confirmed via a peer-reviewed citing editorial (Leminen, S., & Schuurman, D. (2021), *Technol Innov Manag Rev*, 11(9/10), 3–5 — https://timreview.ca/sites/default/files/article_PDF/TIMReview_2021_Issue_9-10-Editorial.pdf); original paywalled — fetch via institutional access if quoting the definition directly.

**S4.3 — Nowotny, H., Scott, P., & Gibbons, M. (2003). "Mode 2 Revisited: The New Production of Knowledge."** *Minerva*, 41, 179–194. (Book: Gibbons et al. (1994). *The New Production of Knowledge*. Sage.) Beats: knowledge produced "in the context of application" — transdisciplinary, socially accountable. Why: the canonical statement legitimizing the bridge principle — "what we lack is the bridge" has a literature pedigree. Status: verified via academic secondaries (paywalled original); cite the *Minerva* article, the 1994 book behind it.

*Gaps:* the honest translation — "no acquisition capital, so build the pieces instead"; "the principle survives the scale change" — **no literature analogue exists at solo-founder scale**; mark as his model, not a cited claim. Same for the reinvest step as he runs it.

---

## PIECE 5 — "Sarah''s Story, Every Monday" (5 sources; 4 deliberate reuses)

**S5.1 — ASHP Drug Shortages Statistics** (reuse of S2.1). Beats: how the digest works (ASHP bulletins = first feed); the count as evidence (227 active; sole-source concentration). Status: fetched-confirmed.

**S5.2 — FDA shortage database via data.gov** (reuse of S2.2). Beats: how the digest works (second feed; "only what changed"). Status: fetched-confirmed via record; same live-browser caveat.

**S5.3 — Phuong et al. (2019), PLoS ONE** (reuse of S2.6). Beats: why a public record matters — measurable fragility is actionable fragility. Status: fetched-confirmed.

**S5.4 — McBride et al. (2013), AJHP** (reuse of S2.5). Beats: human cost at clinical scale — the record as a safety instrument. Status: fetched-confirmed.

**S5.5 — Kaakeh, R., et al. (2011). "Impact of drug shortages on U.S. health systems."** *Am J Health-Syst Pharm*, 68(19), 1811–1819. DOI: 10.2146/ajhp110210. PMID: 21930639. https://pubmed.ncbi.nlm.nih.gov/21930639/. Beats: **why document it** — national survey of pharmacy directors on the system-level burden (resource utilization, delays, rationing, safety workarounds). Why: the landmark U.S. survey quantifying what shortages cost systems to manage — the justification for the record. Status: fetched-confirmed (PubMed record). Note: the widely cited ~$216M/year labor-cost figure comes from secondaries citing this paper — do not cite the figure directly without the full text.

*Gaps:* Sarah''s story, his pharma years, the digest''s internal mechanics — author''s experience (the digest is his product; only its two feeds are externally citable). No peer-reviewed paper exists on "the value of public shortage documentation as a public good" — Kaakeh is the closest honest support; the beat is better served as argument than citation.

---

## PIECE 6 — "The Way Out of the Journals" (3 sources)

**S6.1 — UNESCO (2021). *Recommendation on Open Science*.** Adopted by the 41st General Conference, 23 November 2021, by 193 Member States. https://zenodo.org/records/5834767. Beats: incentive misalignment as international consensus — key action areas include "fostering a culture of open science and aligning incentives for open science." Why: 193 countries adopted a framework about the problem SPIN attacks — the problem is real at the policy level. Status: fetched-confirmed (NISO summary http://www.niso.org/niso-io/2021/11/unesco-open-science + Zenodo full text).

**S6.2 — Edwards, M. A., & Roy, S. (2017). "Academic research in the 21st century: Maintaining scientific integrity in a climate of perverse incentives and hypercompetition."** *Environ Eng Sci*, 34(1), 51–61. DOI: 10.1089/ees.2016.0223. PMID: 28115824; PMCID: PMC5206685. Beats: perverse incentives — "incentives for academic scientists have become increasingly perverse in terms of competition for research funding, development of quantitative metrics to measure performance, and a changing business model for higher education itself." Why: working scientists naming why the academy can''t fix itself — the "no one willing to construct" beat. Status: abstract-verified (PMID confirms existence). **At drafting: fetch the full text via PMC (https://pmc.ncbi.nlm.nih.gov/articles/PMC5206685/) to confirm the quote — it is open access there.**

**S6.3 — Fecher, B., & Friesike, S. (2014). "Open Science: One Term, Five Schools of Thought."** In Bartling, S., & Friesike, S. (Eds.), *Opening Science* (pp. 17–47). Springer. DOI: 10.1007/978-3-319-00026-8_2 (CC-BY-NC, open access). Beats: the "measurement school" — "concerned with alternative impact measurement" — the non-crypto literature home for SPIN''s recognition layer: new scholar-recognition metrics beyond journal prestige are already a recognized school of thought. Why: the honest, non-token-adjacent pedigree for the recognition design. Status: verified via academic secondaries (openresearch.amsterdam chapter record); chapter not directly fetched from Springer.

*Gaps:* SPIN''s design (tokenomics, rewards, tiers) — **author''s design throughout**; no token/crypto incentive literature was stretched to legitimize it. The honest build state (contract live, zero trades, unindexed) — his observation.

---

## PIECE 7 — "The Workbench" (0 sources — build piece)

No external sources. A brief literature search found nothing genuinely citable *and* relevant; candidates deliberately dropped: a *Nature* news article on collaborative writing tools (news, not peer-reviewed; about Manubot-style authoring, not a manuscript workbench with an earning layer); a vendor blog on the OSCOSS project (marketing-adjacent); Medium listicles. Stretching any of these would be citation-stuffing. **Every beat is author''s experience/design — handle as such; the piece''s authority is the build itself.**

---

## PIECE 8 — "The Living Laboratory" (3 sources)

**S8.1 — Uptime Institute, *Annual Outage Analysis 2025*** (Uptime Intelligence Keynote Report 173, May 2025). https://intelligence.uptimeinstitute.com/resource/annual-outage-analysis-2025. Beats: centralized-infrastructure fragility — 54% of respondents say their most recent significant outage cost >$100,000; one in five >$1 million; publicly reported 2024 outages had more severe impacts than prior years. Why: the industry''s own survey-based ledger of centralized failure — cost and severity. Status: fetched-confirmed. **LOAD-BEARING HONESTY CAVEAT: per-site outage frequency is *declining* for the fourth consecutive year. Use this source for cost/severity/concentration of risk — NEVER for "outages are getting more frequent."**

**S8.2 — Moura, G. C. M., et al. (2020). "Clouding up the Internet: How Centralized is DNS Traffic Becoming?"** *Proc. ACM Internet Measurement Conference (IMC ''20)*, pp. 42–49. DOI: 10.1145/3419394.3423625. http://giovane-moura.nl/resources/paper/Moura20b.pdf. Beats: centralization empirically — >30% of ccTLD queries from 5 large cloud providers; such concentration "may lead to large single points-of-failure," citing the 2016 Dyn and 2019 AWS events where "parts of their DNS infrastructure became unreachable and, consequently, their clients lost connectivity." Why: peer-reviewed measurement (55.7B queries) explicitly framed around centralization risk. Status: fetched-confirmed (full PDF). Caveat: 2020 data, DNS as proxy.

**S8.3 — Uptime Institute *Annual Outage Analysis 2026*, via Network World coverage** (report member-gated). https://www.networkworld.com/article/4171277/network-outages-power-failures-strain-data-center-resiliency.html. Beats: cascading failure — third-party providers (cloud, telecoms, colocation) "account for the majority of publicly reported outages" over the past decade; fiber/connectivity incidents "more than doubled" vs. 2020–2025 averages; analyst Daniel Bizo: "We have much more interconnected digital architectures… If anything goes wrong, that can have cascading impacts." Why: the newest findings on where risk is migrating. Status: fetched-confirmed article; **label as reported-via-coverage** when citing.

*Documentation note:* Omarchy / Hyprland / Arch Wiki pages may be cited lightly as *documentation* (how the stack is configured), never as evidence. *Gaps:* the build story (install saga, tiling wars, LAN endpoint) — author''s experience. The honest frame: failures concentrate in fewer, larger, external failure boundaries — which actually *strengthens* the homelab argument (owning the boundary) if stated plainly.

---

## PIECE 9 — "The Revenue Arm" (2 sources)

**S9.1 — U.S. Small Business Administration, Office of Advocacy, *Frequently Asked Questions About Small Business*, February 2026.** https://advocacy.sba.gov/wp-content/uploads/2026/02/FINAL_FAQsAboutSmallBusiness_2026_012826.pdf. Beats: the honest translation — 36,207,130 small businesses; 99.9% of all firms; 45.9% of private-sector employees (62.3M); 43.5% of GDP; 61% of net new jobs since 1995; **82.3% nonemployer** (his exact profile); **49.2% five-year new-establishment survival** (1994–2022 avg) — the honest stakes. Why: the official citable statistical source on the U.S. small-business economy. Status: fetched-confirmed (full PDF).

**S9.2 — U.S. Census Bureau, *Quarterly Retail E-Commerce Sales*, Q2 2026.** https://www.census.gov/retail/eCommerce.html. Beats: why commerce — $340.2B seasonally adjusted; +3.8% QoQ, +12.2% YoY (vs. +6.7% total retail); 17.1% of total retail sales. Why: the official measurement of U.S. retail e-commerce. Status: fetched-confirmed. (Revised estimates in the Q3 2026 release, Nov 19, 2026.)

*Gaps:* the $0 plan, $19 guide, The Dispatch, affiliate shelf, float math (~$15/order), niche reasoning, fox brand story — all author''s numbers/experience. **Do not let the macro stats inflate a one-person store** — the 49.2% survival figure is the counterweight, and the piece''s own prospectus requires showing the math.

---

## PIECE 10 — "The People" (1 source)

**S10.1 — Kuk, G., Meyer, C., & Giamporcaro, S. (2024). "Complementary currencies and entrepreneurship: Sustaining micro-entrepreneurs in Kenyan informal settlements."** *Strategic Entrepreneurship Journal*, 18(1), 21–54. First published Oct 31, 2023. Open access (Wiley). https://sms.onlinelibrary.wiley.com/doi/10.1002/sej.1484. Beats: the community layer — consent-based, community-operated monetary systems as mutual-aid infrastructure: the Sarafu digital complementary currency; members *choose* to accept it; it functions as a "temporary collective mechanism to relieve local poverty"; findings show its conditions "incentivize people to work together," building solidarity, collective purpose, and local business networks; sustained micro-entrepreneurs during COVID when fiat was scarce. Why: the closest genuine mapping to consent-based mutual-aid economics in the literature. Status: fetched-confirmed (full open-access text). **LOAD-BEARING CAVEAT: this is a community-*currency* study, not a "life-operations system." It supports the underlying social mechanism (consent + trust + reciprocity in community exchange), never WAVY''s specific design. One light touch; never as validation of WAVY.** (Deliberately not used: Michel & Hudon 2015 — real, but worse mapping; a WJAETS cloud-outage-adjacent paper — dubious outlet, dropped.)

*Gaps:* WAVY''s design specifics (mapped funds, one-confirmation outcomes, allowlisted exits, no custody, not a loan), the Society brand, Harbor Pass/Ship''s Store, pre-launch honesty — author''s design and statement.

---

## PIECE 11 — "The Brightest Minds, Convened" (2 sources)

**S11.1 — Guston, D. H. (1999). "Evaluating the First U.S. Consensus Conference: The Impact of the Citizens'' Panel on Telecommunications and the Future of Democracy."** *Science, Technology, & Human Values*, 24(4), 451–482. DOI: 10.1177/016224399902400402. https://philpapers.org/s/David%20Guston. Beats: the deliberative-roundtable form evaluated — lay-citizen panels ("akin to a jury but charged with deliberating on policy issues with a high technical content") assessed for impact on technology assessment and policymakers. Why: the canonical peer-reviewed evaluation of a Danish-model consensus conference in practice. Status: abstract-only (SAGE paywall; abstract corroborated in the Klüver bibliography and multiple syllabi). **Do not quote beyond the abstract.**

**S11.2 — Klüver, L. "The Consensus Conference."** Springer chapter, DOI 10.1007/1-4020-5216-2_12. https://link.springer.com/chapter/10.1007/978-3-032-02302-5_10. Beats: the Danish origin and history (40 consensus conferences tracked 1987–2001 by the Loka Institute). Why: written from the Danish practitioner lineage; documents the model''s history. Status: abstract-page verified; full chapter paywalled.

**HONESTY NOTE (load-bearing): the Danish model convenes *lay citizens*; his Council is *operator-heavy* (20 seats: pharma ops, logistics, AI builders).** The honest mapping is to the *convening form* — deliberative roundtable with expert briefings producing actionable recommendations — not to citizen selection. The piece must say this plainly, not claim "we''re doing a consensus conference." Council specifics (quarterly cadence, his brother''s freight seat, open seats) — author''s design.

---

## PIECE 12 — "The Invitation" (0 sources — series-internal)

No external sources required. The piece recaps P1–P11; its evidence is the series itself. Optionally re-anchor on the talk''s closing line via S1.1 (primary source). The three doors (join/partner/fuel) and the no-profit-promise guardrail are his definitions — author''s statement.

---

## COHESION REVIEW

### (a) Beats with no source coverage — gaps
Covered above per piece. The structurally important ones: P1''s personal-history beats (author''s experience — fine); P2''s Sarah account (talk-attributed — fine, frame as reported); P3''s cross-industry extension of the graveyard claim (no literature — **must scope to biomedical or mark as observation**); P4''s solo-founder-scale cycle (no analogue — **mark as his model**); P5''s "value of public documentation" (no paper — argue it, don''t cite it); P7 entirely (build piece — **do not citation-stuff**); P8''s build story; P9''s operating numbers; P10''s design; P11''s Council specifics. None of these gaps is fatal — all are honestly handleable as author''s experience/design — except the two flagged in (d).

### (b) Arguments/sources doing double duty — overlaps to resolve
1. **ASHP + FDA + Phuong + McBride reused P2 → P5.** Legitimate (P5 is the digest''s origin story), but the pieces must use them differently or read as the same article. Fix: P2 leads with GAO + Aljuneidi (the crisis is real, the field is scholarly); P5 leads with Kaakeh (the burden of managing shortages justifies the record) + ASHP/FDA as the feeds it draws on. Different jobs, same shelf.
2. **Incentive beat across P3 and P6.** P3 has van Dalen (publish-or-perish); P6 has Edwards & Roy + Fecher & Friesike + UNESCO (perverse incentives, measurement school, global consensus). Overlap risk is real. Fix: **P3 owns the trap** (why knowledge stays buried: Morris, Butler, Contopoulos-Ioannidis, Piwowar, van Dalen); **P6 owns why the academy can''t self-repair** (Edwards & Roy, Fecher & Friesike, UNESCO) **and then SPIN as author''s design**. One handoff sentence between them; no re-litigation.
3. **Fragility in two domains (P2 pharma-supply vs. P8 digital-infrastructure).** Not a problem — a feature. Claim 1 gets independent evidence in two domains; the series can note the convergence explicitly in P8 ("the same fragility, a different substrate").
4. **"Established models" in P4 (triple helix / living labs / Mode 2) vs. P11 (consensus conferences).** Different claims, no real overlap. Fine.

### (c) Ordering problems
The sequence holds: P6 depends on P3''s diagnosis (satisfied — P3 precedes P6); P5 depends on P2''s fragility framing (satisfied); P8 invokes claim 1 (established in P2); P4 gives the reader the cycle *before* the origin pieces that instantiate it (P7 research workbench → P8 living lab → P9 revenue/scale → P10 people → P11 convening) — the prospectus order is doing real work here. P12 recaps all. **No reordering needed.** One annotation: P4 is where the reader first learns the talk''s model is being *adapted* ("no acquisition capital") — that beat should land cleanly since P7–P11 all depend on accepting the adaptation.

### (d) Weak links — thesis outrunning sources
1. **P2''s 2001/94% stat — the one landmine.** Fix: add an explicit correction beat to the outline ("the number I gave that night was wrong — here''s what the record actually shows, and why I''m correcting it on the record"). For a hard-science audience, self-correction *is* credibility. Then build the "widen" on GAO + Aljuneidi + ASHP, never on the talk''s number.
2. **P8''s framing.** The Uptime data must never be used for "outages are getting worse" — frequency is declining; the honest frame is *concentration of failure boundaries* (Moura) + severity/cost (Uptime). The outline should carry this framing note.
3. **P3''s scope.** Receipts are biomedical; the talk''s claim sprawls across manufacturing/energy/agriculture. The outline needs the scoping note: receipts stay biomedical, the extension is marked as his observation.
4. **P10''s Kuk paper.** One light touch on the social mechanism; the outline should forbid using it as validation of WAVY''s design.
5. **P11''s lay-vs-operator mismatch.** The outline should require the plain statement, not the elision.
6. **P9''s macro stats.** The outline should subordinate the SBA/Census figures to the float math, with the 49.2% survival rate as counterweight.
7. **Citation-hygiene flags for drafting day:** Edwards & Roy — fetch the full text via PMC (PMCID: PMC5206685) before quoting; Contopoulos-Ioannidis 5%/1% — verified via peer-reviewed secondary, fetch the original via institutional access if quoting directly; Hossain living-lab definition — same; Guston/Klüver/Aljuneidi/Butler/van Dalen — abstract-only, do not quote beyond abstracts; Uptime 2026 — reported-via-coverage, label it; ASHP live-bulletins list + FDA query page — confirm rendering in the live browser (both bot-blocked the fetcher).

### (e) Concrete fixes (checklist)
- [ ] P2 outline: add the correction beat for the 2001/94% stat; frame the talk''s number as talk-attributed throughout.
- [ ] P3 outline: add the biomedical-scoping note; mark the cross-industry extension as author''s observation.
- [ ] P3/P6 boundary: one handoff sentence; P3 owns the trap, P6 owns the academy''s inability to self-repair + SPIN as design.
- [ ] P5 outline: differentiate from P2 per (b)(1) — Kaakeh leads here, GAO/Aljuneidi lead there.
- [ ] P7 outline: mark explicitly as build piece; forbid citation-stuffing in the drafting brief.
- [ ] P8 outline: add the "concentration, not frequency" framing note.
- [ ] P9 outline: subordinate macro stats to the float math; keep the 49.2% survival counterweight.
- [ ] P10 outline: Kuk used once, lightly, mechanism-only.
- [ ] P11 outline: require the plain lay-vs-operator statement.
- [ ] Drafting day: run the citation-hygiene checks in (d)(7); live-browser-confirm the ASHP list page and FDA query page.

---

## VERDICT

**The 12-piece structure is sourceable as designed — no restructure needed before drafting.** The evidence-heavy flagships (P1–P4: 3/6/5/3 sources) are well covered by peer-reviewed and institutional literature; the origins (P5–P6: 5/3) anchor cleanly; the build pieces (P7: 0, P8: 3, P9: 2, P10: 1, P11: 2) carry honest markings where the authority is his experience rather than the literature; P12 is series-internal.

Three outline *annotations* are required before drafting (not structural changes): the P2 stat correction, the P3 biomedical scoping, and the P8 concentration-framing. Everything else in the cohesion review is drafting discipline, already specified above.

One further note for the author: the single most credibility-bearing move in the entire series is the P2 correction — a founder publicly correcting his own number, on the record, in front of scientists. That beat should not be buried.
', NULL, NULL, NULL);
