.Data
.text
.global main 

main:
	mov r0,#2147483645
	ldr r1,#1


ciclo:
	adds r0,r1
	bvc ciclo 
fin:	
	mov r7, #1
	swi 0
