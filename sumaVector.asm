.data
vec: .word 40, 2, 3

.text
.global main
main:	
	mov r0, #0 @ se va a encargar de la suma
	ldr r1, =vec @ apunta al primer caracter
	mov r10, #0 @contador

	ldrb r2, [r1] @ en r2 guardo el elemento
	add r0, r2 @ r0<- r0+r2
	add r10, #1 @actualizo el contador
		
ciclo:	
	add r1, #4
	LDR r2, [r1]
	add r0, r2 @ r0<- r0+r2 

	add r10, #1 @actualizo el contador		
	cmp r10, #10 @comparo con el largo del vector
	bne ciclo

fin:
	mov r7, #1 @Salida al sistema
	swi 0