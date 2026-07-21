# HDI_ListBoxCollection_Advanced_v17

A 4D v17 **HDI** (How Do I) binary database demonstrating advanced list box collection features, converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as `HDI_ListBoxCollection_Advanced`, a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** [Display a collection in a listbox](https://blog.4d.com/display-a-collection-in-a-listbox/)
- **Original download:** [HDI_ListboxCollection.zip](https://download.4d.com/Demos/4D_v17/HDI_ListboxCollection.zip)

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-xliff-localisation`](../../tree/miyako-xliff-localisation) | Replace hardcoded Japanese literals with XLIFF `:xliff:` references for menus, forms, and method strings | [localisation.instructions.md](.github/instructions/localisation.instructions.md) |
| [`miyako-modernise-hdi-start-dialog`](../../tree/miyako-modernise-hdi-start-dialog) | Modernise the startup dialog pattern — form methods, object methods, and XLIFF integration | [startup.instructions.md](.github/instructions/startup.instructions.md) |
| [`miyako-dark-mode-support`](../../tree/miyako-dark-mode-support) | Add macOS/Windows dark mode support using CSS stylesheets and automatic color values | [darkmode.instructions.md](.github/instructions/darkmode.instructions.md) |
