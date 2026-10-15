---
name: cleanup
description: >-
  Tidy up code, update docs, and leave the codebase ready for the next session.
---

# Cleanup

## Review & fix

If you haven't run a code review on your session changes yet, do so now.
Fix all the issues autonomously. If a fix would impact other parts of code
or the issue was preexisting, notify the user before fixing.

## Code hygiene

- Remove code that our changes made unused
- Remove debug code (e.g. `console.log`, `debugger`, etc.)
- Remove temporary code, scripts, screenshots, logs, etc
- Fix or remove outdated tests

## Code polish and tree shaking

Some aspects of code may now be inappropriate as a result of recent changes.
Reorganize them.

- Abstractions that are now only used once
- Variable and module namings that are no longer accurate
- Conditions that are no longer reachable
- Utility functions that are crammed into inappropriate files
- Files that are now too long
- HTML: Nesting elements that are now near-empty
- CSS: Unused or overly complex selectors. Overrides that no longer override anything

## Comments and documents

Update relevant comments and documents.

Review and edit all relevant text using the `writing-for-code` skill.

## Suggest refactorings and reorganizations

Suggest code architecture and organization that better fits the current code. Things like:
- Splitting (or combining) existing modules
- Introducing (or removing) an abstraction layer
- Alternative hierarchies, axes of separation, and dependency graphs
- Alternative design patterns
- Introducing (or removing) external libraries

Be creative. Think outside the box. You are the expert, and you know what you're doing.
(Do not make these changes directly: always ask the user to decide.)
