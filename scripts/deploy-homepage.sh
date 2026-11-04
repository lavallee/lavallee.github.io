#!/usr/bin/env bash
set -euo pipefail
: "${ARTOO_SITE_DIR:?Artoo must provide its firewall-cleared staging directory}"
: "${ARTOO_REPO_ROOT:?Artoo must provide the repository root}"
cd "$ARTOO_REPO_ROOT"
if [[ -n "$(git status --porcelain --untracked-files=no)" ]]; then
  echo "Commit and review source changes before deploying" >&2
  exit 1
fi
# The existing Pages origin serves main /, with Jekyll excluding research and
# pipeline files. Leave that configuration and legacy routes unchanged.
while IFS= read -r -d '' asset; do
  relative="${asset#"$ARTOO_SITE_DIR"/}"
  cmp "$asset" "$ARTOO_REPO_ROOT/$relative"
done < <(find "$ARTOO_SITE_DIR" -type f -print0)
git push origin HEAD:refs/heads/main
