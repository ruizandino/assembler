.data
vec: .word 40, 2, 3
largo: .word 3

.text
.global main
main:	
	mov r0, #0 @ se va a encargar de la suma
	ldr r1, =vec @ apunta al primer caracter
	ldr r2, =largo
	mov r3, #0 @puntero
	
	ldr r4, [r2] @long. de la cadena	
ciclo:
	ldr r2, [r1, r3] @ en r2 guardo el elemento
	add r0, r0, r2 @ sumo el elmento
	add r3, #4 @actualizo el puntero
	sub r4, #1 @ cuando llega a cero es porque ha llgado al final del array
	cmp r4, #0
	bne ciclo

	
fin:
	mov r7, #1 @Salida al sistema
	swi 0