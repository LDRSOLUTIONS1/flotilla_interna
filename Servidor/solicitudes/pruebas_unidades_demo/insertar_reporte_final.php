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

//-----------------------------------------------------------Inicia el flujo para insertar el reporte de la prueba final demo
if (isset($_POST['id_asignacion_unidad_demo'])
&& isset($_FILES['reporte_final'])) {
    
    $valorid_asignacion_unidad_demo = $_POST['id_asignacion_unidad_demo'];
    $valor_reporte_final = $_FILES['reporte_final'];
    $valor_comentarios_finales = $_POST['comentarios_finales'];

    echo "id_asignacion_unidad_demo: " . $valorid_asignacion_unidad_demo . " ";
    echo "reporte_final: " . $_FILES['reporte_final']['name'] . " ";
    echo "comentarios_finales: " . $valor_comentarios_finales . " ";

    $nombre_reporte_final = 'reporte_final_' . $valorid_asignacion_unidad_demo . '_' . basename($_FILES['reporte_final']['name']);

    $ruta_reporte_final = "../../archivos/files/files_asignacion_demo/pruebas_unidades_demo/reportes_finales/";

    move_uploaded_file($_FILES['reporte_final']['tmp_name'], $ruta_reporte_final . $nombre_reporte_final);

    //actualizamos la asignacion para insertar su reporte final
    $querysubirreportefinal = "UPDATE asignacion_unidad_demo SET reporte_final_prueba = '$nombre_reporte_final', 
                                                                    comentarios_finales = '$valor_comentarios_finales', 
                                                                    id_colaborador_sube_reporte_final = '$colaborador' ,
                                                                    id_estado_prueba_demo = 4
                                                            WHERE id_asignacion_unidad_demo = '$valorid_asignacion_unidad_demo'";

    $resultadoreporte = $conexion->query($querysubirreportefinal);
    if ($resultadoreporte) {
        echo "Reporte final insertado correctamente";
    } else {
        echo "Error al insertar reporte final: " . $conexion->error;
    }
}
?>