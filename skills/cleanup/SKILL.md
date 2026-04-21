---
name: cleanup
description: >-
  Tidy up code, update docs, and leave the codebase ready for the next session.
  Activate when the user asks you to do a cleanup.
---

# Task

Review code and documentation changed in this session (or the scope the user
specifies) and clean it up. Work autonomously in passes until no issues remain.

# Scope

Determine what to review:
1. If the user specifies a scope (e.g. "staged changes", "last 3 commits"), use that.
2. Otherwise, scope is all files touched during this session.

# Process

1. Summarize the session's conversation, thinking and edit history if any (use a subagent).
2. For each pass, use a subagent to:
  - Scan the scoped files against the criteria below.
  - Make fixes directly and autonomously. Only ask the user before major changes.
3. Repeat step 2 many times until nothing is left to fix.

ALWAYS repeat step 2. You MUST assign to the next pass the responsibility of making sure you are done.

# Criteria

## Code hygiene

Fix or remove:
- Debug residues (e.g. `console.log`, `debugger`, etc.)
- Code that you introduced, but ended up not using
- Code that your changes have made unused
- Temporary code and files
- Tests that were affected

## Bugs

Fix:
- Logic flaws
- Edge case failures
- Unhandled exceptions and execution paths
- Race conditions
- Resource leaks

## Code smell

Fix:
- Structurally unsound code
- Suspicious behavior
- Maintainability issues
- Reliability issues
- Technical debt

## Code complexity

Find code that is more complex than it needs to be and simplify it.
- If 50 lines are written where 20 lines will do, refactor it
- If 5 variables are used where 2 will do, refactor it
- Abstractions that add to code reader load than reduce it

## Comments

Remove or rewrite:
- Comments that are no longer accurate
- Resolved TODO/FIXME
- Comments that describe the changes themselves, or only make sense in light of the changes.
  For example, say you removed a workaround for a library bug that's been fixed in a new version,
  and you added the comment: `// Removed workaround: no longer needed`.
  That's a bad comment that belongs in a commit message, and should be removed from code.

## Documentation

Seek out relevant documentation (typically README.md and docs/*.md).

Add to or update documentation appropriately:
- Notable design decisions, schema changes and new integrations
- External knowledge needed to understand how code works
- Impact on deployment or production environment
- Incomplete work to address in a future session

If a plan file was created within the project directory, update it to reflect what was actually implemented.


# Tips

- If you have access to conversation and thinking history of this session, use a subagent to
create a brief summary of it and use that to guide yourself.
- Do not afraid to make radical changes.
- But but ask the user first before making major changes.
- Be creative. Take initiative. You are the expert, and you know what you're doing.
