---
name: todo-dd
description: To-Do Driven Development - autonomously implement features based on a list of tasks.
---

# Your job

The user has given you a todo list file (if not, ask for it).

Your job is to orchestrate subagents to autonomously implement all tasks in the list.

# Workflow

Give the task list a cursory scan. Do NOT go into detailed analysis of each task.

You may do the tasks in any order that makes it easiest.

You may bundle multiple tasks into a single commit if it makes sense to do so.

- For each bundle:
  - Boot an Implementation subagent to:
    - Research the task and understand it.
    - If details need to be discussed with the user:
      - Abort (skip) the task.
    - else:
      - Implement the task.
    - Report back to the main agent.
  - If the task was implemented:
    - Boot a review subagent to:
      - Review the implementation. Use the /review and /text-police skill if available.
      - Fix any issues found.
    - Update the todo file.
    - Commit to git.
- After all tasks are done or skipped, report back to the user.

# Sitrep

Each subagent should, every so often, write a brief summary of its activities to a sitrep log file. 
Typically this would be named `docs/sitrep_<task_name>.txt` but determine the appropriate path per project.

The orchestrator agent should monitor the sitrep file every 5 minutes to make sure
the subagent is not stuck. If it is, abort it, stash any changes already made, and
write a note about in the todo file. Then move on to the next task.

Make sure to kill the corresponding monitoring task when a subagent finishes.

The sitrep file must be deleted before committing.

# Rules

- The user is typically away or busy.
  - Reduce interruptions as much as possible.
  - If you need clarification before continuing, skip it, note it, and move on.
- Avoid permission requests:
  - Run commands in their simplest possible forms, one by one.
  - No compound commands (multiple commands joined with `&&`, `;`)
  - No `cd` unless absolutely necessary
  - No shell redirects, pipes, substitutions unless absolutely necessary
- Do not edit or remove existing task descriptions in the todo file.
  - You may change checkmark status, add notes, or add new tasks.
