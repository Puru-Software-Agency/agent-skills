---
name: ui-depth-elevation
description: Use light, shadows, surface tones, and overlap to express UI elevation and interaction. Use when depth helps clarify focus or layers, not for general decoration.
---

# Depth and elevation

## Assign the role before the effect

Identify which surface should sit above or below another and why.
The treatment should help users distinguish a button, popover, modal,
dragged item, or recessed input, not decorate every rectangle.
Respect flat or minimal existing visual systems.

## Light from above

For a tactile style, use a coherent light direction across components.
A raised control can show a subtle top highlight and a small lower shadow.
A recessed control can have a dark inset at the top and a lighter lower edge.
Use small differences; strong bevels can make controls visually noisy.

```css
.raised-control {
  background: #2f61d5;
  box-shadow: inset 0 1px 0 #5d82e3, 0 2px 2px #1c397133;
}
.inset-control {
  box-shadow: inset 0 2px 3px #17212f24, inset 0 -1px 0 #ffffffb3;
}
```

The sample colors and blur are starter values. Adapt them to actual surfaces.
Opaque hand-picked highlights may keep a saturated control richer than a
transparent white overlay; compare both in context.

## Two-part shadow

Combine a wider, softer cast shadow with a tighter, darker contact shadow.
The cast component suggests light falling past the object; the contact
component anchors it close to the surface. As elevation grows, the contact
component can fade while the cast shadow spreads.

```css
:root {
  --elev-1: 0 1px 2px #16203429, 0 3px 6px #16203412;
  --elev-2: 0 2px 4px #16203424, 0 10px 20px #16203417;
  --elev-3: 0 3px 6px #1620341a, 0 18px 34px #1620341c;
  --elev-4: 0 4px 8px #16203412, 0 28px 52px #16203421;
}
```

Use four tiers only if four different roles exist. A simple interface may
need one or two. Tune shadows on the actual background; opacity that works
on white may disappear on a tinted surface.

| Candidate tier | Typical role | What to verify |
| --- | --- | --- |
| 1 | Button or low card | Separation without dominance |
| 2 | Menu or floating card | Clear relation to trigger |
| 3 | Popover or panel | Readable overlap and focus |
| 4 | Modal | Dominance without a harsh halo |

```html
<div class="rounded-lg bg-white shadow-sm">Low surface</div>
<div class="rounded-lg bg-white shadow-xl">Floating panel</div>
```

Tailwind's stock shadows are examples; replace with project tokens when
the surface system needs a coherent custom scale.

## Flat depth and overlap

If soft shadows do not fit, use lighter and darker surface tones, or a
short solid offset shadow. Keep the visual hierarchy legible without blur.
Overlapping a card across two background regions can communicate layers.
When images overlap, add a background-colored gap or outline to keep
their edges from clashing.

```css
.flat-card { background: #fff; box-shadow: 3px 3px 0 #24354d; }
.overlap-card { position: relative; margin-top: -2rem; }
```

## Interaction mapping

A dragged item may gain elevation while moving and return on release.
A pressed button may lose its shadow or move slightly toward the surface.
Do not animate depth when motion would distract, conflict with reduced
motion preferences, or obscure state changes.

## Do / avoid

Do keep light direction and elevation meaning consistent.
Do inspect stacking contexts, clipping, scroll containers, and focus rings.
Do use only the number of tiers the interface can distinguish.
Avoid one heavy shadow for every card or photorealistic beveling by default.
Avoid hiding interactive boundaries merely to achieve a flat look.

## Completion check

Can users distinguish floating surfaces from static content?
Does interaction change depth in a coherent way when it should?
Are overlapping layers and focus indicators visible at every viewport?
