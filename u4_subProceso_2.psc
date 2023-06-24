Proceso u4_subProceso_2
	
	Definir num1, num2 Como Entero
	Escribir "Ingrese el primer numero"
	Leer num1
	Escribir "Ingrese el segundo"
	Leer num2
	
	Escribir "El resultado de la suma de los dos numeros es:", sumar(num1, num2)
	
	
FinProceso

Funcion suma <- sumar(num1 Por Valor, num2 Por Valor)
	
	Definir suma Como Entero
	suma = num1 + num2
	
FinFuncion
