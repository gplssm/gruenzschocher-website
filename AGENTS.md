# AGENTS.md

## Project

Hugo static website for "Grünzschocher", a German housing cooperative (Wohnprojekt).
Content language is German. Built with the **LoveIt** theme, included as a git submodule.

## Setup

The theme is a submodule and must be initialized before building:

```bash
git submodule update --init --recursive
```

## Local dev / build

Run the Hugo dev server via Docker (v0.148.2):

```bash
docker run --rm -v $PWD:/project -u $(id -u):$(id -g) -p 1313:1313 \
  ghcr.io/gohugoio/hugo:v0.148.2 serve --bind 0.0.0.0
```

## CI/CD

Deployment is handled by GitHub Actions (Hugo 0.148.1):

- Push to `main` → build + rsync deploy to production.
- PRs opened/reopened/synced → build preview at `https://staging.gruenzschocher.de/<PR#>/`, with a bot comment linking to it.

## Content conventions

- All content is written in German. Pages live in `content/*.md`, posts in `content/posts/`.
- Use LoveIt front matter fields (`title`, `date`, `lastmod`, `draft`, `author`, `featuredImage`, `images`, etc.).
- Use the custom shortcodes (`callout`, `imageandtext`, `impressum`, `svg`) and partials (`footer`, `header`).
- Relative links must be absolute, since the staging environment is served under a `/PR#/` path.

## Gotchas

- The build output is saved under `public/`, and `resources/` is a generated cache — do not edit or commit changes in either.
- Initialize the submodule before building.