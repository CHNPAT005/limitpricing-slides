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

Open with the one question the talk answers.

<v-clicks>

- Set up the **context** in a single line
- State the **gap** or the puzzle
- Preview the **answer**, so nobody has to wait for it

</v-clicks>

<v-click>

**This talk.** One sentence on what you do and what you find.

</v-click>

---
section: Setup
---

# Setup

Describe the object of study in plain terms first, notation second.

<v-clicks>

- **Ingredient A** — what it is, why it matters
- **Ingredient B** — the second moving part
- **Assumption** — the one simplification worth flagging

</v-clicks>

---

# Two cases

Compare a baseline against the case that drives the result.

<Item title="Case 1 — baseline">
Nothing surprising happens here; this is the reference point.
</Item>

<Item title="Case 2 — the interesting one">
Where the mechanism bites.
</Item>

---
section: Result
layout: two-cols-header
---

# The main result

::left::

State the central finding in words.

<v-clicks>

- What happens in **Case 1**
- What happens in **Case 2**
- Why the contrast is the point

</v-clicks>

<v-click>

$$ y = f(x;\, \theta) $$

</v-click>

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
section: Takeaway
---

# Takeaways

<v-clicks>

- The headline result, restated for the listener who remembers one slide
- The broader **implication** for theory, practice, or policy
- What breaks if you ignore it

</v-clicks>

<v-click>

**Takeaway.** One crisp sentence they can repeat to a colleague afterwards.

</v-click>

---
layout: center
class: text-center
---

# Thank you

[patrickchang.net](https://patrickchang.net)

<br>

Author One · Author Two · Author Three
