# HDI_ListBoxCollection_Advanced_v17

A 4D v17 **HDI** (How Do I) binary database demonstrating advanced list box collection features, converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as `HDI_ListBoxCollection_Advanced`, a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** [Multilevel collection in different listboxes](https://blog.4d.com/multilevel-collection-in-different-listboxes/)
- **Original download:** [HDI_ListBoxCollection_Advanced_v17.zip](https://download.4d.com/4DBlog/Tips/4D_v17/HDI_ListBoxCollection_Advanced_v17.zip)

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-xliff-localisation`](../../tree/miyako-xliff-localisation) | Replace hardcoded Japanese literals with XLIFF `:xliff:` references for menus, forms, and method strings | [localisation.instructions.md](.github/instructions/localisation.instructions.md) |
| [`miyako-modernise-hdi-start-dialog`](../../tree/miyako-modernise-hdi-start-dialog) | Modernise the startup dialog pattern — form methods, object methods, and XLIFF integration | [startup.instructions.md](.github/instructions/startup.instructions.md) |
| [`miyako-dark-mode-support`](../../tree/miyako-dark-mode-support) | Add macOS/Windows dark mode support using CSS stylesheets and automatic color values | [css.instructions.md](.github/instructions/css.instructions.md) |
| [`miyako-hide-subroutine-methods`](../../tree/miyako-hide-subroutine-methods) | Hide subroutines and form-dependent methods from the Run Method dialog | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md) |
| [`miyako-replace-m-quit-with-quit-action`](../../tree/miyako-replace-m-quit-with-quit-action) | Replace legacy menu method wrappers (e.g. `m_Quit`) with 4D standard actions | [menu.instructions.md](.github/instructions/menu.instructions.md) |
| [`miyako-liquid-glass-buttons`](../../tree/miyako-liquid-glass-buttons) | Adapt buttons and controls for macOS Tahoe Liquid Glass appearance using CSS form-theme media queries | [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md) |
| [`miyako-disable-truncate-ellipsis`](../../tree/miyako-disable-truncate-ellipsis) | Disable truncate-with-ellipsis and automatic-column-resize on all listbox columns | [listbox.instructions.md](.github/instructions/listbox.instructions.md) |

## Copilot Token Usage

All sessions used **Claude Opus 4.6** via GitHub Copilot.

| Session | Input Tokens | Output Tokens | Turns |
|---------|-------------:|--------------:|------:|
| Sync main with origin | 7,147,562 | 20,999 | 116 |
| XLIFF localisation | 4,787,225 | 24,720 | 80 |
| Disable truncate ellipsis | 4,276,447 | 14,753 | 58 |
| Modernise HDI start dialog | 3,417,828 | 18,666 | 67 |
| Dark mode support | 2,524,060 | 22,489 | 46 |
| Replace m_quit with quit action | 1,421,593 | 13,001 | 23 |
| Liquid glass buttons | 1,105,102 | 7,292 | 18 |
| Hide subroutine methods | 859,694 | 6,074 | 17 |
| **Total** | **25,539,511** | **127,994** | **425** |

### Model Selection Guidance

| Session | Turns | Why cheaper works |
|---|---|---|
| **Token usage summary** | 13 | Pure data retrieval/reporting — Haiku 4.5 is fine |
| **Sync main with origin** | 116 | Git operations, no complex reasoning — Sonnet 5 |
| **Replace m_quit with quit action** | 23 | Mechanical rename/refactor — Sonnet 5 |
| **Hide subroutine methods** | 17 | Targeted, well-scoped code edit — Sonnet 5 |

### Borderline (Sonnet 5 likely sufficient):

| Session | Turns | Notes |
|---|---|---|
| **Liquid glass buttons** | 18 | UI styling — Sonnet handles CSS/UI well |
| **Disable truncate ellipsis** | 58 | Focused change, many turns suggest iteration — Sonnet |

### Opus justified (complex/creative tasks):

| Session | Turns | Why Opus helps |
|---|---|---|
| **Modernise HDI start dialog** | 67 | Architectural decisions, large refactor |
| **Xliff localisation** | 80 | Cross-cutting i18n, many files |
| **Dark mode support** | 46 | Feature design + implementation |

### General model selection heuristic:

- **Haiku 4.5** → simple lookups, summaries, git ops, Q&A
- **Sonnet 5** → most coding tasks: refactors, bug fixes, focused features, test writing
- **Opus 4.6** → complex multi-file refactors, architectural decisions, unfamiliar codebases, creative problem-solving

Sonnet 5 is the sweet spot for ~70% of coding work. Save Opus for when you need deeper reasoning or are working across many interconnected files.

### Mode Selection Guidance

Here's my assessment based on your session history:

**Interactive was the right call for most of these.** Many sessions had mid-stream corrections (wrong 4D command names, missed requirements, URL fixes). The XLIFF session (19 turns), modernise session (15 turns), and sync/setup session (25 turns) all needed real-time steering — autopilot would have gone off-track.

**Now with documented instructions, these types are autopilot-ready:**
- Simple property changes ("disable truncate ellipsis", "liquid glass buttons", "hide subroutine methods") — clear spec, mechanical edits
- "Replace m_quit with quit action" — well-scoped refactor
- PR creation / session summaries — formulaic end-of-session steps

**Plan mode would have helped with:**
- **XLIFF localisation** — complex multi-file task where the agent missed capitalised language codes and used wrong command names. A plan review would have caught scope issues before execution.
- **Dark mode support** — the agent used a non-existent 4D command (`_O_REDRAW`). Plan would have surfaced the approach for you to vet first.
- **Modernise HDI** — 15 turns with several "you didn't do X" corrections. Seeing the plan upfront would have caught omissions.

**TL;DR:** Your interactive instinct was correct for discovery sessions. Going forward, use **plan** for multi-file/multi-step tasks where 4D-specific knowledge matters, and **autopilot** for mechanical changes where your `.github/instructions` give enough context.

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-22 at 2 05 03" src="https://github.com/user-attachments/assets/85332c6f-8558-42ad-b712-4b93cdca62f1" />
<img width="1050" height="592" alt="Screenshot 2026-07-22 at 2 05 08" src="https://github.com/user-attachments/assets/d7c1b2c1-01e4-4da5-961f-b1d5e993ca00" />
<img width="1050" height="592" alt="Screenshot 2026-07-22 at 2 05 18" src="https://github.com/user-attachments/assets/8d5f77d4-e9cf-4c81-80ec-01708404178a" />
