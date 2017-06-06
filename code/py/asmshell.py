# very basic script to output opcodes of asm 1liners. just a little thing i use from time to time when i need to know some
# bytes of simple instructions. you could make 'i' variable read from sys.argv[1] and take the loop out or put an exit in there (more lazy ^^) to
# make it just read from cmdline and output the things back to u.

# usage:
# python asmshell.py
# >add rax, 1		<- just give one valid NASM / intel syntax asm line (there will be bugs, most will be suppressed by generic try catch)
# <output>		<- objdump output of the line will be displayed here.
# >
# ld, nasm , echo and rm can output into the console, just live with it. it will generaly only occur with invalid instructions

import os, sys, subprocess

i = ""
while(1):
	j = "global _start\nsection .text\n_start:\n"	# <-- basic asm fle with text section and _start routine
	i = str(input(">"))
	#i = sys.argv[1]
	if i == "exit":					# type exit to leave shell... or Ctrl-C.
		break
	j +=i.strip()
	try:
		os.system("echo \""+j+"\" > tmp123123.s")	# lazy i know...
		os.system("nasm -felf64 tmp123123.s")
		os.system("ld -x -s -o tmp123 tmp123123.o")

		a = subprocess.check_output(["objdump","-D","tmp123"])
		a = str(a, 'utf-8').split(":")[-1] # objdump parsings... if the line errors or is empty or w/e it will just pass...
		print(a.strip())
	except:
		pass
	os.system("rm tmp123*")				# clean up our mess each iteration.
	#exit(0)
