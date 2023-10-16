b
br location_to_break
br location_to_break:1234
br location_to_break:1234 if expression
break 123 -force-condition if expression

break -qualified -function main
break -source foo/bar/snamestr.c
break -label ENDOF
break -line 12 -qualified 0x123
break -source foo/bar/snamestr.c -qualified -function main -line 12
