COMPILER=nasm
FORMAT=-f elf64
LINKER=ld



LAB_PROJECTS_01_BASICS=Lab_Projects/01_basics
compile_hello: ${LAB_PROJECTS_01_BASICS}/hello.asm
	${COMPILER} ${FORMAT} ${LAB_PROJECTS_01_BASICS}/hello.asm -o ${LAB_PROJECTS_01_BASICS}/hello.o
	${LINKER} ${LAB_PROJECTS_01_BASICS}/hello.o -o ${LAB_PROJECTS_01_BASICS}/hello

compile_registers: ${LAB_PROJECTS_01_BASICS}/registers.asm
	${COMPILER} ${FORMAT} ${LAB_PROJECTS_01_BASICS}/registers.asm -o ${LAB_PROJECTS_01_BASICS}/registers.o
	${LINKER} ${LAB_PROJECTS_01_BASICS}/registers.o -o ${LAB_PROJECTS_01_BASICS}/registers

