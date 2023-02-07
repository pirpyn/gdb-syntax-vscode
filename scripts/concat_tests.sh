#!/bin/bash

repo="$(dirname $(dirname $(readlink -m $0)))"
cd ${repo}
output_file=concat_tests.gdb
rm -f "${output_file}"
find ${repo}/tests -name \*.gdb | while read filename; do
	{
		echo "# ${filename}" | sed "s|${repo}/||g"
		cat "${filename}"
		echo ""
	} >> "${output_file}"
done
if [[ -f "${output_file}" ]]; then
	readlink -m "${output_file}"
else
	echo "Error when concatenating files" > /dev/stderr
	exit 1
fi
exit 0