.data
vec: .word 40, 2, 3

.text
.global main
main:	
	mov r0, #0 @ se va a encargar de la suma
	ldr r1, =vec @ apunta al primer caracter

	ldrb r2, [r1] @ en r2 guardo el elemento
	add r0, r0, r2 @ r0<- r0+r2

	ldrb r2, [r1,#4]
	add r0, r0, r2

	ldrb r2, [r1,#8]
	add r0, r0, r2	
fin:
	mov r7, #1 @Salida al sistema
	swi 0