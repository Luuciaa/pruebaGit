Proceso u4_subProceso_3
	
	definir lado1, lado2, lado3 Como Real
	escribir "Ingrese los lados del triangulo"
	leer lado1, lado2, lado3
	
	triangulo(lado1, lado2, lado3)
	
FinProceso

SubProceso triangulo(lado1 Por Valor, lado2 Por Valor, lado3 Por Valor)
	
	si lado1 == lado2 & lado1 == lado3 Entonces
		Escribir "El triangulo es equilatero"
		
	SiNo
		si lado1 == lado2 o lado1==lado3 o lado2==lado3 Entonces
			Escribir "El triangulo es isosceles"
		SiNo
			Escribir "El triangulo es escaleno"
		FinSi
		
		
	FinSi
	
FinSubProceso
	