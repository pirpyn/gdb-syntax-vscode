set pagination off
set logging file gdb.txt
set logging on
file a.out
b f
commands
backtrace
continue
end
info breakpoints
r
set logging off
quit
