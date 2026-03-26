---
name: xlsx-quick-read
description: >
  Read and inspect Excel (.xlsx) data using a bundled script that dumps cell
  contents as CSV. Use this skill whenever the user asks you to read, inspect,
  analyze, summarize, or extract data from an .xlsx file. This is faster and more reliable than writing
  one-off openpyxl/pandas scripts, especially for large files.
---

## What this does

`scripts/dump-xlsx.py` reads .xlsx files and outputs cell data as CSV to stdout.
It uses openpyxl in read-only + data-only mode, so it's fast, but drops all formatting and styling information. Formula values get precomputed.

## Usage

```sh
SKILL_DIR="$(dirname "<path_to_this_skill.md>")"

# List sheet names and their dimensions (columns x rows)
python "$SKILL_DIR/scripts/dump-xlsx.py" <file>

# Dump all cell data for a specific sheet as CSV
python "$SKILL_DIR/scripts/dump-xlsx.py" <file> --sheet=<name>

# Dump a specific range of cells
python "$SKILL_DIR/scripts/dump-xlsx.py" <file> --sheet=<name> --cols=A:C --rows=1:10

# Discontinuous ranges work too
python "$SKILL_DIR/scripts/dump-xlsx.py" <file> --sheet=<name> --cols=A,F,X:Z,BA:BD --rows=1:3,5:9
```

Typical workflow: Run without `--sheet` first to see what sheets exist and how
large they are, then target a specific sheet (and optionally a cell range). It may help to read the first few rows of a sheet first to understand its header layout.

## Dependencies

The script requires `openpyxl`. Prefer running with `uv` to avoid polluting the
user's environment:

```sh
if command -v uv &>/dev/null; then
  uv run --with=openpyxl "$SKILL_DIR/scripts/dump-xlsx.py" <file> [options]
else
  python -m pip install openpyxl
  python "$SKILL_DIR/scripts/dump-xlsx.py" <file> [options]
fi
```
