@Module_View_Issue
Feature: Validar modulo View Issues
  @List_Issue_Projects
  Scenario: Generar lista de issues desde vista todos los proyectos
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    When pulso el boton View Issue
    Then se lista todos los issues existentes para todos los proyectos

  @View_Project
  Scenario: Ingresar a un proyecto
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    When pulso el boton All projects
    And selecciono un proyecto
    Then la pagina me dirije a el proyecto seleccionado

  @View_All_Issues
  Scenario: Generar lista de issues desde vista todos los proyectos
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And estoy en la vista a todos los proyectos
    When pulso el boton View Issue
    Then se lista todos los issues para todos los proyectos

  @View_Issues_From_Project
  Scenario: Visualizar lista de issues desde desde un proyecto especifico
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And estoy en la vista con un proyecto seleccionado
    When pulso el boton View Issue
    Then se lista los issues del proyecto especifico

  @View_Info
  Scenario: Visualizar informacion del issue
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    When pulso el boton View Issue
    And doy click en el ID del Issue
    Then ingreso al formulario para ver la informacion del Issue

  @Search_Issue
  Scenario: Buscar Issue
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    When pulso el boton View Issue
    And escribo el ID del issue en el campo Buscar
    And pulso el boton enter
    Then la pagina carga la informacion del Issue

  @Search_Issue_Reporter
  Scenario: Buscar Issue por Filtro "Reporter"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Reporter
    And selecciono un usuario
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados por el usuario seleccionado

  @Search_Issue_Assigned
  Scenario: Buscar Issue por Filtro "Assigned to"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Assigned to
    And selecciono un usuario asignado
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados por el usuario asignado seleccionado

  @Search_Issue_Monitored
  Scenario: Buscar Issue por Filtro "Monitored By"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Monitored By
    And selecciono un usuario de la lista
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados por el usuario monitored seleccionado

  @Search_Issue_Note
  Scenario: Buscar Issue por Filtro "Note By"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Note By
    And selecciono un usuario note
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados por el usuario note by seleccionado

  @Search_Issue_Priority
  Scenario: Buscar Issue por Filtro "Priority"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Priority
    And selecciono una prioridad
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados con la prioridad seleccionada

  @Search_Issue_Severity
  Scenario: Buscar Issue por Filtro "Severity"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Severity
    And selecciono una severidad
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados con la severidad seleccionada

  @Search_Issue_Status
  Scenario: Buscar Issue por Filtro "View Status"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en View Status
    And selecciono una estatus
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados con el estatus seleccionado

  @Search_Issue_Category
  Scenario: Buscar Issue por Filtro "Category"
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Category
    And selecciono una categoria
    And pulso el boton Apply Filter
    Then la pagina me muestra los issues reportados con la categoria seleccionada

  @Reset_Filter
  Scenario: Resetear filtros
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    And tengo seleccionado filtros
    When doy click en el boton Reset Filter
    Then la pagina se actualiza y borra todos los filtros

  @Print_Issues
  Scenario: Imprimir reporte de Issues
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Print Reports
    Then la pagina me muestra una hoja con todos los issues listo para imprimir

  @Export_CSV_Issues
  Scenario: Exportar Issues en formato CSV
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en CSV Export
    Then la pagina me descarga un archivo csv con la lista de issues

  @Export_Excel_Issues
  Scenario: Exportar Issues en formato Excel
    Given ingreso a la pagina principal
    And inicio sesion con mis credenciales
    And pulso el boton View Issues
    When doy click en Excel Export
    Then la pagina me descarga un archivo xml con la lista de issues