#!/bin/bash

main()
{
	repo="$(dirname $(dirname $(readlink -m $0)))"
	cd ${repo}
	output_file=${repo}/tests/concat_tests.$ext
	if [[ ! -f ${output_file} ]]; then
		cond=1
	else
		nb_new_file=$(find ${repo}/tests -name \*.$ext -newer ${output_file} | wc -l)
		echo "# ${nb_new_file} newer files" > /dev/stderr
		cond=${nb_new_file}
	fi
	if [[ $cond -ne 0 ]]; then
		echo "# creating ${output_file} " > /dev/stderr
		rm -f "${output_file}"
		find ${repo}/tests -name \*.$ext | while read filename; do
			{
				echo "# ${filename}" | sed "s|${repo}/||g"
				cat "${filename}"
				echo ""
			} >> "${output_file}"
		done
	fi
	if [[ -f "${output_file}" ]]; then
		readlink -m "${output_file}"
	else
		echo "Error when concatenating files" > /dev/stderr
		return 1
	fi
}

for ext in gdb{,-log}; do
	main
done
exit 0