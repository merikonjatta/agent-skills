#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="skills"
TAG="${1:-$(date +%Y.%m.%d)}"

command -v gh >/dev/null 2>&1 || { echo "Error: gh CLI is required. Install with: brew install gh"; exit 1; }
command -v zip >/dev/null 2>&1 || { echo "Error: zip is required."; exit 1; }

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

assets=()
for skill_dir in "$SKILLS_DIR"/*/; do
    skill_name=$(basename "$skill_dir")
    zipfile="$tmpdir/${skill_name}.zip"
    echo "Zipping $skill_name..."
    (cd "$SKILLS_DIR" && zip -r "$zipfile" "$skill_name")
    assets+=("$zipfile")
done

if [ ${#assets[@]} -eq 0 ]; then
    echo "No skills found in $SKILLS_DIR/"
    exit 1
fi

echo ""
echo "Creating release $TAG with ${#assets[@]} asset(s)..."
gh release create "$TAG" "${assets[@]}" --title "$TAG" --generate-notes

echo "Done: https://github.com/merikonjatta/agent-skills/releases/tag/$TAG"
