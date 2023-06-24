Proceso practica
	
	Definir calificaciones Como Real
	Definir option Como Entero
	Definir nombres Como Caracter
	Definir cantidad Como Entero
	Definir promedio Como Real
	
	
	option = 0
	
	Escribir "Bienvenido al sistema de gestion de alumnos"
	Escribir "<-------------------------------------------------------------------->"
	Escribir "Ingrese la cantidad de estudiantes:"
	Leer cantidad
	Dimension nombres[cantidad]
	Dimension calificaciones[cantidad]
	i = 0
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del alumno:"
		Leer nombres[i]
	Fin Para
	
	Repetir
		Escribir "Ingrese la opcion deseada"
		Escribir "1 - Ingresar notas"
		Escribir "2 - Calcular promedio"
		Escribir "3 - Nota mas alta"
		Escribir "4 - Ordenar las notas de mayor a menor"
		Escribir "5 - Salir"
		Escribir "<-------------------------------------------------------------------->"
		Leer option
		
		Segun option Hacer
			1:
				IngresarNota(nombres, calificaciones, cantidad)
			2:
				promedio = calcularPromedio(calificaciones, cantidad) 
				Escribir "El promedio de las notas de los alumnos de la clase es: ", promedio
				Escribir "<-------------------------------------------------------------------->"
			3:
				notaAlta(nombres, calificaciones, cantidad)
			4:
				menorMayor(nombres, calificaciones, cantidad)
			5:
				Escribir "Gracias por usar el sistema de gestion de alumnos"
			De Otro Modo:
				Escribir "La opcion es incorrecta"
		Fin Segun
		
	Mientras Que option <> 5
	
	
FinProceso
SubProceso IngresarNota(nombres, calificaciones, cantidad)
	
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Repetir
			Escribir "Ingrese la nota del alumno:", nombres[i]
			Leer calificaciones[i]
		Mientras Que calificaciones[i] < 0
	Fin Para
	
FinSubProceso

Funcion promedio = calcularPromedio(calificaciones, cantidad) 
	
	Definir promedio Como Real
	promedio = 0
	
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		promedio = promedio + calificaciones[i]
	Fin Para
	
	promedio = promedio / cantidad
	
FinFuncion

SubProceso notaAlta(nombres, calificaciones, cantidad) 
	
	Definir alta Como Real
	alta = 0
	
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Si calificaciones[i] > alta Entonces
			alta = calificaciones[i]
		Fin Si
	Fin Para
	
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Si calificaciones[i] == alta Entonces
			Escribir "El alumno ", nombres[i], " alcanzo la nota mas alta, que es:", alta 
			Escribir "<-------------------------------------------------------------------->"
		Fin Si
	Fin Para
FinSubProceso

SubProceso menorMayor(nombres, calificaciones, cantidad)
	
	Definir temp1 Como Real
	Definir temp2 Como Caracter
	
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Para j = 0 Hasta cantidad - 2 Con Paso 1 Hacer
			Si calificaciones[j] < calificaciones[j+1] Entonces
				temp1 = calificaciones[j]
				calificaciones[j] = calificaciones[j+1]
				calificaciones[j+1] = temp1
				temp2 = nombres[j]
				nombres[j] = nombres[j+1]
				nombres[j+1] = temp2
			FinSi
			
		Fin Para
	Fin Para
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir "Alumno ", nombres[i], " Nota:", calificaciones[i]
		Escribir "<-------------------------------------------------------------------->"
	Fin Para
	
	
	
FinSubProceso











