# Agent Skills

## Included skills

### xlsx-quick-read

```sh
npx skills add https://github.com/merikonjatta/agent-skills --skill xlsx-quick-read
```

Read Excel (.xlsx) data using a bundled script that dumps cell
contents as CSV. Script supports partial range output for fast inspection, but drops all formatting/styling information. Formula values get precomputed.


### cleanup

```sh
npx skills add https://github.com/merikonjatta/agent-skills --skill cleanup
```

After a coding session, tidy up code, update docs and memory files, and leave the codebase ready for the next session.
