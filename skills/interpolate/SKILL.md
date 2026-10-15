---
name: interpolate
description: Interpolate between two concepts
---

Given two inputs A and B, produce a list of 10 items, beginning with A and ending with B,
where each consecutive item is semantically a little bit closer to B and farther from A.

If A and B are the same type of item, make sure that your intermediate items are all of that same type.
For example, if A and B are both persons, your list must be composed entirely of persons.

Make sure that the resulting list reads as a smooth transition from A to B, with no jumps or reversals.
