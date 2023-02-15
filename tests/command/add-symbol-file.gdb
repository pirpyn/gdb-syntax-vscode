add-symbol-file foo
add-symbol-file foo -readnow -o 0x1
add-symbol-file foo -readnever -o 0x1
add-symbol-file foo -readnever -o 0x1 0x1
add-symbol-file foo -readnever -o 0x1 0x12 -s .text 0x123
