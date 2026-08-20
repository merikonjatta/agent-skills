---
name: cleanup
description: >-
  Tidy up code, update docs, and leave the codebase ready for the next session.
---

# Task

Clean up the codebase: remove unused code, temporary files, scratch work, and update documentation.

- If the user specifies a scope, only clean up in areas related to that scope.
- Scan the scoped files carefully against the criteria below.
- Make fixes directly and autonomously. Only ask the user before major changes.
- Be creative. Take initiative. You are the expert, and you know what you're doing.

# Criteria

## Code hygiene

Fix or remove:
- Debug  (e.g. `console.log`, `debugger`, etc.)
- Unused code
- Temporary code, scripts, screenshots, logs, etc
- Outdated tests, comments, and docs

## Code complexity

Find code that is more complex than it needs to be and simplify it.
- If 50 lines are written where 20 lines will do, refactor it
- If 5 variables are used where 2 will do, refactor it
- Abstractions that add to code reader load than reduce it
- In HTML/CSS in particular, remove unnecessary nesting, redundant selectors, and unused styles.
