---
name: ui-color-system
description: Create or refine UI color families, state colors, and contrast-aware usage. Use for palette and color-system work, not an unrelated brand overhaul.
---

# UI color system

## Inventory first

Collect existing brand colors, component states, surfaces, and semantic needs.
Map foreground/background pairs before inventing additional hues.
Keep a restrained set of shade families that supports the real interface.

| Family | Typical need | Starting number of shades |
| --- | --- | --- |
| Neutral | Ink, panels, borders, controls | About 8–10 |
| Primary | Main actions, selection, focus | About 5–10 |
| Semantic/accent | Success, warning, danger, info, charts | As needed, often 5–8 |

These counts describe useful starting inventories, not required quotas.
Pick a usable middle shade, the darkest text shade, and the lightest surface
shade, then fill the gaps. Names such as 100–900 aid reuse.

```css
:root {
  --brand-100: hsl(215 90% 95%);
  --brand-500: hsl(215 80% 50%);
  --brand-800: hsl(220 70% 28%);
  --neutral-100: hsl(215 20% 96%);
  --neutral-900: hsl(215 25% 14%);
}
```

## Color reasoning

HSL separates hue, saturation, and lightness for exploratory adjustments.
OKLCH can be helpful for perceptual comparison and gamut-aware modern CSS.
Neither model selects a good palette automatically; inspect colors in place.
At extreme HSL lightness, color often looks less saturated. Modest saturation
or hue adjustments can keep a shade family lively.

The book's hue-rotation method aims lighter shades toward a nearby
perceptually brighter hue (around yellow, cyan, or magenta on an HSL wheel),
and darker shades toward a nearby darker hue (around red, green, or blue).
For some blue palettes, a lighter cyan-leaning shade and darker navy-leaning
shade work well. “Always toward yellow / always toward blue” is not a
general formula. Try small shifts, often within 20–30 degrees, and inspect.

Use lightly tinted warm or cool neutrals when they suit the product.
Pure neutral gray can also be appropriate. Match temperature across shades.

## Contrast flip and state meaning

If white text on a colored badge makes it too visually dominant, try a
light-tinted surface with darker related text. Test the final pair, not a
token in isolation. On a colored panel, select a supporting text shade
that relates to the background instead of automatically lowering opacity.

```html
<span class="inline-flex items-center gap-2 rounded-full bg-emerald-50 px-3 py-1 text-sm font-medium text-emerald-800">
  <span aria-hidden="true" class="h-2 w-2 rounded-full bg-emerald-700"></span>
  Active
</span>
```

Do not make color the only status signal. Add text, shape, icon, or pattern;
label chart series directly where useful. Check color-vision differences.
Measure text, controls, borders, and focus indicators against the current
applicable accessibility standard and the project's target level. The book's
4.5:1 normal-text and 3:1 large-text figures are useful historical context,
but production checks should use current authoritative guidance.

## Tokens and implementation

Centralize palette values and assign semantic usage tokens so a shade can
change without searching every component. Avoid generating a new blue
through `lighten()` for each component.

```css
:root {
  --surface-info: var(--brand-100);
  --text-info: var(--brand-800);
  --action-primary: var(--brand-500);
}
```

## Do / avoid

Do test normal, hover, focus, selected, disabled, and error states in scope.
Do inspect each foreground/background pair at actual size.
Do keep hue shifts and shade counts purposeful.
Avoid treating all neutrals as tinted or every warning as a pastel badge.
Avoid relying on a color model, a fixed formula, or color alone for meaning.

## Completion check

Can each family be reused without near-duplicate values?
Are interactive states discernible and text readable?
Can a user understand status without distinguishing two hues?
