# An exemple of the color higlight ( basic VSCode theme )
# All command keyword are purple/pink
# Path are underlined
file path/to/program_to_debug.ext
break main.c:123
source commands.gdb
# Command options are yellow, and argument list blue
set logging overwrite on
set args arg1 args2
set pagination off
set logging on gdb.txt
# Convenience variable are in a darker blue
set $br_main = $bpnum
# Things related to the system like signals number are green
handle SIGFPE nostop noprint pass
# Commands block are implemented
command $br_main
    # The string uses C format specifier
    printf "argc = %d\n", argc
end
# At the moment, break on function render the same as for path
# Conditionals renders according to convenience
tbreak main if (argc > $my_val)
# When command as breakpoint number as argument, it's rendered in a darker blue
condition 2 (argc > 0)
# watch render accordingly depending if looking at value or address
watch argc
watch -l argc
watch *((int*) 0x12345)
# but convenience var stays different
watch $mybp
# counter render has numeric constant, light green
ignore $bpnum 10

## Python integration
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
# Oneliner also render with python color scheme
py some.value = int(some.validate(some.value))

# Altough less likely to be used in scripts, the interactive python command is rendered
python-interactive
pi 2 + 3
