# Lua pairs iterator order inconsistency

This example demonstrates an uncommon error in Lua related to the order of iteration using `pairs`. When modifying a table during iteration, the order of elements visited by `pairs` is not guaranteed to remain consistent, which might lead to unexpected results or even infinite loops.

## Steps to reproduce:
1. Run `bug.lua`.
2. Observe the order of printed values may change unexpectedly if the table is modified during iteration (currently not shown explicitly in this simplified example but can happen with more complex nested tables or modifications within the loop).