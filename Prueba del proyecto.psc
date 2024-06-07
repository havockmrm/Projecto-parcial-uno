Algoritmo GestionNotasUniversidad

    // Definición de estructuras
    Tipo
        Profesor Es Registro
            CI: Texto
            Nombres: Texto
            Apellidos: Texto
            CorreoInstitucional: Texto
            NumeroTelefonico: Texto
        FinRegistro
    FinTipo
    
    Tipo
        Estudiante Es Registro
            Nombres: Texto
            Apellidos: Texto
            Codigo: Texto
            Cedula: Texto
            CorreoElectronico: Texto
            NumeroCelular: Texto
            Nota1: Real
            Nota2: Real
            NotaSuspension: Real
            Estado: Texto
        FinRegistro
    FinTipo
    
    Tipo
        Asignatura Es Registro
            Codigo: Texto
            Descripcion: Texto
        FinRegistro
    FinTipo

    // Variables
    Profesores: Vector De Profesor
    Estudiantes: Vector De Estudiante
    Asignaturas: Vector De Asignatura
    CantEstudiantes, i, j: Entero

    // Menú Principal
    Mientras Verdadero Hacer
        LimpiarPantalla()
        Escribir "Menú Principal"
        Escribir "1. Registro de Datos"
        Escribir "2. Salir"
        Leer opcion

        Segun opcion Hacer
            Caso "1":
                // Registro de Datos
                LimpiarPantalla()
                Escribir "Registro de Datos"
                Escribir "1. Registro de Profesores"
                Escribir "2. Registro de Asignaturas"
                Escribir "3. Registro de Estudiantes"
                Leer opcionRegistro

                Segun opcionRegistro Hacer
                    Caso "1":
                        // Registro de Profesores
                        LimpiarPantalla()
                        Escribir "Registro de Profesores"
                        Escribir "Ingrese CI (7-10 dígitos):"
                        Leer ci
                        Mientras Longitud(ci) < 7 O Longitud(ci) > 10 Hacer
                            Escribir "CI inválido. Ingrese CI (7-10 dígitos):"
                            Leer ci
                        FinMientras
                        
                        Escribir "Ingrese Nombres:"
                        Leer nombres
                        Escribir "Ingrese Apellidos:"
                        Leer apellidos
                        Escribir "Ingrese Correo Institucional:"
                        Leer correo
                        Escribir "Ingrese Número Telefónico (7-10 dígitos):"
                        Leer telefono
                        Mientras Longitud(telefono) < 7 O Longitud(telefono) > 10 Hacer
                            Escribir "Número telefónico inválido. Ingrese Número Telefónico (7-10 dígitos):"
                            Leer telefono
                        FinMientras

                        // Guardar profesor
                        nuevoProfesor.CI = ci
                        nuevoProfesor.Nombres = nombres
                        nuevoProfesor.Apellidos = apellidos
                        nuevoProfesor.CorreoInstitucional = correo
                        nuevoProfesor.NumeroTelefonico = telefono
                        Agregar(Profesores, nuevoProfesor)
                    FinCaso

                    Caso "2":
                        // Registro de Asignaturas
                        LimpiarPantalla()
                        Escribir "Registro de Asignaturas"
                        Para i = 1 Hasta 6 Con Paso 1 Hacer
                            Escribir "Ingrese Código de la Asignatura ", i, ":"
                            Leer codigo
                            Escribir "Ingrese Descripción de la Asignatura ", i, ":"
                            Leer descripcion
                            nuevaAsignatura.Codigo = codigo
                            nuevaAsignatura.Descripcion = descripcion
                            Agregar(Asignaturas, nuevaAsignatura)
                        FinPara
                    FinCaso

                    Caso "3":
                        // Registro de Estudiantes
                        LimpiarPantalla()
                        Escribir "Registro de Estudiantes"
                        Escribir "Ingrese la cantidad de estudiantes a registrar (4-40):"
                        Leer CantEstudiantes
                        Mientras CantEstudiantes < 4 O CantEstudiantes > 40 Hacer
                            Escribir "Cantidad inválida. Ingrese la cantidad de estudiantes a registrar (4-40):"
                            Leer CantEstudiantes
                        FinMientras

                        Para i = 1 Hasta CantEstudiantes Con Paso 1 Hacer
                            Escribir "Registro del estudiante ", i
                            Escribir "Ingrese Nombres:"
                            Leer nombres
                            Escribir "Ingrese Apellidos:"
                            Leer apellidos
                            Escribir "Ingrese Código:"
                            Leer codigo
                            Escribir "Ingrese Cédula (10 dígitos):"
                            Leer cedula
                            Mientras Longitud(cedula) <> 10 Hacer
                                Escribir "Cédula inválida. Ingrese Cédula (10 dígitos):"
                                Leer cedula
                            FinMientras

                            Escribir "Ingrese Correo Electrónico:"
                            Leer correo
                            Escribir "Ingrese Número de Celular (7-10 dígitos):"
                            Leer telefono
                            Mientras Longitud(telefono) < 7 O Longitud(telefono) > 10 Hacer
                                Escribir "Número de celular inválido. Ingrese Número de Celular (7-10 dígitos):"
                                Leer telefono
                            FinMientras

                            nuevoEstudiante.Nombres = nombres
                            nuevoEstudiante.Apellidos = apellidos
                            nuevoEstudiante.Codigo = codigo
                            nuevoEstudiante.Cedula = cedula
                            nuevoEstudiante.CorreoElectronico = correo
                            nuevoEstudiante.NumeroCelular = telefono
                            nuevoEstudiante.Nota1 = -1
                            nuevoEstudiante.Nota2 = -1
                            nuevoEstudiante.NotaSuspension = -1
                            nuevoEstudiante.Estado = "No evaluado"
                            Agregar(Estudiantes, nuevoEstudiante)
                        FinPara

                        // Ingreso de Notas
                        Para i = 1 Hasta CantEstudiantes Con Paso 1 Hacer
                            LimpiarPantalla()
                            Escribir "Ingreso de notas para el estudiante: ", Estudiantes[i].Nombres, " ", Estudiantes[i].Apellidos
                            Escribir "Ingrese Nota 1 (0-20):"
                            Leer nota1
                            Mientras nota1 < 0 O nota1 > 20 Hacer
                                Escribir "Nota inválida. Ingrese Nota 1 (0-20):"
                                Leer nota1
                            FinMientras

                            Escribir "Ingrese Nota 2 (0-20):"
                            Leer nota2
                            Mientras nota2 < 0 O nota2 > 20 Hacer
                                Escribir "Nota inválida. Ingrese Nota 2 (0-20):"
                                Leer nota2
                            FinMientras

                            sumaNotas = nota1 + nota2
                            Estudiantes[i].Nota1 = nota1
                            Estudiantes[i].Nota2 = nota2

                            Si sumaNotas >= 28 Entonces
                                Estudiantes[i].Estado = "Aprueba"
                            SinoSi sumaNotas <= 16 Entonces
                                Estudiantes[i].Estado = "Reprueba"
                            Sino
                                Estudiantes[i].Estado = "Suspensión"
                                Escribir "Ingrese Nota de Examen de Suspensión (0-40):"
                                Leer notaSuspension
                                Mientras notaSuspension < 0 O notaSuspension > 40 Hacer
                                    Escribir "Nota inválida. Ingrese Nota de Examen de Suspensión (0-40):"
                                    Leer notaSuspension
                                FinMientras

                                Estudiantes[i].NotaSuspension = notaSuspension

                                Si notaSuspension < 24 Entonces
                                    Estudiantes[i].Estado = "Reprueba"
                                Sino
                                    Estudiantes[i].Estado = "Aprueba"
                                FinSi
                            FinSi
                        FinPara
                    FinCaso

                    Caso "4":
                        // Salir al Menú Principal
                        Continuar
                    FinCaso
                FinSegun
            FinCaso

            Caso "2":
                // Salir del Programa
                Escribir "Saliendo del programa..."
                Salir
            FinCaso
        FinSegun
    FinMientras

    // Impresión de Resultados
    LimpiarPantalla()
    Escribir "Resultados:"
    
    Escribir "Profesores:"
    Para i = 1 Hasta Longitud(Profesores) Con Paso 1 Hacer
        Escribir "CI: ", Profesores[i].CI
        Escribir "Nombres: ", Profesores[i].Nombres
        Escribir "Apellidos: ", Profesores[i].Apellidos
        Escribir "Correo Institucional: ", Profesores[i].CorreoInstitucional
        Escribir "Número Telefónico: ", Profesores[i].NumeroTelefonico
        Escribir "----------------------"
    FinPara

    Escribir "Asignaturas:"
    Para i = 1 Hasta Longitud(Asignaturas) Con Paso 1 Hacer
        Escribir "Código: ", Asignaturas[i].Codigo
        Escribir "Descripción: ", Asignaturas[i].Descripcion
        Escribir "----------------------"
    FinPara

    Escribir "Estudiantes:"
    Para i = 1 Hasta Longitud(Estudiantes) Con Paso 1 Hacer
        Escribir "Nombres: ", Estudiantes[i].Nombres
        Escribir "Apellidos: ", Estudiantes[i].Apellidos
        Escribir "Código: ", Estudiantes[i].Codigo
        Escribir "Cédula: ", Estudiantes[i].Cedula
        Escribir "Correo Electrónico: ", Estudiantes[i].CorreoElectronico
        Escribir "Número de Celular: ", Estudiantes[i].NumeroCelular
        Escribir "Nota 1: ", Estudiantes[i].Nota1
        Escribir "Nota 2: ", Estudiantes[i].Nota2
        Si Estudiantes[i].Estado = "Suspensión" Entonces
            Escribir "Nota Suspensión: ", Estudiantes[i].NotaSuspension
        FinSi
        Escribir "Estado: ", Estudiantes[i].Estado
        Escribir "----------------------"
    FinPara

FinAlgoritmo



