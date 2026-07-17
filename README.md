# Slide deck template

A reusable [Slidev](https://sli.dev) template using the `frankfurt` academic theme.
Multiple decks live side by side; each `<folder>/slides.md` is a separate talk, so a
project can keep a short and a long version (and any others) in one repo.

- `short/` — ~15-minute template → `patrickchang.net/limitpricing-slides/short/`
- `long/` — ~45-minute template → `patrickchang.net/limitpricing-slides/long/`

> This is a content-free template. Copy a folder, replace the placeholder slides
> with your talk, and drop the paper's figures into the shared `figures/` folder.

All decks share one `figures/` folder at the repo root, referenced as
`../figures/<name>.png`. Pull a figure once and any deck can use it; a figure that
only appears in the long version simply goes unused by the short one.

## Frankfurt conventions (what the template uses)

The [`frankfurt`](https://github.com/xxxeyu/slidev-theme-frankfurt) theme mirrors the
Beamer "Frankfurt" look. The template follows its conventions:

- **`# Title`** (h1) on a content slide renders the full-width **banner**. Use `#` for
  every slide title; `##`/`###` are for subheads. On the cover it becomes a rounded badge.
- **`section: Name`** in a slide's frontmatter starts a section — it populates the
  **top navigation bar** with section names and progress dots. Group slides into a
  handful of sections.
- **Footer bar** (author · title · page · date) comes from the `author`, `title`, and
  `date` fields in the cover frontmatter, shown because `infoLine: true`.
- **`<v-clicks>`** around a list reveals bullets one at a time; **`<v-click>`** wraps a
  single block. Leave blank lines inside the tags so the Markdown still renders.
- **`<Item title="...">…</Item>`** is frankfurt's boxed callout (indigo header, light
  body) — good for a result, definition, or highlighted case.
- **Figures**: reference the shared folder as `../figures/name.png`.
- **Schematic diagrams**: prefer **inline `<svg>`** over a raster image — vector content
  scales with the slide and stays crisp at any zoom, and you can `v-click` its parts.
  The "A schematic diagram" slide is a reusable starting point. Keep raster (`.png`) for
  photos and plots; export those at high DPI.

## Edit / preview
```
npm install
npm run dev:short      # live preview of the short deck at localhost:3030
npm run dev:long
```

## Pull figures from a paper
`pull-figures.sh` converts paper PDFs (from `../Paper/…` once Overleaf is synced, or
`../Code/Figures/`) into the shared `figures/` folder as web-ready PNGs:
```
./pull-figures.sh MyFigure.pdf AnotherFigure.pdf
```
Then reference them in any `slides.md`: `<img src="../figures/myfigure.png" />`.

## Publish
`git push` — GitHub Actions builds every `slides.md` and deploys. No local build needed.
Add a new deck = new folder with a `slides.md`, then push.
