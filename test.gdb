# An exemple of the color higlight ( basic VSCode theme )
# All command keyword are purple/pink
# Path are underlined
file path/to/program_to_debug.ext
break main.c:123
source commands.gdb
set logging on gdb.txt
# Command options are yellow, and argument list blue
set logging overwrite on
set args arg1 args2
set pagination off
# Convenience variable are in a darker blue
set $br_main = $bpnum
# Things related to the system like signals number are green
handle SIGFPE nostop noprint pass
# Command block are implemented
command $br_main
    # The string uses C format specifier
    printf "argc = %d\n", argc
end
# At the moment, break on function render the same as for path
# but conditionals are emphasized
tbreak main if (argc > 0)
# When command as breakpoint number as arhument, it's rendered in a darker blue
condition 2 (argc > 0)
# watch understand when looking at memory location
watch argc
watch *(int*) 0x12345
# counter render has numeric constant, light green
ignore $bpnum 10
# Python command block uses python textMate Grammar
python
import os
# this if condition isn't emphasized, because it's parsed as a source.python line
if 'this' in os.environ:
    python_scripts_path = os.environ['this'] + '/that'
    gdb.execute('add-auto-load-safe-path ' + python_scripts_path)
    gdb.execute('directory ' + python_scripts_path)
else:
    if this is None:
        sys.path.insert(0, 'path')
end

## End of example

# Testing more variants below

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

dis
disable
disable 1 $mybreak

enable count 10 12 $my_break

cond 12
condition $mybreak expression

handle 10 12 13 $mybreak
handle all pass ignore
handle 10-13
handle 10 pass ignore 
handle SIGTERM nopass

watch *(int *) 0x12345
watch *(int *) $my_adr
awatch c
rwatch b
watch -location a
command
    continue
en

command 1 2
    printf "format %s\e", Param[EN_THRESHOLD]
end

command 1 2 $mybreak
    printf "format %s\e", Param[EN_THRESHOLD]
end

print a

print --a -- a
print --a a
print /x a

print /f a " this %"
p a

source -v /path/to/location

if condition

else
end

echo \ this sentense
echo "this quotes will be displayed"
echo "this %d char also"

printf "this is a format specifier %d", value

set auto-load python-scripts on
set auto-load local-gdbinit
set auto-load safe-path /
set history save on


# skip function in std namespace
skip -rfu ^std::
skip -rfu ^std:: -file bbabor.c

set logging file /dev/stderr
set logging of
set loggi on filename
set loggi ov of
set lo overwrite on

set pagination off

tbreak file:666

ignore 12 59
ignore $bpnum 10

set print pretty on
set print pretty off
set p prett of