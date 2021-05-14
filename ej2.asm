
 .data
  N1: .word 18
  N2: .word 33
  N3: .word 40

 .text
  .global main

  main:
	mov r0,#0
	ldr r1,=N1 @r1<-direc. de memoria de N1
	ldr r2,=N2
	ldr r3,=N3

	ldr r4,[r1] @r4<-guardo el valor 
	ldr r5,[r2] 
	ldr r6,[r3]

	add r0, r4, r5
	sub r0, r6
	
	mov r7, #1
	swi 0