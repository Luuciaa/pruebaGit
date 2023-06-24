Proceso U4_ej2
	//Escribir un algoritmo que permita al usuario ingresar 5 números y luego imprimirlos en pantalla
	
	Definir array Como Entero
	Dimension array[5]
	
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese el numero ", i + 1
		Leer array[i]
	Fin Para
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir "El numero ", i+1, " es:", array[i]
	Fin Para
	
	
FinProceso
