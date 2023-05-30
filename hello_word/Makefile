PROG:=return
EXE:=$(PROG).exe

.PHONY: run
run: exe
	gdb $(EXE)

.PHONY: exe
exe : $(EXE)

$(EXE) : $(PROG).c
	$(CC) -o $@ $< -g
