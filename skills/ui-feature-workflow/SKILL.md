---
name: ui-feature-workflow
description: Scope and design a new UI feature around the user's main task, from rough structure to a working slice. Use when creating a feature rather than auditing an existing screen.
---

# Feature-first UI workflow

## Outcome and inputs

Produce the smallest useful interaction that completes the requested user task.
Read the product brief, existing flows, brand, stack, and available data.
If no current interface exists, identify one concrete task before choosing the shell.
If one exists, preserve its navigation and design system unless the task changes them.

## Decision sequence

1. Write the task as a verb and object: “find a flight,” “pay an invoice.”
2. List data the user must see, enter, compare, and confirm.
3. Rank one primary action and any supporting or exceptional actions.
4. Sketch two or three arrangements at low fidelity for the task itself.
5. Test structure in grayscale; use spacing, weight, and contrast for hierarchy.
6. Choose a small working slice and implement its actual interaction.
7. Test real content and states, then refine structure and add visual character.
8. Derive shell/navigation from several real features where possible.

Do not promise controls or content that the requested implementation cannot support.
Do not design every optional future feature before the first usable version.
Keep the sketch disposable; a usable prototype exposes problems a static frame hides.

## Personality matrix

Choose a direction from audience and brand evidence, not a preset category.
The table offers candidate combinations, not a rule that products fit one box.

| Intent | Type tendency | Radius tendency | Color tendency | Copy tendency |
| --- | --- | --- | --- | --- |
| Friendly | Open humanist sans | Rounded | Warm or lively | Conversational |
| Formal | Neutral sans or restrained serif | Subtle/square | Controlled | Precise |
| Technical | Legible sans, selective mono | Restrained | Clear functional accents | Direct |
| Editorial | Strong display/body pairing | Contextual | Restrained palette | Curated |

Choose one coherent direction and use it across typography, color, corners,
and wording. Mixing styles is acceptable when it serves explicit hierarchy.
Never sacrifice legibility or recognizable actions for personality.

## Edge-case pass

Use realistic, unattractive data before judging the design.
Try a long name, a long unbroken token, missing image, empty collection,
one-item collection, and a dense collection relevant to the feature.
Decide whether each field wraps, clips, truncates with access to full text,
scrolls, or expands. Preserve information required to complete the task.
Do not assume every list needs pagination; choose it when density or scale warrants.

```css
/* A bounded first slice; adapt the width to actual content. */
.feature-form { width: min(100%, 32rem); }
.feature-form__fields { display: grid; gap: 1.5rem; }
.feature-form__label-control { display: grid; gap: .5rem; }
```

```html
<!-- Tailwind illustration: structure before decoration. -->
<form class="w-full max-w-lg space-y-6">
  <div class="space-y-2">
    <label for="destination" class="block font-medium">Destination</label>
    <input id="destination" name="destination" class="w-full rounded-md border p-3" />
  </div>
  <button class="rounded-md px-4 py-2 font-semibold">Search flights</button>
</form>
```

## Do / avoid

Do implement the actual task and main state before polishing decorative details.
Do use the established product vocabulary and available components.
Do identify empty, loading, error, and success states that the feature needs.
Avoid beginning with a navbar, sidebar, or visual trend without feature evidence.
Avoid treating grayscale as a required final style or waiting for a “perfect” sketch.
Avoid fixed personality stereotypes when user research or brand says otherwise.

## Completion check

Can a user complete the primary task with real content and keyboard access?
Are failure and first-use paths understandable?
Does the chosen personality support, rather than obscure, the task?
At narrow and wide widths, does content remain understandable without overflow?
