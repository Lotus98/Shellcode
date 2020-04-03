# README
This is a repo cointaining my shellcodes and testing environment.

## Usage:
The file tester.c is valid both for 32bit and 64bit compilation.  
To compile 64bit:  
```bash
$ gcc -o tester64bit tester.c -fno-stack-protector -z execstack -no-pie
``` 

To compile 32bit you may need to install gcc-multilib:   
```bash
$ sudo apt install gcc-multilib
```  
```bash
$ gcc -o tester64bit tester.c -fno-stack-protector -z execstack -no-pie -m32
```