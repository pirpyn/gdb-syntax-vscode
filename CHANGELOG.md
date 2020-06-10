# Change Log

All notable changes to the "gdb-syntax" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [Unreleased]

- delete, command, printf ...
- And other in [GDB commands, variable and function](https://sourceware.org/gdb/current/onlinedocs/gdb/Command-and-Variable-Index.html#Command-and-Variable-Index).

## [0.0.3] 2020-06-10

Update README.md

## [0.0.2] 2020-06-10

## Added
* wrong comment (i.e # is not the first non seperator char on the line)
* commands: file, start, run, condition, enable, disable, handle, step, set
* constant: numeric ( dec, hex, bin, oct), C character ('a')

## [0.0.1] 2020-06-09

Initial release of gdb-syntax.

## Added
* comment
* commands: break, continue, next
* user defined convenience $my_var