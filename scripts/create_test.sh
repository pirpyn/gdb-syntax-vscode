#!/bin/bash
usage()
{
	cat << EOF
usage: $(basename $0) prefix word suffix

help: write to standard output the gdb command to test each variation of word.
	Since GDB allow incomplete word when there's no ambiguity, it means
		'set logging overwrite off' and 'se lo ov of' are both valid.
	But for some commands, intermediate grammar means different functions
		'help alias' and 'help aliases' differs
	This scripts aims at writing gdb script to check all possible commands

example: $0 "set in" "put-radix" "1"
EOF
}

test_regex()
{
	local prefix="$1"
	local word="$2"
	local suffix="$3"
	if [[ ${#word} -eq 0 ]]; then
		echo "${prefix}${suffix}"
	else
		for (( i = 1; i <= ${#word}; i++ )); do
			echo "${prefix}${word:0:$i}${suffix}"
		done
	fi
}

if [[ $# -eq 0 ]]; then
	usage
	exit 1
fi

test_regex "$@"
exit 0
