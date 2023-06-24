Proceso U4_ej6
	
	Definir n, i, j, num, repeticiones, elementoActual, elementoMasRepetido, arr como enteros
	
	Escribir "Cuantos numeros desea ingresar?"
	Leer n
	Dimension arr[n]
	
	Para i = 0 Hasta n-1 Con Paso 1 Hacer
		arr[i] = Aleatorio(1,9)
		
	Fin Para
	
	para i desde 0 hasta n-1 hacer
		elementoActual <- arr[i]
		repeticiones <- 1
		para j desde i hasta n-1 hacer
			si elementoActual == arr[j] entonces
				repeticiones <- repeticiones + 1
			fin si
		fin para
		si repeticiones > elementoMasRepetido entonces
			elementoMasRepetido <- repeticiones
			num <- elementoActual
		Fin si     
	Fin para
	
	Escribir "El número que se repite más veces en el arreglo es: ", num
	
FinProceso
