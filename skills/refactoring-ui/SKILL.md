---
name: refactoring-ui
description: Orchestrate a whole-interface design or audit using the Refactoring UI method. Use for broad UI reviews or redesigns spanning several design concerns; route a narrow issue to the matching sibling skill.
---

# Refactoring UI Orchestrator

Use this skill for a whole screen, feature, or product surface. Preserve the user's scope, brand, stack, and existing behavior. This skill chooses the relevant deep modules; it does not require every module for every task.

## Seven-pass quick audit

| Pass | Question | Evidence to inspect | Route |
| --- | --- | --- | --- |
| 1. Task and states | What is the user's principal task and what states exist? | Real content, empty/error/loading cases, key interaction | [Feature workflow](../ui-feature-workflow/SKILL.md) |
| 2. Hierarchy | What should the eye see first, second, third? | Screen at normal viewing size, actions, data labels | [Visual hierarchy](../ui-visual-hierarchy/SKILL.md) |
| 3. Layout | Which items belong together and how do widths behave? | Narrow/wide screenshots, grouping, overflow | [Spacing and layout](../ui-spacing-layout/SKILL.md) |
| 4. Text | Is the text readable and easy to scan? | Type scale, line length, alignment, real copy | [Typography](../ui-typography/SKILL.md) |
| 5. Color | Do colors express hierarchy and meaning accessibly? | Palette, contrast, states, color-independent cues | [Color system](../ui-color-system/SKILL.md) |
| 6. Surfaces and media | Do depth and images support content? | Shadows, overlays, crops, uploaded media | [Depth](../ui-depth-elevation/SKILL.md), [Images](../ui-image-integration/SKILL.md) |
| 7. Finish | Are first-use and incidental details coherent? | Empty states, borders, controls, focus states | [Finishing](../ui-finishing-states/SKILL.md) |

For a requested audit, inspect and report findings in priority order with a concrete remedy and evidence. For implementation, change only the passes relevant to the requested scope, then verify the result at actual viewport sizes and interaction states.

## Routing by specific problem

| User signal | Open this skill |
| --- | --- |
| “Build this feature” or “where do I begin?” | [ui-feature-workflow](../ui-feature-workflow/SKILL.md) |
| “Too busy”, “no focal point”, “buttons compete” | [ui-visual-hierarchy](../ui-visual-hierarchy/SKILL.md) |
| “Cramped”, “stretched”, “responsive layout” | [ui-spacing-layout](../ui-spacing-layout/SKILL.md) |
| “Text feels off”, “hard to read” | [ui-typography](../ui-typography/SKILL.md) |
| “Palette”, “color contrast”, “status color” | [ui-color-system](../ui-color-system/SKILL.md) |
| “Shadow”, “raised surface”, “layering” | [ui-depth-elevation](../ui-depth-elevation/SKILL.md) |
| “Hero image”, “screenshot”, “uploaded avatar” | [ui-image-integration](../ui-image-integration/SKILL.md) |
| “Polish”, “empty state”, “too many dividers” | [ui-finishing-states](../ui-finishing-states/SKILL.md) |

Read the selected sibling `SKILL.md` before applying its guidance. If a request is narrow, use its sibling directly and skip this full audit. If multiple problems connect, read only the relevant siblings and reconcile their recommendations against the main user task.

## Refactoring cheat sheet

| Before | Consider after | Check |
| --- | --- | --- |
| Designing navigation before a core feature | Design the main interaction and its states first | Does the shell follow real feature needs? |
| All content equally dark and bold | Primary, supporting, incidental levels | Is scan order obvious? |
| Label/value pairs everywhere | Contextual values, with labels where needed | Can users still identify each datum? |
| Equal gaps within and between groups | Smaller internal gap, larger group gap | Is grouping unambiguous? |
| Full-width form on desktop | Bounded form width, useful surrounding space | Is input content easy to scan? |
| Many arbitrary font sizes | Compact handcrafted type scale | Are real headings/body readable? |
| White text on saturated badges | Dark text on pale tinted surface | Does measured contrast pass? |
| One heavy shadow on every card | Small elevation scale tied to role | Is the important surface emphasized? |
| Text over a busy photo | Crop plus overlay/scrim and contrast test | Is every text region readable? |
| Dividers between every row/section | Spacing or surface contrast where sufficient | Do boundaries remain clear? |
| Blank first-use screen | Explanation and next useful action | Can a new user proceed? |

The “after” column presents candidate treatments, not mandatory replacements. A border, saturated button, or full-width layout can be correct when the task calls for it.

## Delivery check

Verify the main task, meaningful state differences, keyboard/focus visibility, image and text legibility, and narrow/wide layout. Explain the few changes that carry the most value and call out any remaining tradeoff.
