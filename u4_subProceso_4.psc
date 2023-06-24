Proceso u4_subProceso_4
	
	Definir nombre, apellido Como Caracter
	Definir dni Como Entero
	dni = 0
	validar(nombre, apellido, dni)
	mostrarDatos(nombre, apellido, dni)

FinProceso

SubProceso validar(nombre Por Referencia, apellido Por Referencia, dni Por Referencia)
	
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su apellido"
	Leer apellido
	
	Mientras dni > 99999999 o dni < 100000 Hacer
		Escribir "Ingrese su dni"
		Leer dni
		Si dni > 99999999 o dni < 100000 Entonces
			Escribir "El DNI ingresado no cumple con los parametros, intente nuevamente"
		Fin Si
	Fin Mientras
FinSubProceso

SubProceso mostrarDatos(nombre, apellido, dni)
	Escribir "Sus datos son: "
	Escribir "Nombre: ", nombre
	Escribir "Apellido: ", apellido
	Escribir "DNI: ", dni
FinSubProceso
	