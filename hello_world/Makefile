PROG:=return
EXE:=$(PROG).exe

.PHONY: run
run: exe
	gdb -x command.gdb $(EXE)

.PHONY: exe
exe : $(EXE)

$(EXE) : $(PROG).c
	$(CC) -o $@ $< -g
