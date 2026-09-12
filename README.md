![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_ListBoxCollection_Advanced_v17

Driving several master/detail collection list boxes from one multilevel object and styling their rows per value with a meta expression. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v17**; converted from the binary `.4DB` to the `.4DProject` architecture so it runs on current 4D releases.

## What it demonstrates

- Feeding three collection-type list boxes at different levels from a single nested object (`oExam.results` -> `categorySelected.test` -> `testSelected.info`).
- Cascading master/detail selection driven by `currentItemSource` (`categorySelected`, `testSelected`) with no code -- selecting a category reveals its tests, selecting a test reveals its description.
- Per-row conditional styling through a list box `metaSource` method (`Decorate`), which returns a style object built once in `InitMetaValue`.
- Deriving list box fill colours at runtime from hidden reference rectangles with `OBJECT GET RGB COLORS`, converted to CSS hex by `RGBToHex`, so styling tracks light/dark mode.
- Generating randomised demo data from a JSON template (`bloodanalysis.json`) with `JSON Parse`, `New object` and `Random`.
- Applying multi-style rich text to a title cell with `ST SET ATTRIBUTES`, with a platform-specific font size.

## Key commands

| Command | Used for |
|---|---|
| `New collection` | Seeding the first/last name pools on form load |
| `JSON Parse` | Reading `Table_1.json` and `bloodanalysis.json` templates |
| `Document to text` / `Get 4D folder` | Locating `bloodanalysis.json` in the resources folder |
| `New object` | Assembling the nested exam/category/test result object |
| `Random` | Picking random names and generating in-range test values |
| `OBJECT GET RGB COLORS` | Reading fill colours from hidden reference rectangles |
| `ST SET ATTRIBUTES` | Styling the title cell rich text |
| `OB Get type` | Branching row style on numeric vs text values in `Decorate` |
| `COLLECTION TO ARRAY` | Extracting `Title` values into `arrTitle` |

## How it works

`00_Start` opens the `HDI` splash form; its demo button opens `HDI2`, the demo. `HDI2/method.4dm` runs on `On Load`: it builds the `colName`/`colLastName` name pools, loads `Table_1.json` for the title, then calls `GenerateResult` and `InitMetaValue`.

`GenerateResult` reads `bloodanalysis.json` from the resources folder and walks its `definition` with `For each`, building a collection of categories, each holding a collection of tests with randomised in-range `value`s, into `oExam.results`. The three list boxes bind to this one object: the categories box shows `oExam.results`, the tests box shows `categorySelected.test`, and the info panel shows `testSelected.info`. The `currentItemSource` bindings (`categorySelected`, `testSelected`) wire the drill-down automatically.

The most interesting piece is the styling pipeline. `InitMetaValue` reads three hidden reference rectangles (`refDoubleOutOfRange`, `refOutOfRange`, `refPerfectValue`) with `OBJECT GET RGB COLORS`, converts each background to a CSS hex string with `RGBToHex`, and stores a `Form.meta` object of style variants. The tests list box declares `metaSource: "Decorate"`; `Decorate` runs per row, inspects `This.value` against `This.min`/`This.max` (or matches text values) and returns the matching `Form.meta` variant, so out-of-range results are highlighted.

## Points of interest

- Row colours are not hardcoded -- they are sampled from off-screen reference objects at runtime, which is how the demo stays correct under dark mode.
- The three list boxes share one source object; there is no duplicated data, only different `dataSource` depths into `oExam`.
- `Decorate` uses `This` to reference the current row element and returns a style object, the collection list box "meta expression" pattern.
- `GenerateResult` is bound to `btnLoad`, so the reload button regenerates fresh random results without reopening the form.

## Modernisation notes

Converted from the original binary `.4DB` to a 4D project. Each branch below is a self-contained modernisation step.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-xliff-localisation`](../../tree/miyako-xliff-localisation) | Replace hardcoded Japanese literals with XLIFF `:xliff:` references for menus, forms, and method strings | [localisation.instructions.md](.github/instructions/localisation.instructions.md) |
| [`miyako-modernise-hdi-start-dialog`](../../tree/miyako-modernise-hdi-start-dialog) | Modernise the startup dialog pattern — form methods, object methods, and XLIFF integration | [startup.instructions.md](.github/instructions/startup.instructions.md) |
| [`miyako-dark-mode-support`](../../tree/miyako-dark-mode-support) | Add macOS/Windows dark mode support using CSS stylesheets and automatic color values | [css.instructions.md](.github/instructions/css.instructions.md) |
| [`miyako-hide-subroutine-methods`](../../tree/miyako-hide-subroutine-methods) | Hide subroutines and form-dependent methods from the Run Method dialog | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md) |
| [`miyako-replace-m-quit-with-quit-action`](../../tree/miyako-replace-m-quit-with-quit-action) | Replace legacy menu method wrappers (e.g. `m_Quit`) with 4D standard actions | [menu.instructions.md](.github/instructions/menu.instructions.md) |
| [`miyako-liquid-glass-buttons`](../../tree/miyako-liquid-glass-buttons) | Adapt buttons and controls for macOS Tahoe Liquid Glass appearance using CSS form-theme media queries | [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md) |
| [`miyako-disable-truncate-ellipsis`](../../tree/miyako-disable-truncate-ellipsis) | Disable truncate-with-ellipsis and automatic-column-resize on all listbox columns | [listbox.instructions.md](.github/instructions/listbox.instructions.md) |

## References

- [4D blog: Multilevel collection in different listboxes](https://blog.4d.com/multilevel-collection-in-different-listboxes/)
- [4D documentation: List box overview](https://developer.4d.com/docs/FormObjects/listboxOverview)
- [4D documentation: OBJECT GET RGB COLORS](https://developer.4d.com/docs/commands/object-get-rgb-colors)
- [4D documentation: JSON Parse](https://developer.4d.com/docs/commands/json-parse)
- Original download: [HDI_ListBoxCollection_Advanced_v17.zip](https://download.4d.com/4DBlog/Tips/4D_v17/HDI_ListBoxCollection_Advanced_v17.zip)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-22 at 2 05 03" src="https://github.com/user-attachments/assets/85332c6f-8558-42ad-b712-4b93cdca62f1" />
<img width="1050" height="592" alt="Screenshot 2026-07-22 at 2 05 08" src="https://github.com/user-attachments/assets/d7c1b2c1-01e4-4da5-961f-b1d5e993ca00" />
<img width="1050" height="592" alt="Screenshot 2026-07-22 at 2 05 18" src="https://github.com/user-attachments/assets/8d5f77d4-e9cf-4c81-80ec-01708404178a" />
