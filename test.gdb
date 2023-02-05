
## End of example

# Testing more variants below

continue

c
cont 1

n 1
next 2

s 2
step 2


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
set p prett on
show p pr

set print vtbl on
set print vtbl of

set print elements 250
set print repeats 20
set print frame-arguments all

# python scripts can add their own sub-settings, as example:
set print cprint-pretty-display on

# or "plain settings":
set auto-speed unlimited

define hook-exit
   echo exit time!
end

define command my-command
   break function exit
   set $i = 0
   while $i <= 1
      echo $i
      $i = $i + 1
   end
end

document my-command
  This command does something
  very special
end


show print vtbl
sho pr v

set substitute-path a b
directory folder1 folder2
