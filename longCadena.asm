.data
cadena: .asciz "Hola Mundo"


.text
.global main
main:
	mov r10,#0 @contador
	ldr r0, =cadena

caracter:
	ldrb r1,[r0] @guardo el primer caracter
	cmp r1, #0 @fin de la cadena?
	beq fin

	add r10,#1 @actualizo el contador
	add r0, #1 @el puntero se mueve una posicion
	bal caracter
	
fin:
	mov r7,#0
	swi 0
	
	
	
	
	