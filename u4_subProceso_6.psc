Proceso u4_subProceso_6
	
	Definir corredores Como Caracter
	Definir posiciones Como Entero
	Definir menu Como Entero
	
	Dimension corredores[10]
	Dimension posiciones[10]
	
	menu = 0
	
	corredores[0] = "Pedro Gomez"
	corredores[1] = "Martin Ceres"
	corredores[2] = "Ernestina Diaz"
	corredores[3] = "Gaston Bautista"
	corredores[4] = "Dalma Alvarez"
	corredores[5] = "Patricio Fernandez"
	corredores[6] = "Faustina Martinez"
	corredores[7] = "Andrea Perez"
	corredores[8] = "Hilda Lopez"
	corredores[9] = "Leon Garcia"
	
	posiciones[0] = 7
	posiciones[1] = 6
	posiciones[2] = 1
	posiciones[3] = 2
	posiciones[4] = 8
	posiciones[5] = 3
	posiciones[6] = 10
	posiciones[7] = 9
	posiciones[8] = 4
	posiciones[9] = 5
	
	Mientras menu <> 4 Hacer
		
		Escribir "<------------------------------------->"
		Escribir "Ingrese la opcion deseada: "
		Escribir "1- Lista de corredores"
		Escribir "2- Lista de mejores 3 posiciones"
		Escribir "3- Lista de posiciones completa"
		Escribir "4- Salir"
		Escribir "<------------------------------------->"
		Leer menu
		
		Segun menu Hacer
			1:
				ListaCorredores(corredores)
			2:
				ListaMejores(corredores, posiciones)
			3:
				ListaPosiciones(corredores, posiciones) 
			4:	
				Escribir "Gracias!"
			De Otro Modo:
				Escribir "Opcion incorrecta."
		Fin Segun
		
	Fin Mientras
	
FinProceso

SubProceso ListaCorredores(corredores Por Referencia)
	
	Escribir "La lista de corredores es: "
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir corredores[i]
	Fin Para
	
FinSubProceso

SubProceso ListaMejores(corredores Por Referencia, posiciones Por Referencia) 
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 9 Con Paso 1 Hacer
			
			si posiciones[j] == i + 1 Entonces
				Escribir "El corredor N° ", i+1, " es: ", corredores[j]
			FinSi
			
		Fin Para
	Fin Para
FinSubProceso

SubProceso ListaPosiciones(corredores Por Referencia, posiciones Por Referencia) 
	
	Definir aux Como Caracter

	Escribir "La lista de corredores del mejor al peor: "
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Para j = 0 Hasta 9 Con Paso 1 Hacer
			
			si posiciones[j] == i + 1 Entonces
				aux = corredores[j]
			FinSi
			
		Fin Para
		Escribir i+1, "- ", aux
	Fin Para
	
FinSubProceso


