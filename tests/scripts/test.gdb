commands
    continue
end

commands 1 2
    printf "format %s\e", Param[EN_THRESHOLD]
end

commands 1 2 $mybreak
    printf "format %s\e", Param[EN_THRESHOLD]
end

print a

print --a -- a
print --a a
print /x a

print /f a " this %"
p a


echo \ this sentense
echo "this quotes will be displayed"
echo "this %d char also"

set logging file /dev/stderr
set logging of
set loggi on filename
set loggi ov of
set lo overwrite on

set pagination off

set print elements 250
set print repeats 20
set print frame-arguments all

# python scripts can add their own sub-settings, as example:
set print cprint-pretty-display on

# or "plain settings":
set auto-speed unlimited

set print pretty on
delete 1 2 3
set print pretty off

show print vtbl
sho pr v

set substitute-path a b
directory folder1 folder2
