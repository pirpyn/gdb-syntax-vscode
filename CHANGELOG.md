# Change Log

All notable changes to the "gdb-syntax" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [Unreleased]
Disclaimer: for the moment, all the commands that I use are rendered.
Commits will slow down. May not update at all.

- Other in [GDB commands, variable and function](https://sourceware.org/gdb/current/onlinedocs/gdb/Command-and-Variable-Index.html#Command-and-Variable-Index).

## [0.1.2] 2020-09-14
### Modified
* command block without break specifier

## [0.1.1] 2020-06-17
### Added
* set logging
* set logging file/overwrite
* tbreak
* set pagination
* ignore

## [0.1.0] 2020-06-15
### Added
* Python command block
* set auto-load python-scripts/local-gdbinit/safe-path
* set history save
* .gdbinit extension

## [0.0.7] 2020-06-15
Added echo command.

## [0.0.6] 2020-06-12
Manually removed and uploaded basic.png again.

## [0.0.5] 2020-06-11
#### Added
* commands: source, delete, set args
* block: conditional (if/else)
### Modified
* enable, added options count, once, delete
* example image
### Removed
* set environment ( doesn't exists )

## [0.0.4] 2020-06-10
### Added
* commands: command block, watch, print, printf
### Improved
* commands: set with environmment
* syntax: format specifier in string

## [0.0.3] 2020-06-10
Update README.md

## [0.0.2] 2020-06-10
### Added
* wrong comment (i.e # is not the first non seperator char on the line)
* commands: file, start, run, condition, enable, disable, handle, step, set
* constant: numeric ( dec, hex, bin, oct), C character ('a')

## [0.0.1] 2020-06-09
Initial release of gdb-syntax.
### Added
* comment
* commands: break, continue, next
* user defined convenience $my_var