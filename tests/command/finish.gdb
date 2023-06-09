# finish, fin - Execute until selected stack frame returns.

# real world example, a command that runs until a label,
# then finishes two stack elements
# (only the one-time short form "fin" is used for the test sample)

# exitprogram
define cfinish-program
    until exit_program
    finish
    fin
    dont-repeat
end
