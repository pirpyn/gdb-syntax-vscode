set pagi off

define all_regex
	if $argc < 1
		help all_regex
	else
		set $i = 0
		while $i < $argc
			eval "!../scripts/all_regex.sh $arg%d", $i
			set $i = $i + 1
		end
	end
end
document all_regex
Given a word foo, writes the regex to match f, fo, foo
usage:
	all_regex foo
return:
	f(?:oo?)?
end

define create_test
	if $argc < 4
		help create_test
	else
		! mkdir -p $(dirname ../tests/$arg0)
		! ../scripts/create_test.sh $arg1 $arg2 $arg3 > ../tests/$arg0
		echo Test $arg0 written for regex\n
		shell { echo $arg1; ../scripts/all_regex.sh $arg2; echo $arg3; } | tr '\n' '\0'
		echo \n
	end
end
document create_test
Given a prefix, a word and a suffix, write all gdb possibilities to a file
usage:
	create_test file prefix word suffix
end

br main
run
