Proceso U4_matriz
	
	Definir matriz, suma Como Entero
	Dimension matriz[3, 3]
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			matriz[i, j] = Aleatorio(1,9)
		Fin Para
	Fin Para
	
	Escribir  "La matriz es: "
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar " ", matriz[i, j]
			si i == j Entonces
				suma = suma + matriz[i, j]
			FinSi
		Fin Para
		Escribir " "
	Fin Para
	
	Mostrar "La suma de la diagonal principal es: ", suma
	
	
FinProceso
