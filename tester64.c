#include <stdio.h>
//compile with gcc -fno-stack-protector -z execstack -no-pie

void main(int argc, char ** argv){
	void (*func)();
	func = (void (*)()) argv[1];
	__asm__ ("mov $0xffffffff, %rax\n\t"
		 "mov %rax, %rbx\n\t"
		 "mov %rax, %rcx\n\t"
		 "mov %rax, %rdx\n\t"
		 "mov %rax, %rsi\n\t"
		 "mov %rax, %rdi\n\t");	 
	func();
}
