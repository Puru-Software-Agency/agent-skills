---
name: ui-visual-hierarchy
description: Repair the scan order and relative emphasis of content and actions in an existing interface. Use when a screen feels noisy, flat, or unclear about what matters.
---

# Visual hierarchy

## Diagnose

Identify the main user task and the information needed to complete it.
Rank visible elements as primary, secondary, or incidental.
Inspect the screen at normal viewing size before zooming into individual details.
If everything is prominent, first reduce competition around the intended focus.

## Three levers

Use size, weight, and contrast together, not size alone.
Keep secondary text readable; softer color is often better than tiny type.
Most ordinary UI text can use a regular and a semibold/bold weight.
Avoid very thin weights for small labels or supporting text.

```css
:root {
  --ink-primary: #17212f;
  --ink-secondary: #526176;
  --ink-tertiary: #68778a;
}
.record__title { color: var(--ink-primary); font-weight: 650; }
.record__meta { color: var(--ink-secondary); }
```

```html
<article class="space-y-1">
  <h2 class="text-base font-semibold text-slate-900">Invoice 1042</h2>
  <p class="text-sm text-slate-600">Due 18 November</p>
</article>
```

The example colors are illustrative; test actual contrast on actual surfaces.
On a colored surface, choose a related readable text color instead of blindly
lowering white opacity, which can look washed out or inherit image texture.

## Weight versus contrast

A filled icon or bold glyph occupies more visual area than a thin one.
When a heavy icon overpowers adjacent text, soften the icon color.
When a subtle divider is too faint, a slightly wider light line may work
better than a harsh, darker one. Check both effects in context.

## Labels and meaning

Remove a visible label only if format or context still identifies the value.
“3 bedrooms” may scan better than “Bedrooms: 3” in a listing.
In a specification table, users often scan for “Depth,” so show that label.
Never remove a form control's programmatic label or accessible name.
Avoid hiding units or qualifiers that change the meaning of a number.

```html
<dl class="grid grid-cols-[minmax(8rem,1fr)_auto] gap-x-6 gap-y-2">
  <dt class="font-medium text-slate-800">Depth</dt>
  <dd class="text-slate-600">7.6 mm</dd>
</dl>
```

## Semantics and actions

Choose HTML heading levels for document structure, then style for visual role.
An `h1` for “Manage account” may be smaller than its main account value.
Keep one primary action per immediate decision where the task permits.
Secondary actions should remain clear, tertiary actions discoverable.
A destructive action can be subdued on the main page and prominent in
the confirmation step, which must clearly explain the consequence.

```html
<div class="flex flex-wrap items-center gap-3">
  <button class="rounded-md bg-blue-700 px-4 py-2 text-white">Save</button>
  <button class="rounded-md border px-4 py-2">Preview</button>
  <button class="underline underline-offset-2">Delete draft</button>
</div>
```

## Do / avoid

Do lower the prominence of competing details before enlarging the focus.
Do test hierarchy in both grayscale and the real color palette.
Do preserve readable text, focus indicators, and clear action semantics.
Avoid treating all labels as clutter or all destructive buttons as primary.
Avoid relying on opacity alone to express a disabled or secondary state.

## Completion check

Can a user name the screen's main task within a glance?
Are supporting data and actions available without fighting the focus?
Does reading and tab order still follow a sensible sequence?
