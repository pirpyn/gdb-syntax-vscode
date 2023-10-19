---
name: Bug report
about: Report a bug with the rendering of a GDB command
title: "[BUG] "
labels: bug
assignees: ''

---

**Describe the bug**
A clear and concise description of what the bug is. 
The gdb command must be provided.
Providing a screenshot is highly recommended and Github allows to paste image directly in the issue.
> The line continuation character \ breaks highlighting.
> The two following command renders the arguments differently
> set args foo bar
> set args \
>  foo bar

**Expected behavior**
A clear and concise description of what you expected to happen.
Providing a link to the [GDB documentation](https://sourceware.org/gdb/current/onlinedocs/gdb.html/index.html) is valuable but not mandatory.

**Optional (please complete the following information if necessary):**
 - GDB-syntax-vscode version: [e.g. 0.5.3]
 - GDB version [e.g 14]
