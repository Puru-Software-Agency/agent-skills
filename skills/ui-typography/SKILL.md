---
name: ui-typography
description: Specify or refine interface type scale, reading measures, line height, tracking, and alignment. Use for text-focused UI implementation or review.
---

# UI typography

## Establish the reading task

Determine whether users scan controls, compare data, read prose, or notice
a short display headline. Inspect actual copy in the product's language.
Respect an existing brand font and accessibility settings before changing type.

## Handcrafted scale

For a new UI, consider 12, 14, 16, 18, 20, 24, 30, 36, 48, 60, 72 px.
Use only sizes that the interface needs. A manually chosen scale avoids
subpixel values and leaves useful sizes between small UI labels and headings.
Use px or rem for named type tokens; nested `em` sizes can drift off-scale.

```css
:root {
  --text-xs: .75rem; --text-sm: .875rem; --text-base: 1rem;
  --text-lg: 1.125rem; --text-xl: 1.25rem;
  --text-2xl: 1.5rem; --text-3xl: 1.875rem;
  --text-4xl: 2.25rem; --text-5xl: 3rem;
}
```

```html
<div class="space-y-2">
  <h2 class="text-2xl font-semibold leading-tight">Account activity</h2>
  <p class="text-base leading-relaxed text-slate-700">Recent changes to your account.</p>
</div>
```

## Font choice

Prefer a face readable at the smallest size in use. Examine x-height,
stroke clarity, spacing, and available weights. A system sans stack is a
safe starting option when the design has no specified brand typeface.
Do not assume that a condensed display face will become good body text
by increasing tracking. Test fonts on the target platform and script.

## Measure and line height

Set long paragraphs to roughly 45–75 characters per line as a starting
range. Let adjacent media be wider without stretching the paragraph.
Longer lines may need more line height; smaller type generally needs more
proportional line height than large display type.
Try about 1.5–1.75 for body and 1.1–1.25 for a multi-line headline,
then adjust for the font, line length, language, and visual test.
These are starting values, not forced limits; some large titles work at 1.

```css
.prose { max-width: 65ch; line-height: 1.6; }
.display-title { max-width: 18ch; line-height: 1.12; letter-spacing: -.02em; }
```

## Tracking and alignment

Trust the font's default tracking until a real problem appears.
A large headline might benefit from around -.02em tracking.
Small all-caps labels might benefit from around +.05em.
Avoid automatic negative tracking on every heading or wide tracking on
every badge; glyph design and language matter.

When different text sizes share one row, compare baseline alignment with
vertical centering. Baseline alignment often feels cleaner for text-to-text.
Icons and buttons may need optical alignment instead of strict baselines.
Right-align comparable numeric columns and consider tabular numerals.
`font-variant-numeric: tabular-nums` does not require a monospaced font.

```html
<div class="flex items-baseline justify-between gap-4">
  <h3 class="text-xl font-semibold">Revenue</h3>
  <span class="text-sm text-slate-600">Last 30 days</span>
</div>
<td class="text-right tabular-nums">1,284.50</td>
```

Follow text direction for prose; center short independent blocks only when
the line breaks stay graceful. If using justified text, check hyphenation.
Keep inline links distinguishable in the reading context, including focus.

## Do / avoid

Do inspect target fonts and real content at actual rendered sizes.
Do retain readable supporting text and contrast.
Do adapt type sizes at breakpoints independently of body size.
Avoid assuming a modular ratio or a single line-height suits every element.
Avoid using color-only or hover-only cues for essential links.

## Completion check

Can users scan labels and read paragraphs without losing their line?
Do headings establish hierarchy without overwhelming the content?
Do numerical columns align for comparison and remain understandable?
