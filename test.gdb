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

ha
handle
handle 10
handle 10 12 13
handle all pass ignore
handle 10-13
handle 10 pass ignore 
handle SIGTERM nopass
handle SIGNAL SIGTERM