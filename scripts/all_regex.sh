#!/bin/bash
usage()
{
	cat << EOF
usage: $(basename $0) word1 ...

help: Given a word, prints the regex to list all possible case to write the word letter after one another, starting from none.
i.e for the word foo, regex will match "", f, fo, foo, which is $($0 foo)
The reason is gdb accepts partial command when there's no ambiguity, so regex must handle all possible writing configuration

example: For symbol-file command, sy is enough, and to get all possibilities, one can use
\`$(basename $0) mbol-file\`, then append sy to the regex to get sy$($0 mbol-file)
EOF
}

regex()
{
	# taken a word foo, prints (?:f(?:o(?:o)?)?)?
	# recursive strategy
	local word="${1}"
	if [[ ${#word} -le 1 ]]; then
		printf "%s?" "${word}"
		return
	else
		printf "(?:%s" "${word:0:1}"
		regex "${word:1}"
		printf ")?"
	fi
}

if [[ $# -eq 0 ]]; then
	usage
	exit 1
fi

for word in "${@}"; do
	regex "${word}" | sed -e 's/^(?://' -e 's/)?$//'
	echo
done