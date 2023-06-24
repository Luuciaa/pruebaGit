Proceso u4_subProceso_5
	
	Definir alumnos Como Caracter
	Definir notas Como Real
	Dimension alumnos[10]
	Dimension notas[10]
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del alumno ", i+1
		Leer alumnos[i]
		Escribir "Ingrese la nota del examen: "
		Leer notas[i]
	Fin Para
	
	mayor(notas, alumnos)
	menor(notas, alumnos)
	promedio(notas)
	
	
FinProceso

SubProceso promedio(notas Por Referencia)
	
	Definir promedioNotas Como Real
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		promedioNotas = promedioNotas + notas[i]
	Fin Para
	
	Escribir "El promedio de las notas es: ", promedioNotas/10
	
FinSubProceso

SubProceso mayor(notas Por Referencia, alumnos Por Referencia)
	
	Definir alumnoMayor Como Caracter
	Definir notaMayor Como Real
	notaMayor = 0
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		
		si notas[i] > notaMayor Entonces
			
			notaMayor = notas[i]
			alumnoMayor = alumnos[i]
			
		FinSi
		
	Fin Para
	
	Escribir "El alumno con la mayor nota es: ", alumnoMayor, ". Nota: ", notaMayor 
	
FinSubProceso


SubProceso menor(notas Por Referencia, alumnos Por Referencia)
	
	Definir alumnoMenor Como Caracter
	Definir notaMenor Como Real
	notaMenor = 10
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		
		si notas[i] < notaMenor Entonces
			
			notaMenor = notas[i]
			alumnoMenor = alumnos[i]
			
		FinSi
		
	Fin Para
	
	Escribir "El alumno con la mayor nota es: ", alumnoMenor, ". Nota: ", notaMenor 
	
FinSubProceso