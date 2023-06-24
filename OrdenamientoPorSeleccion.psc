Algoritmo OrdenamientoPorSeleccion
    Definir arr Como Entero
	Dimension arr[5]
    Definir n, i, j, temp Como Entero
	
    arr[0] <- 64
    arr[1] <- 25
    arr[2] <- 12
    arr[3] <- 22
    arr[4] <- 11
	
    n = 5
	
    Para i <- 0 Hasta n-2 Con Paso 1 Hacer
        Para j <- i+1 Hasta n-1 Con Paso 1 Hacer
            Si arr[i] > arr[j] Entonces
                temp <- arr[i]
                arr[i] <- arr[j]
                arr[j] <- temp
            FinSi
        FinPara
    FinPara
	
    Para i <- 0 Hasta n-1 Con Paso 1 Hacer
        Escribir arr[i], " "
    FinPara
FinAlgoritmo