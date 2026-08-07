# Agent Skills

## Included skills

### imagine

```sh
npx skills add https://github.com/merikonjatta/agent-skills --skill imagine
```

Imagine and evaluate an implementation or refactoring proposal.

(For me, this works much better than Plan Mode.)

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


### bugsnag-data-access

```sh
npx skills add https://github.com/merikonjatta/agent-skills --skill bugsnag-data-access
```

Retrieve error info from Bugsnag's data access API.
Set your API key in `BUGSNAG_PERSONAL_AUTH_TOKEN` and project id in `BUGSNAG_PROJECT_ID` (optional).
