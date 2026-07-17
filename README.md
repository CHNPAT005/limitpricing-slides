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
