---
name: ui-image-integration
description: Integrate photos, screenshots, icons, and user-uploaded images into UI while preserving legibility, intended detail, and stable layout.
---

# Image integration

## Inspect actual media

Use a representative real asset before approving composition.
Check resolution, subject placement, aspect ratio, licensing, and whether
the image can crop safely across the intended viewport range.
Do not assume a polished placeholder will be replaceable without redesign.

## Text on photography: four treatments

First choose a crop that leaves a stable text region. Then test one or more:

1. Directional gradient scrim where the text occupies one image region.
2. Full-image overlay or contrast reduction for highly variable brightness.
3. Brand-color wash after moderating contrast and saturation.
4. Soft, low-offset text shadow when the image should remain more visible.

The treatment must create sufficient contrast at every text pixel across
relevant crops, not merely over a favorable part of one preview.
An overlay can harm image fidelity; compare it with a more suitable crop.

```css
.hero { position: relative; background: center / cover url("hero.jpg"); }
.hero::before {
  content: ""; position: absolute; inset: 0;
  background: linear-gradient(90deg, #081626d9, #08162629 70%);
}
.hero__content { position: relative; color: white; max-width: 36rem; }
```

```html
<div class="relative overflow-hidden">
  <img src="/hero.jpg" alt="" class="h-full w-full object-cover" />
  <div class="absolute inset-0 bg-gradient-to-r from-slate-950/80 to-transparent"></div>
  <h1 class="absolute left-8 top-8 max-w-md text-white">...</h1>
</div>
```

Use a meaningful `alt` when the image communicates content; decorative
background media may use an empty alternative. Check text contrast with
actual browser rendering and the applicable accessibility target.

## Intended size

Small icons optimized around 16–24 px may look chunky when enlarged.
Keep the glyph near its designed size inside a larger colored shape, or
choose artwork drawn for display size. Vector format alone does not add
missing detail.
An entire app screenshot reduced to a tiny card makes its text unreadable.
Crop a focal region, capture a narrower layout, show it larger, or create
an explicitly simplified illustration. Draw favicons for the final tiny size.

```html
<span class="grid h-12 w-12 place-items-center rounded-xl bg-blue-50">
  <svg class="h-5 w-5" aria-hidden="true">...</svg>
</span>
```

## User-uploaded content

Choose `object-fit: cover` for photos when cropping is acceptable.
Use `contain` for logos, diagrams, or product images whose full shape
must remain visible. Keep a predictable container to prevent layout jumps.
Allow repositioning or alternate crops when faces or essential details
would otherwise be cut off.

An inset ring can separate a pale image from a pale surface; apply it when
bleed is visible, not as an immutable rule on every asset.

```html
<img src="/avatar.jpg" alt="Maya" class="h-10 w-10 rounded-full object-cover ring-1 ring-inset ring-black/5" />
<img src="/logo.png" alt="Acme" class="h-12 w-24 object-contain" />
```

Provide a suitable missing-media state and reserve dimensions during load.
Check dark/light surfaces and user images with white, dark, transparent,
busy, and off-center content.

## Do / avoid

Do verify responsive crop and resolution with actual assets.
Do preserve legibility and essential subject matter.
Do use overlays, rings, and shadows only where their problem exists.
Avoid blindly upscaling small icons or shrinking detailed screenshots.
Avoid cropping logos or diagrams as though they were photographs.

## Completion check

Is text readable over every relevant crop?
Do image containers remain stable while loading or failing?
Are full subjects visible when their detail is necessary to the task?
