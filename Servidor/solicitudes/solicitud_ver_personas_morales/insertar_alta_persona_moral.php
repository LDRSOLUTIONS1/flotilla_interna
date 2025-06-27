<?php
// Mostrar errores para depuración
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("../../conexion.php");


//-----------------------------------------------------------------------obtenemos el id del colaborador para saber quien es el que esta logeado
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];


//-----------------------------------------------------------Inicia el flujo de asignacion solicitando por post la informacion del js

if (isset($_POST['institucionorganizacion'])
&& isset($_POST['identificacionlegal'])
&& isset($_POST['viegnciarepresentantelegal'])
&& isset($_FILES['archivoidentificacionrepresentantelegal'])
&& isset($_FILES['archivopoderepresentantelegal'])
&& isset($_POST['rfcpersonamoral'])
&& isset($_FILES['archivoRFCpersonamoral'])
&& isset($_POST['domiciliodomiciliopersonamoral'])
&& isset($_FILES['archivodomiciliopersonamoral'])
&& isset($_FILES['archivoescrituraconstitutiva'])
&& isset($_FILES['archivoestatusociales'])){

    $valorinstitucionorganizacion = $_POST['institucionorganizacion'];
    $valoridentificacionlegal = $_POST['identificacionlegal'];
    $valorviegnciarepresentantelegal = $_POST['viegnciarepresentantelegal'];
    $valorarchivoidentificacionrepresentantelegal = $_FILES['archivoidentificacionrepresentantelegal'];
    $valorarchivopoderepresentantelegal = $_FILES['archivopoderepresentantelegal'];
    $valorrfcpersonamoral = $_POST['rfcpersonamoral'];
    $valorarchivoRFCpersonamoral = $_FILES['archivoRFCpersonamoral'];
    $valordomiciliodomiciliopersonamoral = $_POST['domiciliodomiciliopersonamoral'];
    $valorarchivodomiciliopersonamoral = $_FILES['archivodomiciliopersonamoral'];
    $valorarchivoescrituraconstitutiva = $_FILES['archivoescrituraconstitutiva'];
    $valorarchivoestatusociales = $_FILES['archivoestatusociales'];

    echo "institucionorganizacion: " . $valorinstitucionorganizacion . " ";
    echo "identificacionlegal: " . $valoridentificacionlegal . " ";
    echo "viegnciarepresentantelegal: " . $valorviegnciarepresentantelegal . " ";
    echo "archivoidentificacionrepresentantelegal: " . $valorarchivoidentificacionrepresentantelegal . " ";
    echo "archivopoderepresentantelegal: " . $valorarchivopoderepresentantelegal . " ";
    echo "rfcpersonamoral: " . $valorrfcpersonamoral . " ";
    echo "archivoRFCpersonamoral: " . $valorarchivoRFCpersonamoral . " ";
    echo "domiciliodomiciliopersonamoral: " . $valordomiciliodomiciliopersonamoral . " ";
    echo "archivodomiciliopersonamoral: " . $valorarchivodomiciliopersonamoral . " ";
    echo "archivoescrituraconstitutiva: " . $valorarchivoescrituraconstitutiva . " ";
    echo "archivoestatusociales: " . $valorarchivoestatusociales . " ";

    //obtener los documentos correspondientes

    $nombrearchivoidentificacionrepresentantelegal = 'ID_' . $valorviegnciarepresentantelegal . '_' . basename($_FILES['archivoidentificacionrepresentantelegal']['name']);
    $nombrearchivopoderepresentantelegal = 'PODER_' . $valorviegnciarepresentantelegal . '_' . basename($_FILES['archivopoderepresentantelegal']['name']);
    $nombrearchivoRFCpersonamoral = 'RFC_' . $valorrfcpersonamoral . '_' . basename($_FILES['archivoRFCpersonamoral']['name']);
    $nombredarchivodomiciliopersonamoral = 'domicilio_' . $valorrfcpersonamoral . '_' . basename($_FILES['archivodomiciliopersonamoral']['name']);
    $nombrearchivoescrituraconstitutiva = 'escrituraconstitutiva_' . $valorrfcpersonamoral . '_' . basename($_FILES['archivoescrituraconstitutiva']['name']);
    $nombrearchivoestatusociales = 'estatusociales_' . $valorrfcpersonamoral . '_' . basename($_FILES['archivoestatusociales']['name']);

    $rutarchivoidentificacionrepresentantelegal = "../../archivos/files/files_asignacion_demo/personas_morales/files_id/";
    $rutarchivopoderepresentantelegal = "../../archivos/files/files_asignacion_demo/personas_morales/files_poder/";
    $rutarchivoRFCpersonamoral = "../../archivos/files/files_asignacion_demo/personas_morales/files_RFC/";
    $routadarchivodomiciliopersonamoral = "../../archivos/files/files_asignacion_demo/personas_morales/files_domicilio/";
    $rutarchivoescrituraconstitutiva = "../../archivos/files/files_asignacion_demo/personas_morales/files_escrituraconstitutiva/";
    $rutarchivoestatusociales = "../../archivos/files/files_asignacion_demo/personas_morales/files_estatusociales/";

    move_uploaded_file($_FILES['archivoidentificacionrepresentantelegal']['tmp_name'], $rutarchivoidentificacionrepresentantelegal . $nombrearchivoidentificacionrepresentantelegal);
    move_uploaded_file($_FILES['archivopoderepresentantelegal']['tmp_name'], $rutarchivopoderepresentantelegal . $nombrearchivopoderepresentantelegal);
    move_uploaded_file($_FILES['archivoRFCpersonamoral']['tmp_name'], $rutarchivoRFCpersonamoral . $nombrearchivoRFCpersonamoral);
    move_uploaded_file($_FILES['archivodomiciliopersonamoral']['tmp_name'], $routadarchivodomiciliopersonamoral . $nombredarchivodomiciliopersonamoral);
    move_uploaded_file($_FILES['archivoescrituraconstitutiva']['tmp_name'], $rutarchivoescrituraconstitutiva . $nombrearchivoescrituraconstitutiva);
    move_uploaded_file($_FILES['archivoestatusociales']['tmp_name'], $rutarchivoestatusociales . $nombrearchivoestatusociales);

    //insertar los datos y los archivos

    $queryinsertarpersonamoral = "INSERT INTO personas_morales(
                                               id_registrador_persona_moral,
                                               organizacion_institucion,
                                               identificacion_representante_legal_seccion,
                                               vigencia,
                                               archivo_identificacion_representante_legal,
                                               archivo_poder_representante_legal,
                                               rfc_moral,
                                               archivo_rfc_moral,
                                               domicilio,
                                               archivo_domiclio_moral,
                                               archivo_escritura_constitutiva,
                                               archivo_escrituras_estatus_sociales)
                                    VALUES (
                                               '$colaborador',
                                               '$valorinstitucionorganizacion',
                                               '$valoridentificacionlegal',
                                               '$valorviegnciarepresentantelegal',
                                               '$nombrearchivoidentificacionrepresentantelegal',
                                               '$nombrearchivopoderepresentantelegal',
                                               '$valorrfcpersonamoral',
                                               '$nombrearchivoRFCpersonamoral',
                                               '$valordomiciliodomiciliopersonamoral',
                                               '$nombredarchivodomiciliopersonamoral',
                                               '$nombrearchivoescrituraconstitutiva',
                                               '$nombrearchivoestatusociales')";
                        
                        echo $queryinsertarpersonamoral;

    $resultinsertarpersonamoral = mysqli_query($conexion, $queryinsertarpersonamoral);

    if ($resultinsertarpersonamoral) {
        echo "Persona moral insertada";
    }else{
        echo "Persona moral no insertada";
    }
    
}