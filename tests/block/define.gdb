define mycommand
	dont-repeat
	if $argc > 1
		help mycommand
	else
		if $argc == 1
			set $i = $arg0
		else
			set $i = $0
		end
		while $i <= 1
			echo $i
			$i = $i + 1
		end
		break function exit
	end
end
