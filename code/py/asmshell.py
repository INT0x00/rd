# basic script to echo opcodes from asm input
# nasm/intel syntax
# mind your step...
import os, sys, subprocess

i = ""
while(1):
	j = "global _start\nsection .text\n_start:\n"
	i = str(input(">"))
	#i = sys.argv[1]
	if i == "exit":	#exit to exit.
		break
	j +=i.strip()
	try:
		os.system("echo \""+j+"\" > tmp123123.s")
		os.system("nasm -felf64 tmp123123.s")
		os.system("ld -x -s -o tmp123 tmp123123.o")

		a = subprocess.check_output(["objdump","-D","tmp123"])
		a = str(a, 'utf-8').split(":")[-1]
		print(a.strip())
	except:
		pass
	os.system("rm tmp123*")				# tidy up after ourselves...
	#exit(0)
