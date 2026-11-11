---
name: ui-spacing-layout
description: Build or repair spatial grouping, width constraints, and responsive layout in UI. Use when content feels cramped, stretched, poorly grouped, or unstable across viewport sizes.
---

# Spacing and layout

## Read the content first

Inspect a real narrow and wide viewport with realistic content.
Mark which elements belong to the same group and which regions need separation.
Set width by content and task, not by available screen area alone.
Begin with generous space, then reduce it when density clearly helps scanning.

## A constrained, nonlinear scale

Start with existing design tokens if available. For a new system, this book's
illustrative scale is a useful candidate:

| px | 4 | 8 | 12 | 16 | 24 | 32 | 48 | 64 | 96 | 128 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| role | micro | tight | compact | base | group | section | major | page | large | large |

The increasing jumps make adjacent choices visually distinct.
Do not force every value into one scale if the existing product has stable tokens.
Use a neighboring value comparison when a gap feels wrong.

```css
:root {
  --space-1: .25rem; --space-2: .5rem; --space-3: .75rem;
  --space-4: 1rem; --space-6: 1.5rem; --space-8: 2rem;
  --space-12: 3rem; --space-16: 4rem;
}
.field { display: grid; gap: var(--space-2); }
.field-list { display: grid; gap: var(--space-6); }
```

## Proximity test

Space within a group must be visibly smaller than space between groups.
An initial experiment can use group spacing around 2.5 times internal spacing,
such as 8 px within a field and 24 px between fields.
This is a visual heuristic, not a minimum ratio or pass/fail law.
Check multiline labels, validation messages, and wrapped list items.

```html
<form class="space-y-6">
  <div class="space-y-2">
    <label for="email">Email</label>
    <input id="email" class="block w-full rounded-md border p-3" />
  </div>
  <div class="space-y-2">
    <label for="phone">Phone</label>
    <input id="phone" class="block w-full rounded-md border p-3" />
  </div>
</form>
```

## Width discipline

Use `max-width` for a form, article, or card whose content has an optimal width.
Allow it to shrink only when the viewport becomes narrower than that width.
A narrow form may sit beside supporting text on a wide page without stretching.
Do not make a zip/postal-code input as wide as a long-address input merely
to satisfy an equal-column grid.

```css
.settings { display: grid; grid-template-columns: minmax(0, 24rem) minmax(0, 1fr); gap: 3rem; }
.settings__form { width: min(100%, 32rem); }
@media (max-width: 48rem) { .settings { grid-template-columns: 1fr; } }
```

## Static and fluid regions

Give a sidebar a bounded width based on its content; let main content flex.
Use internal grids where cards or table regions actually need fluid columns.
Avoid percentage widths that make navigation too wide on desktop or too
narrow on a medium viewport. Use `min-width: 0` on flexible regions to
allow text wrapping instead of accidental horizontal overflow.

```html
<div class="flex gap-8">
  <aside class="hidden w-64 shrink-0 lg:block">...</aside>
  <main class="min-w-0 flex-1">...</main>
</div>
```

## Do / avoid

Do test narrow, medium, and wide layouts with long text and dense data.
Do allow large headlines and generous padding to shrink at different rates.
Do keep touch targets and readable measures while increasing density.
Avoid treating a 12-column grid or any ratio as mandatory.
Avoid filling a wide screen merely because space is available.

## Completion check

Is grouping unambiguous without unnecessary dividers?
Does each component keep a useful width and avoid horizontal overflow?
Are compact regions a deliberate response to the task, not a default?
