
# command definition

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


# documentation for this command

document mycommand 
  This command does something
  very special
end

doc mycommand
    Some help for this
end
docu mycommand
    Some help for this
end
docu mycommand
    Some help for this
end
docum mycommand
    Some help for this
end
docume mycommand
    Some help for this
end
documen mycommand
    Some help for this
end
document mycommand
    Some help for this "toto"
end
