# script that creates some very basic assembly source files with single bytes
# and multiples of these bytes to check how they are assembled.
# objdump output is parsed to interpret the output files

# source file format
# ----
# global _start:
# section .text
# _start:
# times $(num) db <TESTBYTE>

import os, subprocess

def do_run(num, fp):
	for i in range(0,256):
		f = open("tmp.s", "wt")
		f.write("global _start\n")
		f.write("section .text\n")
		f.write("_start:\n")

		for j in range(0,num):
			f.write("db "+hex(i)+"\n")

		f.close()

		os.system("nasm -felf64 tmp.s")
		os.system("ld -o tmpbin tmp.o")

		a = subprocess.check_output(["objdump", "-D", "tmpbin"])

		try:
			a = a.strip().split("\n")[-1].strip().split(":")[1].strip()
		except:
			a = a.strip().split("\n")[-1].strip()
		g.write(str(num) + ":" + hex(i) + " : " + a + "\n")
		os.system("rm tmp*")

g = open("output.txt", "wt")
do_run(1, g)
do_run(2, g)
do_run(3, g)
do_run(4, g)
do_run(5, g)
do_run(6, g)
do_run(7, g)
do_run(8, g)
g.close()
