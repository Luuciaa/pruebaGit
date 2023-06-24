Proceso orden
	
	Definir array1 Como Entero
	dimension array1[4]
	
	array1[0] = 4
	array1[1] = 2
	array1[2] = 1
	array1[3] = 7
	
	ordenar(array1)
	
FinProceso

SubProceso ordenar(array1 Por Referencia)
	
	Definir aux Como Entero
	aux = 0
	
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			si array1[j] < array1[i]
				aux = array1[i]
				array1[i] = array1[j]
				array1[j] = aux
			FinSi
		Fin Para
	Fin Para
	Para i = 3 Hasta 0 Con Paso -1 Hacer
		Mostrar array1[i]
	Fin Para
	
FinSubProceso
	