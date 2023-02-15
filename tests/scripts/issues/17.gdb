set logging off
shell target="$(/usr/bin/head -1 /tmp/gdb-objc_symbols | /usr/bin/head -1 | /usr/bin/awk -F '"' '{ print $2 }')"; objc-symbols "$target" | SymTabCreator -o /tmp/gdb-symtab
set logging on
