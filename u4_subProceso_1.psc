Proceso u4_subProceso_1
	
	Definir nombre, apellido Como Caracter
	Definir edad Como Entero
	
	leerDatos(nombre, apellido, edad)
	mostrarDatos(nombre, apellido, edad)

FinProceso

SubProceso   leerDatos(nombre Por Referencia, apellido Por Referencia, edad Por Referencia)

	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su apellido"
	Leer apellido
	Escribir "Ingrese su edad"
	Leer edad
	
FinSubProceso



SubProceso mostrarDatos(nombre Por Valor, apellido Por Valor, edad Por Valor)
	Escribir "Sus datos son: "
	Escribir "Nombre: ", nombre
	Escribir "Apellido: ", apellido
	Escribir "Edad: ", edad
FinSubProceso
