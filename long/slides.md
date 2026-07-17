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
