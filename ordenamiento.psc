Proceso ordenamiento
	
    Definir pacientes como Cadena
	Dimension pacientes[8,5]
	
    pacientes[0,0] = "Ana"
    pacientes[0,1] = "Martinez"
    pacientes[0,2] = "17.123456"
    pacientes[0,3] = "+541141200011"
    pacientes[0,4] = "56"
    pacientes[1,0] = "Camila"
    pacientes[1,1] = "Noe"
    pacientes[1,2] = "25.789101"
    pacientes[1,3] = "+543419485831"
    pacientes[1,4] = "45"
    pacientes[2,0] = "Bruno"
    pacientes[2,1] = "Noe"
    pacientes[2,2] = "39.121314"
    pacientes[2,3] = "+541145565789"
    pacientes[2,4] = "26"
    pacientes[3,0] = "Dardo"
    pacientes[3,1] = "Pistilli"
    pacientes[3,2] = "21.151617"
    pacientes[3,3] = "+541158637543"
    pacientes[3,4] = "48"
    pacientes[4,0] = "Ernestina"
    pacientes[4,1] = "Quesada"
    pacientes[4,2] = "33.181920"
    pacientes[4,3] = "+541161294758"
    pacientes[4,4] = "35"
    pacientes[5,0] = "Fausto"
    pacientes[5,1] = "Ramirez"
    pacientes[5,2] = "15.212223"
    pacientes[5,3] = "+543423444567"
    pacientes[5,4] = "60"
    pacientes[6,0] = "Jasmín"
    pacientes[6,1] = "Sosa"
    pacientes[6,2] = "40.242526"
    pacientes[6,3] = "+543402512345"
    pacientes[6,4] = "25"
    pacientes[7,0] = "Leonardo"
    pacientes[7,1] = "Tolosa"
    pacientes[7,2] = "11.272829"
    pacientes[7,3] = "+541151234567"
    pacientes[7,4] = "70"
	
	
	OrdenarPacientesPorNombreApellido(pacientes)
	
	FinProceso

SubProceso BuscarPacientePorDNI(pacientes, dniBuscar)
 
    Encontrado = Falso
	
    Para i = 1 Hasta Longitud(pacientes) hacer
        Si pacientes[i,3] = dniBuscar Entonces
            Mostrar pacientes(pacientes[i])
            Encontrado = Verdadero
        FinSi
    FinPara
	
    Si Encontrado = Falso Entonces
        Escribir "No se encontró paciente con DNI ", dniBuscar
    FinSi
FinSubProceso

SubProceso  BuscarPacientesPorApellido(pacientes, apellidoBuscar)
    Definir i como Entero
    Encontrados = 0
	
    Para i = 1 Hasta Longitud(pacientes) hacer
        Si pacientes[i,2] = apellidoBuscar Entonces
            Mostrar pacientes(pacientes[i])
            Encontrados = Encontrados + 1
        FinSi
    FinPara
	
    Si Encontrados = 0 Entonces
        Escribir "No se encontraron pacientes con apellido ", apellidoBuscar
    FinSi
FinSubProceso

SubProceso OrdenarPacientesPorNombreApellido(pacientes)
    Definir i,j como Entero
    Definir pacienteTemp como Cadena
	
    Para i = 0 Hasta 6 hacer
        Para j = 0 Hasta 6 hacer
            Si pacientes[j,1] > pacientes[j+1,1] Entonces
				Escribir "si anda"
                pacienteTemp = pacientes[j]
                pacientes[j] = pacientes[j+1]
                pacientes[j+1] = pacienteTemp
            FinSi
			
            Si pacientes[j,1] = pacientes[j+1,1] Entonces
                Si pacientes[j,1] > pacientes[j+1,1] Entonces
                    pacienteTemp = pacientes[j]
                    pacientes[j] = pacientes[j+1]
                    pacientes[j+1] = pacienteTemp
                FinSi
            FinSi
        FinPara
    FinPara
FinSubProceso
