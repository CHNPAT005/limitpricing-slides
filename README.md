# Slide deck template

A reusable [Slidev](https://sli.dev) template using the `frankfurt` academic theme.
Multiple decks live side by side; each `<folder>/slides.md` is a separate talk, so a
project can keep a short and a long version (and any others) in one repo.

- `short/` — ~15-minute template → `patrickchang.net/limitpricing-slides/short/`
- `long/` — ~45-minute template → `patrickchang.net/limitpricing-slides/long/`

> This is a content-free template. Copy a folder, replace the placeholder slides
> with your talk, and drop the paper's figures into that folder's `figures/`.

## Edit / preview
```
npm install
npm run dev:short      # live preview of the short deck at localhost:3030
npm run dev:long
```

## Pull figures from a paper
`pull-figures.sh` converts paper PDFs (from `../Paper/…` once Overleaf is synced, or
`../Code/Figures/`) into a deck's `figures/` as web-ready PNGs:
```
./pull-figures.sh short MyFigure.pdf AnotherFigure.pdf
```
Then reference them in `slides.md`: `<img src="./figures/myfigure.png" />`.

## Publish
`git push` — GitHub Actions builds every `slides.md` and deploys. No local build needed.
Add a new deck = new folder with a `slides.md`, then push.
