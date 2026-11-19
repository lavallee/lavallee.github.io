# lavallee.github.io

The source for [lavallee.github.io](https://lavallee.github.io/): Marc Lavallee's homepage, a reverse-chronological running log of releases from his open-source projects — what shipped, what grew, what got fixed, with links to the code, the release, and the docs.

The page is an **Artoo artifact** living in `homepage/`. Its content is `homepage/content.md`, rendered by `artoo build` into `homepage/site/` and published to the repository root (which GitHub Pages serves) by `artoo deploy`. The committed `index.html` and `lib/` at the root are generated output — edit `homepage/content.md`, never them.

## Editing the page

In place, in the browser, with Copycat:

```bash
artoo edit homepage            # builds, then serves the editor on 127.0.0.1:8916
```

Saves write `homepage/content.md` and rebuild automatically; nothing is committed or pushed. The toolbar's **Agent** panel runs the host's signed-in Codex against the page's source, read-only: ask it to tighten a section, check a link, or apply the open comments, and its proposed edits arrive as a draft you review change by change before anything is saved. The editor config that enables the agent is `homepage/production/copycat.json`, named by `[edit] config` in the manifest — artoo's generated config does not carry the agent block.

For editing from another machine on the network, share the editor through BB Connect:

```bash
bb connect expose 8916
artoo edit homepage --share-origin https://<machine-label>--8916.<base-domain>
```

Then open the share URL and edit there. `--share-origin` admits exactly one authenticated https origin; it is not a way to publish.

## Publishing

```bash
artoo build homepage     # render, verify, stamp `updated`
artoo deploy homepage    # stage the site, copy it to the Pages root, commit, push
```

`artoo deploy` runs `homepage/deploy.sh`, which copies the firewall-cleared staging tree to the repository root, prunes files the renderer no longer emits, commits, and pushes to `main`. GitHub Pages rebuilds within a couple of minutes.

## Adding a release

Prepend an entry to the top of its month section in `homepage/content.md` (create the month if needed): a bold-lead paragraph with the date, the project, the version linked to its release tag, a short honest summary of what grew and changed, and trailing Code/Docs links. Same-day patch releases of one project merge into a single entry with a version range. Update the project index only when a project first releases or its description changes.
