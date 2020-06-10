# https://macromates.com/manual/en/language_grammars#naming_conventions
# Comment
file path/to/program_to_debug.ext
run arg1 args2
continue

c
cont 1

n 1
next 2

s 2
step 2

b
br location_to_break
br location_to_break:1234
br location_to_break:1234 if expression

set prompt $
set ENV "value"
set $my_var = 1
set var a = 1
set var a = $my_var
set var a = 0x12345
set var a = "deda"
set var a = 'd'
set var a = 0x12345

en
enable
enable 10
enable $mybreak

dis
disable
disable 10
disable $mybreak

cond 12
condition $mybreak expression
condition 12 expression

ha
handle
handle 10
handle 10 12 13
handle all pass ignore
handle 10-13
handle 10 pass ignore 
handle SIGTERM nopass
handle SIGNAL SIGTERM

watch a
watch *(int *) 0x12345
watch -location a

command 1 2
    printf "format %s\e", Param[EN_THRESHOLD]
end


comment
comment.line
comment.line.double-slash
comment.line.number-sign
comment.line.percentage
comment.line.character
comment.block
comment.block.documentation
constant
constant.numeric
constant.numeric.
constant.character
constant.character.escape
constant.language
constant.other
entity
entity.name
entity.name.function
entity.name.type
entity.name.tag
entity.name.section
entity.other
entity.other.inherited-class
entity.other.attribute-name
invalid
invalid.illegal
invalid.deprecated
keyword
keyword.control
keyword.operator
keyword.other
markup
markup.underline
markup.underline.link
markup.bold
markup.heading
markup.italic
markup.list
markup.list.numbered
markup.list.unnumbered
markup.quote
markup.raw
markup.other
meta
storage
storage.type
storage.modifier
string
string.quoted
string.quoted.single
string.quoted.double
string.quoted.triple
string.quoted.other
string.unquoted
string.interpolated
string.regexp
string.other
support
support.function
support.class
support.type
support.constant
support.variable
support.other
variable
variable.parameter
variable.language
variable.other