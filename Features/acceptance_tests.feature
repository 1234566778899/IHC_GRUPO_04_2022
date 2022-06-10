--ACCEPTANCE TESTS

//Landing Page

Feature: Contactar con la empresa
	Scenario: Se dirige al formulario;
		{GIVEN} Que el usuario está en el landing page
		WHEN Se selecciona la opción <Contacto>
		THEN Se muestra un <formulario> con los datos a solicitar 
	Scenario: Se completa el formulario
		GIVEN Que el usuario está en el landing page
			AND se encuentra la sección de contacto
		WHEN Se completen todas los <datos solicitados> en formulario
			AND Se selecciona la opción <Enviar Mensaje>
		THEN Se envía la información al sistema.
	Scenario: Mediante otra forma de contacto
		GIVEN Que el usuario está en el landing page
		WHEN Se realiza el <scroll> hasta el flooter
		THEN Se muestra una sección con <los números telefónicos>
			AND <los correos> de contacto

Feature: Conocer de qué trata la aplicación
	Scenario: Mediante click
		GIVEN Que el usuario está en el landing page
		WHEN Se selecciona <la opción ¿Qué es MiDoc Virtual?>
		THEN Se muestra la <infomarción de la app> con los beneficios de la app 
			AND <las opciones> para descargar por Google Play y App Store.
	Scenario: Mediante scroll
		GIVEN Que el usuario está en el landing page
		WHEN Se realice el <scroll> hasta la sección <¿Qué es MiDoc Virtual?>
		THEN Se muestra la <infomarción de la app> con los beneficios de la app 
			AND <las opciones> para descargar por Google Play y App Store.

Feature: Ver beneficios de la app
	Scenario: Mediante click
		GIVEN Que el usuario está en el landing page
		WHEN Se selecciona <la opción beneficios>
		THEN Se muestran los <cards> con los beneficios de la app
	Scenario: Mediante scroll
		GIVEN Que el usuario está en el landing page
		WHEN Se realicé el <scroll> hasta la sección de beneficios
		THEN Se muestran los <cards> con los beneficios de la app

Feature: Conocer cómo se usa la app
	Scenario: Mediante scroll 
		GIVEN Que el usuario está en el landing page
		WHEN Se realiza el <scroll> hasta la sección "¿Cómo se usa?"
		THEN Se muestran los <cards> con las principales instrucciones de la app

Feature: Ver redes sociales de la app
	Scenario: Mediante scroll
		GIVEN Que el usuario está en el landing page
		WHEN Se realiza el <scroll> hasta el flooter
		THEN Se muestra una sección con <las redes sociales de la app>

//Aplicativo

--Usuarios
Feature: Realizar una reserva de medicamento
	Scenario: Se realiza la reserva correctamente
		GIVEN: Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Búsqueda>
			AND Se realiza una <Búsqueda>
			AND Existe resultado para la búsqueda
			AND Se selecciona un <resultado>
			AND Se selecciona la opción <Reservar>
			AND Se realiza la reserva en el sistema
		THEN Se muestra un <mensaje de reserva realizada>
	Scenario: No se realiza la reserva
		GIVEN: Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Búsqueda>
			AND Se realiza una <Búsqueda>
			AND Existe resultado para la búsqueda
			AND Se selecciona un <resultado>
			AND Se selecciona la opción <Reservar>
			AND No se realiza la reserva en el sistema
		THEN Se muestra un <mensaje error>
	Scenario: No existen resultados
		GIVEN: Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Búsqueda>
			AND Se realiza una <Búsqueda>
			AND No existe resultado para la búsqueda
		THEN Se muestra un <mensaje de no existen resultados>

Feature: Cancelar una reserva
	Scenario: Se cancela la reserva correctamente
		GIVEN Se ha iniciado la sesión correctamente
		WHEN Se selecciona la opción <Ver mi historial>
			AND Existen reservas realizadas
			AND Se selecciona <una reserva>
			AND Se selecciona la opción <Cancelar reserva>
			AND Se cancela la reserva en el sistema
		THEN Se muestra <un mensaje de reserva cancelada>
	Scenario: No se cancela la reserva correctamente
		GIVEN Se ha iniciado la sesión correctamente
		WHEN Se selecciona la opción <Ver mi historial>
			AND Existen reservas realizadas
			AND Se selecciona <una reserva>
			AND Se selecciona la opción <Cancelar reserva>
			AND No se cancela la reserva en el sistema
		THEN Se muestra <un mensaje de error>
	Scenario: No se cancela la reserva correctamente
		GIVEN Se ha iniciado la sesión correctamente
		WHEN Se selecciona la opción <Ver mi historial>
			AND No existen reservas realizadas
		THEN Se muestra <un mensaje de no existen información>

Feature: Consultar los componentes de un medicamento
	Scenario: Se encuentran resultados
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <ChatBot>
			AND Se selecciona la opción <Componentes de un medicmaento>
			AND Se ingresa <el nombre de un medicamento>
			AND Se encuentran  resultados
		THEN Se muestra <una fotografía del medicamento>
			AND <una lista de los componentes del medicamento>
	Scenario: No se encuentran resultados
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <ChatBot>
			AND Se selecciona la opción <Componentes de un medicmaento>
			AND Se ingresa <el nombre de un medicamento>
			AND No se encuentran  resultados
		THEN Se muestra <un mensaje de error>

Feature: Buscar medicamentos similares
	Scenario: Se encuentran resultados
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <ChatBot>
			AND Se selecciona la opción <Medicamentos similares>
			AND Se ingresa el <nombre de un medicamento>
			AND Se encuentran resultados
		THEN Se muestran <imágenes> 
			AND <información> de los medicamentos encontrados 
	Scenario: No se encuentran resultados
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <ChatBot>
			AND Se selecciona la opción <Medicamentos similares>
			AND Se ingresa el <nombre de un medicamento>
			AND No se encuentran resultados
		THEN Se muestra <un mensaje de error>

Feature: Buscar medicamentos por síntomas
	Scenario: Se encuentran resultados
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <ChatBot>
			AND Se selecciona la opción <Consulta por síntomas>
			AND Se ingresan los <síntomas o malestares> de la persona
			AND Se encuentran resultados
		THEN Se muestra <el medicamento recomendado>
			AND <la información del establecimiento> donde lo venden
	Scenario: No se encuentran resultados
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <ChatBot>
			AND Se selecciona la opción <Consulta por síntomas>
			AND Se ingresan <los síntomas o malestares> de la persona
			AND No se encuentran resultados
		THEN Se muestra un <mensaje de no se encontraron resultados> 

--Boticas
Feature: Ver clientes frecuentes
	Scenario: Existe información
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Clientes frecuentes>
			AND Existe información para mostrar
		THEN Se muestra una <lista de los clientes que más compras realizaron>
	Scenario: No existe informacion
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Clientes frecuentes>
			AND No existe información para mostrar
		THEN Se muestra un <mensaje de error>

Feature: Ver ingresos semanales
	Scenario: Existe información
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Mis Ingresos>
			AND Existe información para mostrar
		THEN Se muestra un <gráfico estadístico> con los ingresos de la semana			
			AND se muestra una <lista> con información de los ingresos
	Scenario: No existe información
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Mis ingresos>
			AND No existe información para mostrar
		THEN Se muestra un <mensaje de error>

Feature: Editar inventario
	Scenario: Se actualiza el inventario correctamente
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Actualizar inventario>
			AND Se selecciona la opción <Modificar> o <Eliminar> o <Añadir>
			AND Se ingresan los <datos solicitados>
			AND Se guardan los cambios coreectamente
		THEN Se muestra un <mensaje de éxito>	
	Scenario: No se actualiza el inventario correctamente
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Actualizar inventario>
			AND Se selecciona la opción <Modificar> o <Eliminar> o <Añadir>
			AND Se ingresan los <datos solicitados>
			AND No se guardan los cambios
		THEN Se muestra un <mensaje de error>
	
Feature: Editar información
	Scenario: Se guarda la información correctamente
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Editar mi información>
			AND Se ingresan los <datos a editar>
			AND Se selecciona la opción <Guardar Cambios>
			AND Se guardan los cambios correctamente
		THEN Se muestra un <mensaje de éxito>
	Scenario: No se guarda la información correctamente
		GIVEN Se ha iniciado sesión correctamente
		WHEN Se selecciona la opción <Editar mi información>
			AND Se ingresan los <datos a editar>
			AND Se selecciona la opción <Guardar Cambios>
			AND No se guardan los cambios
		THEN Se muestra un <mensaje de error>	
