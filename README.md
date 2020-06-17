# gdb-syntax README

VSCode grammar file to color higlight commands file for gdb

## Features

This extension provides a grammar file to parse and color GDB command files.

![Color highlight](images/basic.png)

Unlike other languague, GDB will accept incomplete word when there's no ambiguity, 
so `set loggging overwrite off` is as valid as `set lo ov of`.

That means that you just can't put every keyword in one regexp to render each keyword.
To have a consistant color hilight each command has it's own regexp.

Disclaimer: for the moment, all the commands that I use are rendered.
Commits will slow down. May not update at all.

## [0.1.1] 2020-06-17
### Added
* set logging
* set logging file/overwrite
* tbreak
* set pagination
* ignore


## Roadmap
* skip command
* set subcommands
* and more from [GDB commands, variable and function index](https://sourceware.org/gdb/current/onlinedocs/gdb/Command-and-Variable-Index.html#Command-and-Variable-Index).

