#!/usr/bin/env bash
# Publish the rendered release log to the Pages root (the repository root).
# Run by `artoo deploy`: Artoo stages the firewall-cleared site into a
# temporary tree and hands it to this script; nothing outside site/ reaches it.
set -euo pipefail
: "${ARTOO_SITE_DIR:?Artoo must provide its firewall-cleared staging directory}"
: "${ARTOO_REPO_ROOT:?Artoo must provide the repository root}"

cd "$ARTOO_REPO_ROOT"

# The staged tree is the whole publishable site. Copy it to the root, then
# prune what the renderer owns but no longer emits, so the published root is
# always exactly the latest render.
while IFS= read -r -d '' asset; do
  relative="${asset#"$ARTOO_SITE_DIR"/}"
  mkdir -p "$(dirname "$relative")"
  cp "$asset" "$relative"
done < <(find "$ARTOO_SITE_DIR" -type f -print0)

for dir in lib; do
  [ -d "$ARTOO_SITE_DIR/$dir" ] || rm -rf "$dir"
done
for file in styles.css favicon.svg; do
  [ -f "$ARTOO_SITE_DIR/$file" ] || rm -f "$file"
done

git add -A
if git diff --cached --quiet; then
  echo "Nothing to publish: the Pages root already matches the render."
  exit 0
fi
git commit -m "Publish the release log rendered from homepage/"
git push origin main
echo "Published to main; GitHub Pages will rebuild shortly."
