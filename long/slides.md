---
theme: frankfurt
title: Presentation Title
titleTemplate: '%s'
author: Author One, Author Two
date: '2026'
colorSchema: light
layout: cover
class: text-center
fonts:
  local: Montserrat, Roboto Slab, Roboto Mono
themeConfig:
  paginationX: disabled
  paginationY: disabled
  paginationPagesDisabled: [1]
infoLine: true
mdc: true
transition: none
drawings:
  enabled: false
---

# Presentation Title

<br>

### Author One · Author Two · Author Three

#### University of Oxford

<br>

#### Seminar / Conference Name, 2026

<br>

#### [patrickchang.net](https://patrickchang.net)

---
section: Motivation
---

# Motivation

Open with the question the talk answers, in language a tired audience can follow.

<v-clicks>

- Give the **context**, then the **gap**
- Say why the question is worth 45 minutes, and for whom
- Preview the **answer** up front

</v-clicks>

<v-click>

> Frame the puzzle as a single quotable line the room can hold onto.

</v-click>

---

# What we do

<v-clicks>

- Build a **model / dataset / experiment** for the problem
- Establish the **benchmarks** you compare against
- Introduce the **method** that does the work
- Compare the **outcome** to the benchmarks

</v-clicks>

<v-click>

<Item title="Main finding">
State it in one sentence, before any detail.
</Item>

</v-click>

---
section: Setup
---

# Setup

Describe the object of study in plain terms first, notation second.

<v-clicks>

- **Ingredient A** — what it is and the role it plays
- **Ingredient B** — the second moving part
- **Actors / agents / units** — who or what is making choices

</v-clicks>

---

# Two cases

<Item title="Case 1 — baseline">
The reference case, where nothing surprising happens.
</Item>

<Item title="Case 2 — the driver">
The linked / restricted / treated case that produces the result.
</Item>

---
section: Benchmarks
---

# Benchmarks

**Case 1.** Describe the reference outcome and why it is the natural comparison.

<v-click>

**Case 2.** Introduce the key quantity

$$ y^{\star} = (1 - \lambda)\, J $$

and say in words what it represents and why it is the number to watch.

</v-click>

<v-click>

> A one-line statement of what standard analysis predicts here.

</v-click>

---
section: Mechanism
layout: two-cols-header
---

# The core mechanism

::left::

Explain the mechanism in words. Keep each line short enough to read aloud.

<v-clicks>

- Step one of the intuition
- Step two
- The twist: what does **not** behave as the benchmark says it should

</v-clicks>

::right::

<img src="../figures/example.png" class="mx-auto rounded shadow" style="height: 260px" />

---

# A schematic diagram

Build schematics as **inline SVG**, not images: they scale with the slide, so they
stay razor-sharp at any zoom. Reveal parts with `v-click`, just like text.

<div class="flex justify-center mt-6">
<svg viewBox="0 0 640 236" style="width: 600px; max-width: 100%; height: auto; font-family: Montserrat, ui-sans-serif, sans-serif;">
  <defs>
    <marker id="arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M0,0 L10,5 L0,10 z" fill="#334155" />
    </marker>
  </defs>
  <!-- inputs -->
  <rect x="16" y="34" width="150" height="52" rx="8" fill="#eef2f6" stroke="#334155" stroke-width="1.5"/>
  <text x="91" y="66" text-anchor="middle" font-size="13" fill="#1e293b">Input A</text>
  <rect x="16" y="150" width="150" height="52" rx="8" fill="#eef2f6" stroke="#334155" stroke-width="1.5"/>
  <text x="91" y="182" text-anchor="middle" font-size="13" fill="#1e293b">Input B</text>
  <!-- model -->
  <rect x="255" y="92" width="150" height="52" rx="8" fill="#3333B3"/>
  <text x="330" y="124" text-anchor="middle" font-size="13" fill="#ffffff">Model</text>
  <!-- arrows in -->
  <path d="M166,60 C210,60 210,114 253,116" fill="none" stroke="#334155" stroke-width="1.5" marker-end="url(#arrow)"/>
  <path d="M166,176 C210,176 210,122 253,120" fill="none" stroke="#334155" stroke-width="1.5" marker-end="url(#arrow)"/>
  <!-- outcome, revealed on click -->
  <g v-click>
    <path d="M405,118 L470,118" fill="none" stroke="#334155" stroke-width="1.5" marker-end="url(#arrow)"/>
    <rect x="474" y="92" width="150" height="52" rx="8" fill="#fff7ed" stroke="#c2410c" stroke-width="1.5"/>
    <text x="549" y="114" text-anchor="middle" font-size="13" fill="#9a3412">Outcome</text>
    <text x="549" y="134" text-anchor="middle" font-size="10" fill="#9a3412">the result</text>
  </g>
</svg>
</div>

---

# Method

State the tool precisely, once:

$$ \hat{\theta}_{t+1} = (1-\alpha)\,\hat{\theta}_t + \alpha\, g_t $$

<v-clicks>

- What is being estimated / learned / optimised
- What is held fixed
- The one calibration choice worth defending

</v-clicks>

---
section: Results
---

# Results

<v-clicks>

- **Case 1** → the outcome matches the benchmark
- **Case 2** → the outcome departs from it, robustly

</v-clicks>

<v-click>

Whenever the structure hands an advantage to the mechanism, it gets exploited — and the result is the same across specifications.

</v-click>

---

# Robustness

Show the result is not an artefact.

<v-clicks>

- Vary the **key assumption** → outcome persists
- Swap a component for a simpler one → outcome **changes**

</v-clicks>

<v-click>

> The contrast between "persists" and "breaks" is what identifies the cause.

</v-click>

---
section: Takeaways
---

# Takeaways

<v-clicks>

- The headline result, restated for the person who arrived late
- The broader **implication** for theory, practice, or policy
- What you would get wrong if you ignored it

</v-clicks>

<v-click>

One closing sentence on what the finding means for how we should think about the problem.

</v-click>

---
layout: center
class: text-center
---

# Thank you

[patrickchang.net](https://patrickchang.net)

<br>

Author One · Author Two · Author Three
