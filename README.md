# Commons Conservancy

## Deployment

1. Install Hugo, at least v0.123.0. Static binaries are available [here](https://github.com/gohugoio/hugo/releases), if your Linux distribution does not include the required version.
2. Run `hugo` in `./commons-conservancy`.  A HTML tree is built and placed in `public/`.
3. Install a web server of choice and configure it to serve this directory

The example Dockerfile in this repository can be used as a reference.

The web server should be configured to redirect requests from the old `https://dracc.commonsconservancy.org/`. An example for NGINX:

```
server {
    server_name dracc.commonsconservancy.org;
    return 308 https://commonsconservancy.org/dracc$request_uri;
}
```

## Development server

Run `hugo server`

## Adding content

```
hugo new content programmes/routinator.md
hugo new content dracc/0123.md
```

## Drafts

Add `draft=true` to a page to only show it in a development server with drafts enabled: `hugo server -D`.

## "Breaking" changes

* Each program now has its own page `/programmes/<programme>`, which can be linked to instead of only the main list page `/programmes`. The list page now displays less information so it is no longer very long.
* DRACC is now integrated with the main site, instead of being generated seperately.

## DRACC

DRACC documents can be marked as deprecated by adding a `superseded_by = '0000'` parameter, where '0000' is the number of the superseding DRACC document.
