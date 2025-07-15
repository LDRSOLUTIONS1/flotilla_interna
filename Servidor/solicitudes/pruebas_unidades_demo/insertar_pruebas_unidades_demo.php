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


//-----------------------------------------------------------Inicia el flujo de insertar la prueba solicitando por post la informacion del js
if (isset($_POST['id_asignacion_unidad_demo'])
&& isset($_POST['nombre_conductor'])
&& isset($_POST['tipo_prueba'])
&& isset($_POST['temperatura'])
&& isset($_POST['revoluciones'])
&& isset($_POST['velocidad'])
&& isset($_POST['kilometraje'])
&& isset($_FILES['foto_tablero'])
&& isset($_FILES['foto_odometro'])
&& isset($_FILES['foto_unidad_exterior'])
&& isset($_POST['comentarios_pruebas_demo'])) {


    $valorid_asignacion_unidad_demo = $_POST['id_asignacion_unidad_demo'];
    $valornombre_conductor = $_POST['nombre_conductor'];
    $valortipo_prueba = $_POST['tipo_prueba'];
    $valortemperatura = $_POST['temperatura'];
    $valorrevoluciones = $_POST['revoluciones'];
    $valorvelocidad = $_POST['velocidad'];
    $valorkilometraje = $_POST['kilometraje'];
    $valorfoto_tablero = $_FILES['foto_tablero'];
    $valorfoto_odometro = $_FILES['foto_odometro'];
    $valorfoto_unidad_exterior = $_FILES['foto_unidad_exterior'];
    $valorcomentarios_pruebas_demo = $_POST['comentarios_pruebas_demo'];

    echo "id_asignacion_unidad_demo: " . $valorid_asignacion_unidad_demo . " ";
    echo "nombre_conductor: " . $valornombre_conductor . " ";
    echo "tipo_prueba: " . $valortipo_prueba . " ";
    echo "temperatura: " . $valortemperatura . " ";
    echo "revoluciones: " . $valorrevoluciones . " ";
    echo "velocidad: " . $valorvelocidad . " ";
    echo "kilometraje: " . $valorkilometraje . " ";
    echo "foto_tablero: " . $_FILES['foto_tablero']['name'] . " ";
    echo "foto_odometro: " . $_FILES['foto_odometro']['name'] . " ";
    echo "foto_unidad_exterior: " . $_FILES['foto_unidad_exterior']['name'] . " ";
    echo "comentarios_pruebas_demo: " . $valorcomentarios_pruebas_demo . " ";

    //obtener las fotos correspondientes
    $nombrefoto_tablero = 'foto_tablero_' . $valornombre_conductor . '_' . basename($_FILES['foto_tablero']['name']);
    $nombrefoto_odometro = 'foto_odometro_' . $valornombre_conductor . '_' . basename($_FILES['foto_odometro']['name']);
    $nombrefoto_unidad_exterior = 'foto_unidad_exterior_' . $valornombre_conductor . '_' . basename($_FILES['foto_unidad_exterior']['name']);

    $rutafoto_tablero = "../../archivos/files/files_asignacion_demo/pruebas_unidades_demo/fotos_tablero/";
    $rutafoto_odometro = "../../archivos/files/files_asignacion_demo/pruebas_unidades_demo/fotos_odometro/";
    $rutafoto_unidad_exterior = "../../archivos/files/files_asignacion_demo/pruebas_unidades_demo/fotos_unidad_exterior/";

    move_uploaded_file($_FILES['foto_tablero']['tmp_name'], $rutafoto_tablero . $nombrefoto_tablero);
    move_uploaded_file($_FILES['foto_odometro']['tmp_name'], $rutafoto_odometro . $nombrefoto_odometro);
    move_uploaded_file($_FILES['foto_unidad_exterior']['tmp_name'], $rutafoto_unidad_exterior . $nombrefoto_unidad_exterior);

    
    //actualizamos el estado de la asignacion en la tabla asignacion_unidad_demo
    $querycontarpruebas = "SELECT COUNT(*) AS total FROM pruebas_unidad_demo WHERE id_asignacion_unidad_demo = '$valorid_asignacion_unidad_demo'";
    $resultadocontarpruebas = mysqli_query($conexion, $querycontarpruebas);
    $fila = mysqli_fetch_assoc($resultadocontarpruebas);
    $totalpruebas = $fila['total'];

if ($totalpruebas == 0) {
    // Primera prueba: se actualiza el estado a EN PROCESO
    $queryactualizarasignacion = "UPDATE asignacion_unidad_demo SET id_estado_prueba_demo = 2 WHERE id_asignacion_unidad_demo = '$valorid_asignacion_unidad_demo'";
    $resultadoactualizarasignacion = mysqli_query($conexion, $queryactualizarasignacion);
}


    //insertar la prueba
    $queryinsertarprueba = "INSERT INTO pruebas_unidad_demo (id_asignacion_unidad_demo,
                                                            fecha_prueba,
                                                            nombre_del_conductor,
                                                            tipo_prueba,
                                                            temperatura,
                                                            revoluciones,
                                                            velocidad,
                                                            kilometraje,
                                                            foto_tablero,
                                                            foto_odometro,
                                                            foto_unidad,
                                                            comentarios,
                                                            id_colaborador_registra_prueba)
                                VALUES ('$valorid_asignacion_unidad_demo',
                                        NOW(),
                                        '$valornombre_conductor',
                                        '$valortipo_prueba',
                                        '$valortemperatura',
                                        '$valorrevoluciones',
                                        '$valorvelocidad',
                                        '$valorkilometraje',
                                        '$nombrefoto_tablero',
                                        '$nombrefoto_odometro',
                                        '$nombrefoto_unidad_exterior',
                                        '$valorcomentarios_pruebas_demo',
                                        '$colaborador')";
    $resultadoprueba = $conexion->query($queryinsertarprueba);
    if ($resultadoprueba) {
    echo "Prueba insertada correctamente";
} else {
    echo "Error al insertar prueba: " . $conexion->error;
}
}
?>


