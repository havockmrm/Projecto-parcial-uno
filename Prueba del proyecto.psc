Algoritmo Proyecto_de_gestión_academica 
    // Declaración de variables y constantes
    Definir MIN_estudiantes, MAX_estudiantes, NUM_materias Como Entero
    MIN_estudiantes = 4
    MAX_estudiantes = 40
    NUM_materias = 6
	Definir estudiantes[MAX_estudiantes, 7] Como Cadena // Nombres, Apellidos, Código, Cédula, Correo, Celular, Resultado
    Definir notas[MAX_estudiantes, NUM_materias, 3] Como Real // Nota1, Nota2, Supletorio
    Definir materias[NUM_materias, 2] Como Cadena // Código, Descripción
    Definir docentes[NUM_materias, 5] Como Cadena // CI, Nombres, Apellidos, Correo, Teléfono
	//inicialización materias 
    Definir ci_temp, telefono_temp Como Cadena
    Definir opcion_menu_principal, opcion_menu_registro, opcion_menu_notas, num_estudiantes, i, j, k Como Entero
    Definir nombre_materia, codigo_materia Como Cadena
    Definir nota1, nota2, supletorio, suma_notas, promedio Como Real
	materias[1,1] = "Calculo en una variable"
    materias[1,2] = "MAT001"
    materias[2,1] = "Algebra lineal"
    materias[2,2] = "MAT002"
    materias[3,1] = "Mecánica newtoniana"
    materias[3,2] = "MAT003"
    materias[4,1] = "Programación"
    materias[4,2] = "MAT004"
    materias[5,1] = "Deportes"
    materias[5,2] = "MAT005"
    materias[6,1] = "Laboratorio de mecánica newtoniana"
    materias[6,2] = "MAT006"
	
    // Menú principal
    Repetir
        Imprimir "Menu principal"
        Imprimir "1. Registrarse"
        Imprimir "2. Salir"
        Leer opcion_menu_principal
		
        Segun opcion_menu_principal Hacer
            1:
                // Registro del docente
                Escribir "Ingrese su número de cédula (10 dígitos):"
                Leer ci_temp
                Mientras Longitud(ci_temp) <> 10 Hacer
                    Escribir "Número de cédula inválido. Debe tener 10 dígitos."
                    Leer ci_temp
                FinMientras
                docentes[1,1] = ci_temp
				
                Escribir "Ingrese su correo electrónico:"
                Leer docentes[1,4]
                
                Escribir "Ingrese su número de teléfono (7-10 dígitos):"
                Leer telefono_temp
                Mientras Longitud(telefono_temp) < 7 O Longitud(telefono_temp) > 10 Hacer
                    Escribir "Número de teléfono inválido. Debe tener entre 7 y 10 dígitos."
                    Leer telefono_temp
                FinMientras
                docentes[1,5] = telefono_temp
				
                Escribir "Ingrese sus nombres:"
                Leer docentes[1,2]
                Escribir "Ingrese sus apellidos:"
                Leer docentes[1,3]
				
                // Menú de registro
                Repetir
                    Imprimir "1. Ingreso de notas de estudiantes"
                    Imprimir "2. Salir al menú principal"
                    Leer opcion_menu_registro
					
                    Segun opcion_menu_registro Hacer
                        1:
                            // Ingreso de estudiantes
                            Escribir "Ingrese la cantidad de estudiantes (4-40):"
                            Leer num_estudiantes
                            Mientras num_estudiantes < MIN_estudiantes O num_estudiantes > MAX_estudiantes Hacer
                                Escribir "Cantidad inválida. Debe ser entre 4 y 40."
                                Leer num_estudiantes
                            FinMientras
							
                            Para i = 1 Hasta num_estudiantes Hacer
                                Escribir "Ingrese el nombre del estudiante ", i, ":"
                                Leer estudiantes[i,1]
                                Escribir "Ingrese el apellido del estudiante ", i, ":"
                                Leer estudiantes[i,2]
                                Escribir "Ingrese el código del estudiante ", i, ":"
                                Leer estudiantes[i,3]
                                
                                Escribir "Ingrese la cédula del estudiante (10 dígitos):"
                                Leer ci_temp
                                Mientras Longitud(ci_temp) <> 10 Hacer
                                    Escribir "Número de cédula inválido. Debe tener 10 dígitos."
                                    Leer ci_temp
                                FinMientras
                                estudiantes[i,4] = ci_temp
								
                                Escribir "Ingrese el correo del estudiante:"
                                Leer estudiantes[i,5]
								
                                Escribir "Ingrese el número de celular del estudiante (7-10 dígitos):"
                                Leer telefono_temp
                                Mientras Longitud(telefono_temp) < 7 O Longitud(telefono_temp) > 10 Hacer
                                    Escribir "Número de celular inválido. Debe tener entre 7 y 10 dígitos."
                                    Leer telefono_temp
                                FinMientras
                                estudiantes[i,6] = telefono_temp
                            FinPara
							
                            // Ingreso de notas
                            Para i = 1 Hasta num_estudiantes Hacer
                                Escribir "Ingrese las notas para el estudiante ", estudiantes[i,1], " ", estudiantes[i,2], ":"
                                Para j = 1 Hasta NUM_materias Hacer
                                    Escribir "Materia: ", materias[j,1]
                                    Repetir
                                        Escribir "Ingrese la nota 1 (0-20):"
                                        Leer nota1
                                    Hasta Que nota1 >= 0 Y nota1 <= 20
                                    notas[i,j,1] = nota1
									
                                    Repetir
                                        Escribir "Ingrese la nota 2 (0-20):"
                                        Leer nota2
                                    Hasta Que nota2 >= 0 Y nota2 <= 20
                                    notas[i,j,2] = nota2
									
                                    suma_notas = nota1 + nota2
									
                                    Si suma_notas >= 28 Entonces
                                        estudiantes[i,7] = "APROBADO"
                                    Sino
                                        Si suma_notas <= 16 Entonces
                                            estudiantes[i,7] = "REPROBADO"
                                        Sino
                                            estudiantes[i,7] = "SUSPENDIDO"
                                            Repetir
                                                Escribir "Ingrese la nota del examen supletorio (0-40):"
                                                Leer supletorio
                                            Hasta Que supletorio >= 0 Y supletorio <= 40
                                            notas[i,j,2] = supletorio
                                            Si supletorio < 24 Entonces
                                                estudiantes[i,6] = "REPROBADO"
                                            FinSi
                                        FinSi
                                    FinSi
                                FinPara
                            FinPara
                        2:
                            // Salir al menú principal
                            Escribir "Saliendo al menú principal..."
                    FinSegun
                Hasta Que opcion_menu_registro = 2
        FinSegun
    Hasta Que opcion_menu_principal = 2
	
    // Imprimir datos de los profesores
    Escribir "Datos de los profesores:"
    Para i = 1 Hasta 1 Hacer // Solo un profesor registrado
        Para j = 1 Hasta NUM_materias Hacer
            Escribir "Profesor: [", i, "][", j, "] CI: ", docentes[i-1,0], ", Nombres: ", docentes[i-1,1], ", Apellidos: ", docentes[i-1,2], ", Correo: ", docentes[i-1,3], ", Teléfono: ", docentes[i-1,4]
        FinPara
    FinPara
	
    // Imprimir datos de los estudiantes
    Escribir "Datos de los estudiantes:"
    Para i = 1 Hasta num_estudiantes Hacer
        Escribir "Estudiante: [", i, "] Nombres: ", estudiantes[i,0], ", Apellidos: ", estudiantes[i,1], ", Código: ", estudiantes[i,2], ", Cédula: ", estudiantes[i,3], ", Correo: ", estudiantes[i,4], ", Celular: ", estudiantes[i,5], ", Resultado: ", estudiantes[i,6]
    FinPara
	
    Escribir "Saliendo del programa..."
FinAlgoritmo


