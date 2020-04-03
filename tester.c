#include <stdio.h>
//compile with gcc -fno-stack-protector -z execstack -no-pie

void main(int argc, char ** argv){
	void (*func)();
	func = (void (*)()) argv[1];
	__asm__ ("mov $0xffffffff, %eax\n\t"
		 "mov %eax, %ebx\n\t"
		 "mov %eax, %ecx\n\t"
		 "mov %eax, %edx\n\t"
		 "mov %eax, %esi\n\t"
		 "mov %eax, %edi\n\t");	 
	func();
}
