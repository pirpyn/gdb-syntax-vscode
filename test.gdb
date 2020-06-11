# An exemple of the color higlight ( basic VSCode theme )
# All command keyword are purple/pink
# Path usually are underlined
file path/to/program_to_debug.ext
break main.c:123
source commands.gdb
# Command options are yellow, and argument list blue
set args arg1 args2
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
break main if (argc > 0)
condition 2 (argc > 0)
# watch understand when looking at memory location
watch argc
watch *(int*) 0x12345

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

p a

source -v /path/to/location

if condition
else
end
