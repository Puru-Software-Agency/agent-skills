---
name: ui-finishing-states
description: Polish a functional UI through empty states, controlled accents, default control treatments, and clearer surface separation.
---

# Finishing and states

## Start with functional states

Inspect populated, empty, loading, error, selected, hover, and focus states
that actually exist in the feature. Prioritize fixes that improve the task.
Finishing should not disguise an unresolved hierarchy or layout problem.

## Border audit

For every divider, ask what distinction it communicates.
If adjacent regions are already clear, try removing it.
If distinction is needed, compare extra space, slightly different surface
tones, a subtle shadow, or a border. Keep borders where they best clarify
controls, focus, grouping, or dense data.
Do not target a fixed percentage of borders for removal.

```css
.section + .section { margin-block-start: 3rem; }
.surface { background: #fff; box-shadow: 0 1px 4px #17212f14; }
.field { border: 1px solid #8792a4; }
```

```html
<section class="space-y-6 bg-slate-50 p-8">
  <h2 class="text-xl font-semibold">Recent activity</h2>
  <div class="space-y-4">...</div>
</section>
```

## Accent and background

A colored top or side border, perhaps 3–4 px, can distinguish a priority
card or alert. Use a semantic color for status; do not make the colored
strip the only signal. A gentle tint, nearby-hue gradient, quiet pattern,
or simple shape can add character while keeping content dominant.

```html
<aside class="border-l-4 border-amber-500 bg-amber-50 p-4">
  <h3 class="font-semibold">Payment needs attention</h3>
  <p>Update your card to resume service.</p>
</aside>
```

## Improve defaults with meaning

Replace ordinary bullets with icons when the icon communicates something,
such as a check for included items. Keep lists semantic in the DOM.
Style selected radio/checkbox states with the brand palette while retaining
native input behavior or equivalent keyboard and screen-reader support.
Selectable cards need a clear checked state, focus ring, and full hit area.

```html
<label class="block cursor-pointer rounded-lg border p-4 has-[:checked]:border-blue-700 has-[:focus-visible]:ring-2 has-[:focus-visible]:ring-blue-500">
  <input type="radio" name="plan" value="team" class="sr-only" />
  <span class="font-semibold">Team plan</span>
</label>
```

## Actionable empty states

State what is absent and what the user can do next. A heading, short
explanation, and direct action are useful when creation is possible.
An illustration may help orientation but is optional. A search with zero
results may need “clear filters,” not “create item”; a read-only screen may
have no creation button at all.
Hide controls that truly cannot operate yet, but preserve orientation.

```html
<section class="mx-auto max-w-md py-12 text-center">
  <h2 class="text-xl font-semibold">No invoices yet</h2>
  <p class="mt-2 text-slate-600">Create one to start tracking payments.</p>
  <a href="/invoices/new" class="mt-6 inline-block rounded-md bg-blue-700 px-4 py-2 text-white">Create invoice</a>
</section>
```

## Reconsider component shape

A dropdown can group actions with explanatory text. A table can combine
related data in a cell if sorting and scanning remain clear. A major choice
can be a selectable card instead of a tiny radio target. Preserve semantic
structure, predictable behavior, and accessible interaction.

## Do / avoid

Do keep decorative details subordinate to the main task.
Do test first-use, no-results, error, and populated states separately.
Do retain focus indication and visible control boundaries.
Avoid adding icons, colored borders, or illustrations to every component.
Avoid assuming every empty state needs the same four-piece formula.

## Completion check

Does a new user know what to do on an empty screen?
Do accents add meaning without competing with primary actions?
Are controls clear with keyboard, touch, and assistive technology?
