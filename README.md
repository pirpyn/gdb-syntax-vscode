![The GDB logo/gish is Archer](images/archer.png)
# GDB syntax color

[![Visual Studio Marketplace Version](https://img.shields.io/visual-studio-marketplace/v/pierre-payen.gdb-syntax?label=VS%20Marketplace) ![Visual Studio Marketplace Installs](https://img.shields.io/visual-studio-marketplace/i/pierre-payen.gdb-syntax) ![Visual Studio Marketplace Downloads](https://img.shields.io/visual-studio-marketplace/d/pierre-payen.gdb-syntax)](https://marketplace.visualstudio.com/items?itemName=pierre-payen.gdb-syntax)

[![Open VSX Version](https://img.shields.io/open-vsx/v/pierre-payen/gdb-syntax?label=Open%20VSX) ![Open VSX Downloads](https://img.shields.io/open-vsx/dt/pierre-payen/gdb-syntax)](https://open-vsx.org/extension/pierre-payen/gdb-syntax)

VSCode grammar extension to color higlight scripts for GDB

## Changelog

## [0.4.1] 2023-05-31
## Modified
 * conditionals rendering as normal
 * set logging|pagination renders on/off better

## [0.4.0] 2023-05-31
## Added
 * command
    * apropos
    * help: alias, aliases, breakpoints, user-defined
## Merged
 * fix define command from GitMensch

## Features

This extension provides a grammar file to parse and color GDB command files.

![Color highlight](images/basic.png)

Unlike other languague, GDB will accept incomplete word when there's no ambiguity, 
so `set loggging overwrite off` is as valid as `set lo ov of`.

That means that you just can't put every keyword in one regexp to render each keyword.
To have a consistant color hilight each command has it's own regexp.

Disclaimer: for the moment, all the commands that I use are rendered.
Commits will slow down. May not update at all.

## References
 * [GDB commands, variable and function index](https://sourceware.org/gdb/onlinedocs/gdb/Command-and-Variable-Index.html)
 * [TextMate languages grammars](https://macromates.com/manual/en/language_grammars)
 * [Oniguruma regex](https://macromates.com/manual/en/regular_expressions#syntax_oniguruma)

## Contributors
### Rules
* All scopes must finish by `.gdb`.
* The scope goes from general to specific.
* For GDB commands, first scope is  `meta`. Then it depends on the GDB logic: is it a `command`, a `block`, a `variable` ? Examples:
    * `meta.block.conditional.gdb` means its a GDB block of text in a conditional statement.
    * `meta.command.delete.gdb` means its gdb's delerte command.
* One command per PR. The PR must have the .gdb to test it. Ideally, an image should be copied in the PR to show the output.

### Testing
Use the VSCode command `editor.action.inspectTMScopes` ( `Developer: Inspect Editor Tokens and Scopes` in command palette ) to check the syntax highlighting.

Here, the comment was rendered as a `comment.line.number-sign.gdb`.

![scope-example](images/scope-info.png)

### Theme colors
See [images/naming-conventions.png](images/naming-conventions.png) for particular scopes and their visual effect.
