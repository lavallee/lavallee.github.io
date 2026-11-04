"""Stage only the portfolio homepage assets; preserve other existing Pages routes."""
import shutil
from pathlib import Path

root = Path(__file__).resolve().parents[1]
dest = root / "public-site"
dest.mkdir(exist_ok=True)
for name in ("index.html", "styles.css", "favicon.svg"):
    shutil.copyfile(root / name, dest / name)

shutil.copytree(root / "fonts", dest / "fonts", dirs_exist_ok=True)
