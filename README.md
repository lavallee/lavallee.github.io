# lavallee.github.io

The source for [lavallee.github.io](https://lavallee.github.io/): Marc LaVallee’s public portfolio of open-source tools and working experiments in AI, journalism, research, civic data, and creative systems.

The homepage is intentionally dependency-free static HTML and CSS. To preview it locally:

```bash
python3 -m http.server 4173
```

Then open <http://127.0.0.1:4173/>.

Design work follows the adjacent [DES](https://github.com/lavallee/des) marketing-mode contract. The implementation plan and audit evidence live under `docs/` and `artifacts/design-receipts/` in the working tree; Jekyll excludes both from the deployed site.
