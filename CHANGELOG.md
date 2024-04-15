# Change Log

All notable changes to the "gdb-syntax" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [Unreleased]
Disclaimer: for the moment, all the commands that I use are rendered.
Commits will slow down. May not update at all.

## [0.5.6] 2024-04-15
### added
 * set detach-on-fork
 * set follow-fork-mode
 * set demangle-style
 * set print
   * demangle
   * object
   * sevenbit-strings
   * static-members

## [0.5.5] 2023-12-12
### added
 * set style
   * set style filename
   * set style function
   * set style variable
   * set style address
   * set style title
   * set style highlight
   * set style metadata
   * set style tui-border
   * set style tui-active-border
 * background color specifier
 * foreground color specifier
   * none, black, red, magenta, green, yellow, blue, cyan, white
 * intensity color specifier
   * normal, bold, dim

## [0.5.4] 2023-10-19
### added
 * cd

## [0.5.3] 2023-10-16
### Modified
 * break: -force-condition and explicit location

## [0.5.2] 2023-06-20
### Added
 * finish
### Modified
 * on/off/auto and other constant keyword

## [0.5.1] 2023-06-09
### Added
 * quit
 * backtrace, where, info stack
 * call, print

## [0.5.0] 2023-06-08
### Added
 * server prefix to all command (not enabled on block)
 * save command breakpoints|tracepoints|gdb-index
### Merged
 * jump command (partial)
 * until command (partial)
### Modified
 * scripts to create tests

## [0.4.2] 2023-06-01
### Added
 * set input/output-radix
 * set verbose
 * set confirm
 * set with/height
 * set listsize
### Modified
 * Rendering of on/off/unlimited
 * shell operator '!' or shell command not rendered correctly if not at the start of the line
 * GDB scripts to test commands and write .gdb tests

## [0.4.1] 2023-05-31
### Modified
 * conditionals rendering as normal
 * set logging|pagination renders on/off better

## [0.4.0] 2023-05-31
### Added
 * command
    * apropos
    * help: alias, aliases, breakpoints, user-defined
### Merged
 * fix define command from GitMensch

## [0.3.4] 2023-05-30
### Added
 * command:
    * catch fully supported

## [0.3.3] 2023-05-30
### Added
 * command:
    * info (scope|symbol|address|locals|types)
### Modified
 * block
    * commands: fixed breakpoints not parsed properly
### Misc
 * Added a C code to test gdb on, along with the makefile to compile & launch it

## [0.3.2] 2023-02-20
### Added
 * command:
    * target (exec|core|native|remote|extended-remote|record)
    * silent (in commands)
    * loop_break, loop_continue

## [0.3.1] 2023-02-15
### Added
 * operator: ! (shell), | (pipe)

## [0.3.0] 2023-02-15
### Added
 * command: exec-file, symbol-file, add-symbol-file, inferior, add-inferior

## [0.2.3] 2023-02-13
### Added
 * command: nexti, stepi, x
### Misc
 * fix offff... arguments
 * Added references in README
 * Proper hexa class selector in regex

## [0.2.2] 2023-02-08
### Added
 * command: show: print, logging, history... Partial implementation, same as set.
### Modified
 * command: condition, now accepts no expr to make unconditional
 * block: python, python-interactive, fix when no expression is supplied
### Misc
 * fix task.json
 * blank refactor

## [0.2.1] 2023-02-07
### Modified
 * set breakpints pending: fixed type
 * disable, enable, delete: fixed color of `breakpoint` optional
### Misc
 * added shell script to concatenate all unit tests into one
 * created associated task.json
 * modified launch.json to prelaunch task and open merged tests.

## [0.2.0] 2023-02-07
### Merged
 * block:
    * define
    * document
    * hook
    * commands (regexp fixed)
    * while
    * python
 * command
    * directory
    * skip: -file, -gfile, -function, function, delete, enable, disable
    * set: size, filename, removedups, substitute-path
### Modified
 * command: set print

## [0.1.5] 2023-02-04
### Merged
 * python oneliner command
### Added 
 * python-interactive command

## [0.1.4] 2021-05-19
### Added
 * set print vtbl command
 * show print vtbl command
 * show print pretty command
### Modified
 * set print pretty command
 * license field in package.json

## [0.1.3] 2020-09-16
### Added
* set pretty print command

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
* wrong comment (i.e # is not the first non separator char on the line)
* commands: file, start, run, condition, enable, disable, handle, step, set
* constant: numeric (dec, hex, bin, oct), C character ('a')

## [0.0.1] 2020-06-09
Initial release of gdb-syntax.
### Added
* comment
* commands: break, continue, next
* user defined convenience $my_var