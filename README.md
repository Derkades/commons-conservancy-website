# Commons Conservancy

## Building

Install Hugo, at least v0.123.0. Static binaries are available [here](https://github.com/gohugoio/hugo/releases).

Run `hugo` in the `commons-conservancy` directory. A HTML tree is built and placed in `public/`

## Development server

Run `hugo server`

## Adding content

```
hugo new content programmes/routinator.md
hugo new content dracc/0123.md
```

## Drafts

Add `draft=true` to a page to only show it in a development server with drafts enabled: `hugo server -D`.

## Changes compared to previous website

* Each program now has its own page `/programmes/<programme>`, which can be linked to instead of only the main list page `/programmes`. The list page now displays less information so it is no longer very long.
