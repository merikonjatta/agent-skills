---
name: reflection
description: After a coding session, reflect upon what you did. Tidy up code, update docs and memory files, and leave the codebase ready for the next session.
---

# Post-Session Reflection

Review the conversation history and the current state of the codebase. Identify everything that needs attention from the sections below, present a summary to the user, and ask for permission before making changes.

## 1. Code Hygiene

Check for artifacts that should not be committed:
- Debugging statements (`console.log`, `print`, `debugger`, etc.)
- Commented-out code that was part of experimentation
- Temporary files created during the session
- Code that is unused or redundant after the session's changes
- Unresolved TODO/FIXME/HACK comments you introduced

Check git status for uncommitted or unstaged changes and flag them.

## 2. Documentation Freshness

Did this session change behavior described in existing docs (README.md, DESIGN.md, API docs, inline doc comments, etc.)? Update them to match.

Did any of the following come up during this session?
- Notable design decisions, including schema changes and new integrations
- Code logic that requires previous/external knowledge to make sense of
- Impact on deployment or production environment
- Incomplete work that needs to be finished in a future session

If so, document them in relevant files. Ask the user to specify where to put information if you're not sure.

## 3. Documentation Discoverability

Was there useful information that was already documented but was not found during the preparation phase of this session?

If so, the likely cause is that your memory files don't reference it. Add a pointer so future sessions discover it earlier.

Was missing documentation a **significant** source of wasted time or tokens during this session? If so, create the missing docs now.

## 4. Plan File Cleanup

If you created a plan file prior to implementation, update it to reflect what was actually implemented (not what was originally planned).

## 5. What went well and what didn't

Reflect on the session as a whole. What went well? What could have gone better? How can we improve the process for future sessions? Be creative, think laterally. and don't be afraid to make bold suggestions.
