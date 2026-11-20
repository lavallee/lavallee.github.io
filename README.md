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

## Release-day routine

Run this for each public open-source release from a project listed here. During release preparation,
draft a short entry from the changelog. After GitHub publishes the release, complete the log update
as part of shipping.

1. Verify the public release URL, version and UTC publication date. Read its notes and check the
   public project and docs links. Use the published release as the source for the entry.
2. Start from current `main` in a clean checkout of this repository. Search `homepage/content.md`
   for the exact release URL. If it is already present, verify that it made it to the live page.
3. Add the entry to `homepage/content.md` under the release's month and year, newest first. Use a
   bold lead with the date, project and version linked to the release. Summarize the change in a
   few sentences and finish with Code and Docs links where available. Same-day patch releases of
   one project can share a version range with links to the applicable releases. Update the project
   index when a project first releases or its description changes.
4. From the repository root, run `artoo build homepage` and check the rendered entry and links.
   Review the working tree before running `artoo deploy homepage --skip-build`. The deploy script
   stages, commits and pushes the changes in this checkout.
5. Wait for GitHub Pages, then open [the live release log](https://lavallee.github.io/) and verify
   that the entry appears with the correct release and docs links. If publication is blocked, keep
   the draft in the source checkout and record the blocker in the release handoff.

For a published release, `gh release view TAG -R OWNER/REPO --json url,tagName,publishedAt,isDraft,body`
gives the source fields. Project-specific docs are published through the project's own release process.
