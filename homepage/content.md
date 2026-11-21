---
description: A running log of open-source releases, newest first.
---

# Marc Lavallee

::: html #site-style
<style>
  /* The release-log look, over the kit's article layout. Page chrome the old
     design did not have: masthead, kicker, byline, contents, colophon. */
  .article-masthead, .article-kicker, .article-byline, .toc, .article-colophon { display: none; }

  /* The old palette: paper, ink, and the teal accent. */
  :root { --accent: #0f6b5c; --accent-strong: #0b4f43; }
  @media (prefers-color-scheme: dark) {
    :root { --bg: #16191e; --surface: #1c2027; --text: #d9dee5; --text-2: #c4cbd6;
            --muted: #97a1af; --border: #2b303a; --border-strong: #3a4150;
            --code-bg: #1e222a; --accent: #57c3ab; --accent-strong: #7fd4c0; }
  }

  /* One centered column, the old .wrap. */
  main.article { display: block; max-width: 46rem; margin: 0 auto; padding: 0 1.25rem 3rem;
                 font: 400 1rem/1.65 var(--font-ui); color: var(--text);
                 background: var(--bg); }

  /* Header: the old site-header — name, tagline, intro. */
  .article-header { text-align: left; padding: 3.5rem 0 2rem; margin: 0 0 2rem;
                    border-bottom: 1px solid var(--border); }
  .article-title { font: 700 1.75rem/1.2 var(--font-ui); letter-spacing: -0.01em;
                   color: var(--text); margin: 0 0 0.5rem; }
  .article-dek { font: 400 1.05rem/1.5 var(--font-ui); color: var(--muted); margin: 0; }

  /* Section labels: the old month and group headers. */
  main.article h2 { font: 500 0.85rem/1 var(--font-numeric); letter-spacing: 0.08em;
                   text-transform: uppercase; color: var(--muted); margin: 2.25rem 0 0.75rem; }
  main.article h2:first-of-type { margin-top: 0.75rem; }

  /* Project rows. */
  main.article ul { list-style: none; padding: 0; margin: 0 0 1.5rem; }
  main.article li { padding: 0.3rem 0; font-size: 0.925rem; }
  main.article li a { color: var(--accent); }
  main.article li a:hover { color: var(--accent-strong); }

  /* Log entries: bordered rows with a mono lead line. */
  main.article p:has(> strong:first-child) {
    border-top: 1px solid var(--border); padding: 1rem 0 1.25rem; margin: 0 0 0.25rem;
  }
  main.article p:has(> strong:first-child) > strong:first-child {
    display: block; font: 500 0.875rem/1.4 var(--font-numeric); margin-bottom: 0.35rem;
  }
  main.article p { margin: 0 0 1rem; }
  main.article a { color: var(--accent); text-decoration-thickness: 1px; text-underline-offset: 2px; }
  main.article a:hover { color: var(--accent-strong); }
  main.article code { font: 0.875em var(--font-numeric); background: var(--code-bg);
                       border-radius: 4px; padding: 0.15em 0.35em; }
</style>
:::

I build small open-source tools for research, decision-making, journalism, and creative work with AI. This page records what ships from those projects: what grew, what changed, what got fixed. Each entry links to the code, the release, and the docs where they exist.

Find me on [GitHub](https://github.com/lavallee), [X](https://x.com/lavallee), and [LinkedIn](https://www.linkedin.com/in/marclavallee). The current homes of the work are [Lyra Forge](https://www.lyra-forge.com) and [Lyra-TK](https://www.lyra-tk.com).

## Research & evidence

- [flip](https://github.com/lavallee/flip) ([docs](https://lavallee.github.io/flip/)) — Format and tooling for agent-driven research notebooks.
- [flip-documents](https://github.com/lavallee/flip-documents) — Original document capture and conversion for Flip notebooks.
- [flip-github](https://github.com/lavallee/flip-github) — Complete GitHub issue, PR, and Discussion capture for Flip notebooks.
- [flip-papers](https://github.com/lavallee/flip-papers) — Exact DOI and arXiv evidence capture for Flip notebooks.
- [flip-publication](https://github.com/lavallee/flip-publication) — Editorial handoff workflow and templates for Flip notebooks.
- [flip-reddit](https://github.com/lavallee/flip-reddit) — Reddit thread evidence with original Atom custody and a Flip adapter.
- [flip-youtube](https://github.com/lavallee/flip-youtube) — Timestamped caption and ASR evidence for Flip notebooks.
- [flip-examples](https://github.com/lavallee/flip-examples) — Real, browsable flip notebooks.
- [ergo](https://github.com/lavallee/ergo) — Dataset documentation with structured, code-linked known-issue registries.
- [ergo-directory](https://github.com/lavallee/ergo-directory) — An index of published ergo data pages, clustered by subject.

## Knowledge & commitments

- [eno](https://github.com/lavallee/eno) ([docs](https://lavallee.github.io/eno/)) — Structural intelligence and gardening for your Obsidian vault — CLI, MCP, and HTTP.
- [daymark](https://github.com/lavallee/daymark) — Tasks, plans, recurrence, and durable reminder state for people and their agents.

## Agent intelligence & operations

- [somm](https://github.com/lavallee/somm) ([docs](https://lavallee.github.io/somm/)) — LLM call management and optimization: telemetry, routing, model memory.
- [milton](https://github.com/lavallee/milton) — Graded, typed findings over agent exhaust — sessions, receipts, ledgers, git.
- [spindle](https://github.com/lavallee/spindle) ([docs](https://lavallee.github.io/spindle/)) — Choose, hand over, and track the skills coding agents use.
- [cub](https://github.com/lavallee/cub) — A CLI for Ralph + Beads-style development with harnesses like Claude Code and Codex.
- [chip](https://github.com/lavallee/chip) — A contract for portable, versioned operational components.
- [chipsocket](https://github.com/lavallee/chipsocket) — The socket runner for chip, and its minimal second host.
- [yoinker](https://github.com/lavallee/yoinker) — Understand how it works; yoink what transfers.

## Publishing & visualization

- [artoo](https://github.com/lavallee/artoo) ([docs](https://lavallee.github.io/artoo/)) — Self-contained HTML mini-sites that pair a presentation with the research behind it.
- [artoo-mermaid](https://github.com/lavallee/artoo-mermaid) — Pinned Mermaid diagrams vendored offline into artoo artifacts.
- [vizier](https://github.com/lavallee/vizier) ([docs](https://lavallee.github.io/vizier/)) — Generate and critique journalistic data visualizations.
- [des](https://github.com/lavallee/des) ([docs](https://lavallee.github.io/des/)) — Lyra design system.
- [datasette-dossier](https://github.com/lavallee/datasette-dossier) — Entity-centered, host-themeable dossier views for Datasette.

## Shared surfaces for people and agents

- [toucan](https://github.com/lavallee/toucan) ([docs](https://lavallee.github.io/toucan/)) — An infinite canvas you edit by hand while your agents edit it beside you.
- [toucan-source-daymark](https://github.com/lavallee/toucan-source-daymark) — A Daymark project as a toucan plan source: boards, gantts and tables that write back.
- [backfield-client-sdk](https://github.com/lavallee/backfield-client-sdk) — Python SDK + light ADK for backfield.net (zero deps).

## Utilities & experiments

- [gipper](https://github.com/lavallee/gipper) ([docs](https://lavallee.github.io/gipper/)) — Run GPU jobs across cloud markets: estimates, collection, verified teardown, a local ledger.
- [oura-cli](https://github.com/lavallee/oura-cli) — Python CLI for the Oura API v2.
- [llm-bingo](https://github.com/lavallee/llm-bingo) — Bingo for LLM-isms, scored against your own transcripts.

## November 2026

**Nov 21 — [toucan v0.19.0](https://github.com/lavallee/toucan/releases/tag/v0.19.0).** The agent guide is split by topic. `AGENTS.md` is now a short guide to everyday canvas work, and the rest lives in five topic guides an agent reads when it needs them: CLI, editing, collaboration, plans and extensions. `toucan guide TOPIC` prints one, and the MCP server takes the topic too. [Code](https://github.com/lavallee/toucan) · [Agent guide](https://github.com/lavallee/toucan/blob/main/AGENTS.md)

**Nov 21 — [toucan v0.18.0](https://github.com/lavallee/toucan/releases/tag/v0.18.0).** A canvas now runs both ways at once. While an agent works, people can keep editing, selecting and commenting, and the agent hears what they did between its steps and builds on it rather than over it. A message sent mid-turn carries what's selected at that moment, and terminal and MCP agents get the same news with their next command. Agents hear each other's edits too, but not their own. Thanks to [Daniel Bachhuber](https://github.com/danielbachhuber), who asked for toucan to work full duplex. [Code](https://github.com/lavallee/toucan) · [Docs](https://lavallee.github.io/toucan/agents.html#what-people-do-while-you-work)

**Nov 20 — [toucan v0.17.0](https://github.com/lavallee/toucan/releases/tag/v0.17.0).** Publish screenshot revisions to a canvas, pin feedback to the exact image, and compare it with a revision linked in the producer’s reply. Producers can pull their pending notes through a CLI or a versioned API. Inspired by [Rounds by Kris Puckett](https://github.com/krispuckett/rounds). [Code](https://github.com/lavallee/toucan) · [Use cases and docs](https://lavallee.github.io/toucan/use-cases.html)

**Nov 19 — [artoo v0.11.0](https://github.com/lavallee/artoo/releases/tag/v0.11.0).** Artoo can now say where each rendered block came from: a source map marks every block with the file and lines that produced it (with each file's hash at build time), and `artoo edit` opens an artifact's pages for in-place editing. `[research] publish = false` keeps a private flip projection out of the page while its sources still travel with each block, and collection labels name pages in navigation and breadcrumbs. [Code](https://github.com/lavallee/artoo) · [Docs](https://lavallee.github.io/artoo/)

**Nov 19 — [artoo v0.10.4](https://github.com/lavallee/artoo/releases/tag/v0.10.4).** Small correctness patch: `&` is now escaped once, not twice — fixing headings like `News & Observer` in the on-this-page contents and link URLs with query strings.

**Nov 19 — [gipper v0.6.0](https://github.com/lavallee/gipper/releases/tag/v0.6.0).** Gipper can now run Runpod Serverless queue jobs alongside its existing Pod/SSH runner: deploy one reusable endpoint for successive jobs, or a temporary endpoint with verified cleanup, all through a provider-neutral lifecycle with append-only receipts. Non-idempotent creates and submissions are never retried automatically. Still stdlib-only; 116 tests across Python 3.12–3.14 plus live CUDA validation. [Code](https://github.com/lavallee/gipper) · [Docs](https://lavallee.github.io/gipper/)

**Nov 19 — [toucan v0.16.0](https://github.com/lavallee/toucan/releases/tag/v0.16.0).** Canvases get reflexes: things a canvas fixes by itself the moment they happen — a box whose text outgrew it, a frame that cuts off what it holds, an arrow through a box — each fix one undo step, and nothing runs while a person is dragging or typing. What no reflex can settle becomes an ask, and an agent can answer by teaching the canvas a new reflex. [Code](https://github.com/lavallee/toucan) · [Docs](https://lavallee.github.io/toucan/)

**Nov 19 — [daymark v0.7.0](https://github.com/lavallee/daymark/releases/tag/v0.7.0).** New verbs carry work between people and agents: `ask` puts a question with up to six options on a task, `answer` records the reply, `watch` blocks until another actor changes it, and `followup` leaves an agent task that becomes ready on a timer. `explore` now reports conditions whose advancing work finished after they were last assessed. No schema change. [Code](https://github.com/lavallee/daymark)

**Nov 18 — [daymark v0.6.0](https://github.com/lavallee/daymark/releases/tag/v0.6.0).** Daymark reviews agreed deadlines and outstanding replies on the person's local calendar day, recovers a previous agent's handoff with compact startup and a portable activity checkpoint, and generates workspace-specific launch configuration for Claude Code or Codex. [Code](https://github.com/lavallee/daymark)

**Nov 18 — [toucan-source-daymark v0.1.2](https://github.com/lavallee/toucan-source-daymark/releases/tag/v0.1.2).** Tracks Daymark 0.6.0 with the existing schema 6 and the toucan plan protocol. No wire-format change.

**Nov 17 — [somm v0.29.0](https://github.com/lavallee/somm/releases/tag/v0.29.0).** Adds Vast.ai balance reads, free `/v1/models` access checks for TypeSafe (Jev) and SubQ — the vendors with no balance API — and `credit_refusals` in `somm plans --json`: calls refused for lack of credit per provider over 30 days, which for those vendors is the only signal that credit ran out. [Code](https://github.com/lavallee/somm) · [Docs](https://lavallee.github.io/somm/)

**Nov 17 — [somm v0.28.0](https://github.com/lavallee/somm/releases/tag/v0.28.0).** `somm plans --json` gains prepaid balances for pay-as-you-go accounts: deepseek, openrouter, and runpod, each read with that account's own key from the environment. A missing key reads as nothing; a failed read is reported with its error.

**Nov 17 — [cub v0.29.3](https://github.com/lavallee/cub/releases/tag/v0.29.3).** Plan-execution hardening: hook shims call the installed cub-hooks entry point, an activity-based circuit breaker catches stuck subprocesses, runs stop on budget exhaustion and interrupts, and streaming harness hangs are prevented.

**Nov 16 — [gipper v0.5.0](https://github.com/lavallee/gipper/releases/tag/v0.5.0).** Runpod retired REST v1 on 2026-11-16, so every Runpod call from 0.4.3 and earlier fails. This release moves gipper's adapter to v2: prices and stock, pods, network volumes, and billing all read from the new routes, with per-page pod listing. Read paths were run against the live v2 API; pod create is checked against the v2 schema only. [Code](https://github.com/lavallee/gipper) · [Docs](https://lavallee.github.io/gipper/)

**Nov 16 — [flip v0.24.0](https://github.com/lavallee/flip/releases/tag/v0.24.0).** Follow and steer a notebook from outside the session that is working it — everything is a file plus a read command, no service. Every write appends to `log/events.jsonl` (`flip events`), `flip snapshot` returns the whole notebook as one JSON document, leads from `flip find` are kept in a file you can list and dismiss, and directives print first in `flip next`. Also fixes two concurrent writers being granted the same id. [Code](https://github.com/lavallee/flip) · [Docs](https://lavallee.github.io/flip/)

**Nov 15 — [daymark v0.5.0](https://github.com/lavallee/daymark/releases/tag/v0.5.0).** Daymark is rebuilt in layers: a kernel that stores what is true, and nine named strategies above it that return advice, never a write, each labelled with how well its idea is supported. Profiles (`plain`, `assistant`, `gentle`, `dense`) choose what to offer; conditions record what must be true for a goal. The schema upgrade to 6 is one-way — back up before installing.

**Nov 15 — [somm v0.27.0](https://github.com/lavallee/somm/releases/tag/v0.27.0).** `somm plans --json` gains `vendor`: what the vendor itself reports for each plan window, next to what somm metered. On release day MiniMax reported 90% of the week used against 46% metered — the two views are both true. Also locks `opentelemetry-api` for CVE-2026-126360.

**Nov 13 — [toucan v0.15.1](https://github.com/lavallee/toucan/releases/tag/v0.15.1).** Fixes a 0.15.0 plugin-trust bug: a server running sandboxed (a systemd user unit with `PrivateTmp`, a rootless container) saw root's folders as belonging to "nobody" and refused every plugin, including profile sources 0.14 had found.

**Nov 13 — [toucan v0.15.0](https://github.com/lavallee/toucan/releases/tag/v0.15.0).** A canvas can bind to a project kept somewhere else and show it as views that stay in step both ways: a kanban board, a gantt with a real date axis, a timeline, a dependency graph, and a table. Upstream changes redraw the views; a person's edits are written back as field changes, with a conflict notice when upstream refuses. Only shapes carrying `meta.plan` are ever touched — what people draw around a view is left alone.

**Nov 13 — [daymark v0.4.0](https://github.com/lavallee/daymark/releases/tag/v0.4.0).** Projects, as plain or as structured as the work needs: stages kept consistent with status both ways, manual ordering, item types with hierarchy and roll-ups, milestones, goals, typed custom fields, five presets, and `daymark plan` for a whole project in one read. The stored schema moves to 5 and the upgrade is one-way — back up first.

**Nov 13 — [toucan-source-daymark v0.1.0](https://github.com/lavallee/toucan-source-daymark/releases/tag/v0.1.0).** First release: a Daymark project as a toucan plan source. Boards, gantts, timelines, dependency graphs, and tables that write back; works with Daymark 0.4.0 and toucan 0.15.0 or newer. It never creates or upgrades a database.

**Nov 12 — [toucan v0.14.0](https://github.com/lavallee/toucan/releases/tag/v0.14.0).** Animate records a GIF of the diagram building up — box by box in the order the arrows go, a fork's branches arriving together, the whole diagram held at the end. Arrows now go round boxes instead of through them, on both engines, with elbow midpoints readable and writable.

**Nov 11 — [toucan v0.13.0](https://github.com/lavallee/toucan/releases/tag/v0.13.0).** Every routine now says what it's for and when to use it, grouped in the Routines menu and searchable. `toucan routine suggest` finds code agents keep writing by hand and offers to bank it as a routine; the work log behind it records every agent run that changes a canvas. Templates became addable blocks — eleven new ones — rather than whole canvases you start from.

**Nov 10 — [artoo v0.10.3](https://github.com/lavallee/artoo/releases/tag/v0.10.3).** `artoo deploy` in branch mode no longer refuses its own second deploy: once GitHub Pages serves the publishing branch, detection no longer mistakes the site for docs mode.

**Nov 10 — [daymark v0.3.0](https://github.com/lavallee/daymark/releases/tag/v0.3.0).** Adds `focus` — the person's own ordered short list, leading `ready` — plus scope filters within a workspace, and `daymark workspaces` / `daymark prime`. The schema upgrades in place on first open; back up first.

**Nov 10 — [somm v0.26.1 and v0.26.2](https://github.com/lavallee/somm/releases).** Two patch releases: `somm-mcp` installs again (the 2.x MCP SDK renamed `FastMCP`; the dependency is now `mcp>=1.30.0,<2`), `OllamaProvider._client()` returns as the one seam every request goes through, `exact_max_tokens` sends the token cap as given, and the free OpenRouter roster drops a model that left the catalog.

**Nov 07 — [artoo v0.10.1 and v0.10.2](https://github.com/lavallee/artoo/releases).** The docs site gains a grouped features list — everything artoo does, with how you reach each feature and the release it arrived in, generated from a JSON file other tools can read. `work/verification/` ignores its own output so screenshots stop churning in Git, and multi-option toggles no longer run off a phone screen.

**Nov 07 — [flip v0.23.0](https://github.com/lavallee/flip/releases/tag/v0.23.0).** Adds a built-in `repeatable-gain` workflow for turning recurring notebook problems into checked improvements, reusable extensions, or evidenced lessons, plus active-work guidance across the authoring skills. Fixes workflow continuation to choose the latest session by its recorded opening time rather than filename order, and names a config that doesn't parse instead of misreporting it.

**Nov 05 — [gipper v0.4.1–v0.4.3](https://github.com/lavallee/gipper/releases).** Custody hardening: names that merely describe a secret (`*_PROFILE`, `*_URL`, `*_PATH`…) no longer block uploads, secret detection inside custody files matches only value names that look secret (KEY, TOKEN, SECRET, PASSWORD, AUTH), entries can name the exact keys, and a missing file is reported instead of stopping every upload. 0.4.1 is a documentation and version-consistency patch.

## October 2026

**Oct 28 — [eno v0.5.0](https://github.com/lavallee/eno/releases/tag/v0.5.0).** Note-proposal review inside Obsidian: an agent queues a proposed rewrite with `scripts/propose_note.py`, and a new plugin command shows both complete versions side by side, applying the proposal only if the note still matches the source the agent read. A shared-notes guide covers the person-and-agent workflow, and tiling-threshold labels calibrate the duplicate-detection bands against reviewed pairs.

**Oct 17 — [spindle v0.4.2](https://github.com/lavallee/spindle/releases/tag/v0.4.2).** Catalog refs use the skill's directory name when its frontmatter `name` is a display name, so every ref can be passed to `spindle use`; quoted frontmatter values are unescaped.

**Oct 13 — [spindle v0.4.1](https://github.com/lavallee/spindle/releases/tag/v0.4.1).** `spindle brief --json` returns `read_roots` — the directories holding every catalog skill — for runtimes that restrict what an agent may read, and `spindle house setup --here` reports vendored skills the repository's ignore rules exclude.

**Oct 13 — [spindle v0.4.0](https://github.com/lavallee/spindle/releases/tag/v0.4.0).** The house and the catalog: one versioned directory holds the rules every harness loads, a small kernel of always-installed skills, and named project patterns — installed per machine for Claude Code, Codex, and Hermes. `spindle catalog` indexes skills from commit-pinned sources without installing or running anything, and reports what a newer upstream commit would change before the pin moves. `spindle find` / `use` / `report` rank skills per task, hand them over, and record outcomes that feed back into ranking.

**Oct 12 — [chipsocket v0.2.0–v0.2.2](https://github.com/lavallee/chipsocket/releases).** The socket runner for chip goes public: `learn.cuts` finds the widest band at each end of a member's score where a constant answer meets a precision bar, `banded()` confines a member to a score band, and `recorded()` seats an answer produced elsewhere as a member. Receipts land one file per UTC day. Fast follow-ups made cuts judge each score bucket on its own (with a `thin: true` marker when a cut was withheld for too few inputs) and pool thin buckets instead of stepping over them.

**Oct 12 — [chip v0.4.0](https://github.com/lavallee/chip/releases/tag/v0.4.0).** Leads with the ladder: `chip.placement` turns daily evidence into a closed-vocabulary verdict — `observer`, `mint`, `parser`, or one of four honest refusals — using six rules that survived a hand-run over 1.1M production calls. `docs/socket.md` documents one contract with several live implementations, and the chip-socket skill ships as the eighth agent skill in the Lyra Forge marketplace.

**Oct 12 — [spindle v0.3.0](https://github.com/lavallee/spindle/releases/tag/v0.3.0).** Conjunctive outcome gates for paired evaluations — one missing, malformed, or false gate blocks promotion regardless of mean score, with the exact failed case reported. Evaluation manifests reject unknown keys, and job-scoped leases let external dispatchers hold an explicit skill set per dispatched job, reconciled on startup when a job dies without releasing.

**Oct 03 — [oura-cli v0.2.0](https://github.com/lavallee/oura-cli/releases/tag/v0.2.0).** Adds `oura summary` — compact dated JSON for activity and recovery, with distinct missing, incomplete, and conflicting data states — and fixes morning reports, empty-day caching, and heart-rate datetime bounds. The SQLite cache is permission-protected, and new logins add OAuth state and PKCE checks.

## September 2026

**Sep 05 — [flip-documents v0.1.0–v0.2.0](https://github.com/lavallee/flip-documents/releases).** Original document capture with optional MarkItDown conversion, plus structured XLSX cell extraction through openpyxl — coordinates, string identifiers, types, formula text, and separate caches. Markdown stays a lossy reading derivative, not the record.

**Sep 05 — [flip-papers v0.1.0–v0.1.1](https://github.com/lavallee/flip-papers/releases).** Exact Crossref DOI and arXiv evidence capture with retained response bytes and explicit metadata/full-text status; 0.1.1 rejects incomplete declared bodies, invalid lengths, and unsupported encodings. A live arXiv full-text capture was confirmed against its first-page text; Unpaywall full text still needs a real operator email for live validation.

**Sep 05 — [flip-reddit v0.1.0–v0.2.1](https://github.com/lavallee/flip-reddit/releases).** Partial Reddit Atom captures with original-bytes custody and explicit coverage, plus an optional PRAW backend with explicit request and expansion limits, parentage, and unresolved placeholders. Authenticated live acquisition remains unverified without usable application credentials.

**Sep 05 — [flip-youtube v0.1.0–v0.2.0](https://github.com/lavallee/flip-youtube/releases).** Timestamped caption and local-ASR evidence using an optional youtube-transcript-api backend; 0.2.0 adds deterministic bundle archives, so Flip detects transcript changes with identical retained ASR audio, plus explicit yt-dlp acquisition. Live API access was rate-limited in testing, so no live accuracy is claimed.

**Sep 05 — [flip-publication v0.1.0](https://github.com/lavallee/flip-publication/releases/tag/v0.1.0).** Definition-only editorial handoff workflow, skill, and templates for Flip notebooks, reusing Flip audit/export with Pandoc or Quarto rendering. A preview is not publication; CSL exports get reviewed before sharing.

**Sep 03 — [flip-github v0.3.0](https://github.com/lavallee/flip-github/releases/tag/v0.3.0).** First public release of the complete GitHub evidence adapter: paginated issue and pull-request comments, merge and review state, Discussions with replies and chosen answers, lifecycle events, deterministic normalized evidence, and separate raw API custody.

## August 2026

**Aug 30 — [yoinker v0.1.0](https://github.com/lavallee/yoinker/releases/tag/v0.1.0).** First release: an agent skill and dual-harness plugin that explains unfamiliar tools and ideas, checks what transfers to local context, and returns borrow, try, track, or reject decisions with evidence and uncertainty intact.

**Aug 30 — [eno v0.4.0](https://github.com/lavallee/eno/releases/tag/v0.4.0).** Bounded, source-attributed search across repo-local flip notebooks: consumes Flip registry JSONL, ignores worktree copies, reports shadowed lineages, and adds FTS body search — all without loading the whole vault into a prompt. Also re-establishes the 0.x release boundary after an accidental major version briefly went out.

**Aug 30 — [flip v0.22.0](https://github.com/lavallee/flip/releases/tag/v0.22.0).** The work loop is public and extensible: one core `flip next` lifecycle (orient → select → open → work → check → close), a TOML workflow registry, local plugin, extension, hook, and filter registries, and three packaged authoring skills. Executable handlers require explicit scope enablement and capabilities.

**Aug 29 — [flip v0.21.1](https://github.com/lavallee/flip/releases/tag/v0.21.1).** Makes the installation and first-run path match the product: layered onboarding, a network-free quickstart, installed-wheel smoke tests on Linux, macOS, and Windows, and mechanical validation for version lockstep, plugin manifests, and documentation links. Codex is detected and attributed before a notebook seeds its first question.

**Aug 27 — [llm-bingo v0.2.0 and v0.2.1](https://github.com/lavallee/llm-bingo/releases).** Codex support via plugin manifest and catalog, one launcher for every install path, and a readable failure on old Pythons instead of `ModuleNotFoundError`. 0.2.1 fixes `score` counting the tool's own output — a rendered board self-matches 15 of its own 24 squares.

**Aug 18 — [flip v0.21.0](https://github.com/lavallee/flip/releases/tag/v0.21.0).** A citation is a reference, and only a reference: `--source` and `--about` now refuse an id from another series — a question id is not a source — before the id is allocated, with messages that name the series and the right verb. Previously a reassuring message papered over a wrong-world citation, and five claims in one notebook carried it before anyone noticed.

**Aug 11 — [vizier v0.2.0–v0.3.1](https://github.com/lavallee/vizier/releases).** Four releases in one day. 0.2.0 ships vizier as a Claude Code plugin, with the corpus finally in the wheel (installed copies had been silently answering with nothing). 0.2.1 fixes the 0.1.0 upgrade path, which left upgraded installs reading an empty corpus. 0.3.0 renames the `weaver` source to `principles` — it was named for a private tool nobody outside could see — and names artoo as the companion project. 0.3.1 makes reads refresh the cached corpus index across upgrades, so an upgraded install stops answering with the previous version's rows.

## July 2026

**Jul 28 — [eno v0.3.0](https://github.com/lavallee/eno/releases/tag/v0.3.0).** A generic OKF v0.2 consumer: standard Markdown links become first-class graph edges (resolved by path arithmetic only — unresolved links stay visible, nothing is guessed), and the portable trust fields ride the rebuildable index into every bounded read as one advisory line. New `eno trust` surfaces advisory candidates: past-stale notes, load-bearing concepts without provenance, generated-after-verified. Echoes, never verdicts.

**Jul 22 — [llm-bingo v0.1.0](https://github.com/lavallee/llm-bingo/releases/tag/v0.1.0).** First release: bingo for LLM-isms, scored against your own Claude transcripts.

**Jul 18 — [milton v0.1.0](https://github.com/lavallee/milton/releases/tag/v0.1.0).** First release: a dependency-free, local-first evidence accounting foundation for AI work — twelve read-only source adapters across agents, gateways, runners, work registries, and Git; reported-vs-computed cost with explicit precedence; and selected-spend traces through directed work relations, with conservation checks.

**Jul 17 — [chip v0.1.0–v0.2.0](https://github.com/lavallee/chip/releases).** The chip contract goes public: `chip.spec/v0alpha1` with fail-closed validation, a host conformance kit (quiet and duplicate runs produce no effects, invalid judgment fails closed), and example chips proven end-to-end on the reference host. 0.2.0 adds the delegation profile, prunable manifest hints, environment profiles, partitioned state for map-class chips, and lifecycle telemetry.

**Jul 17 — [eno v0.2.0](https://github.com/lavallee/eno/releases/tag/v0.2.0).** flip-bundle awareness without any dependency on flip: bundle detection from frontmatter, the workspace handle table read at index time, and scoped wikilink resolution — unknown handle or unknown id stays unresolved, never a guess. The garden classifies unresolved id-shaped references as flip refs with actionable hints, not concept candidates.

**Jul 14 — [eno v0.1.1](https://github.com/lavallee/eno/releases/tag/v0.1.1).** Documentation and onboarding: a synthetic demo vault exercising every eno feature — orphans, stubs, drift, frontier — so a two-minute hello-world shows real signal, plus a "how eno works" page with CVD-safe charts chosen with vizier.

**Jul 11 — [vizier v0.1.0](https://github.com/lavallee/vizier/releases/tag/v0.1.0).** First public release: a deterministic chart toolkit — validate, suggest-palette, suggest-ramp, ink, recommend-form, every suggestion validated before it's returned — plus 43 chart forms across the nine FT Visual Vocabulary families, corpus-backed critique routed through somm, and an MCP server. Published to PyPI as `datavizier`.

**Jul 11 — [artoo-mermaid v11.16.0](https://github.com/lavallee/artoo-mermaid/releases/tag/v11.16.0).** Mermaid 11.16.0 as an artoo site library: `artoo lib add mermaid` vendors a pinned, hash-recorded `mermaid.min.js` into any artifact, so explanatory diagrams keep rendering from local files forever. The package version tracks the bundled Mermaid version.
