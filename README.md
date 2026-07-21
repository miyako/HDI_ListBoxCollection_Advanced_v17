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
| [`miyako-disable-truncate-ellipsis`](../../tree/miyako-disable-truncate-ellipsis) | Disable truncate-with-ellipsis on all listbox columns | [listbox.instructions.md](.github/instructions/listbox.instructions.md) |

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
