# lavallee.github.io

The source for [lavallee.github.io](https://lavallee.github.io/): a reverse-chronological, running log of releases from Marc LaVallee's open-source projects — what shipped, what grew, what got fixed, with links to the code, the release, and the docs.

The page is intentionally dependency-free static HTML and CSS (system fonts, no build step, no JS). To preview it locally:

```bash
python3 -m http.server 4173
```

Then open <http://127.0.0.1:4173/>.

## Updating the log

When a project ships a release, add a new `<article class="entry">` at the top of the relevant month section in `index.html` (create a new month section if needed):

- date, project name, version tag,
- a short, honest summary in your own words of what grew and changed,
- links to the release tag, the repo, and the docs site where one exists.

Same-day patch releases of the same project can be merged into one entry with a version range (see the `v0.4.1–v0.4.3` gipper entry for the pattern). Update the project index only when a project releases for the first time or a repo's description changes.
