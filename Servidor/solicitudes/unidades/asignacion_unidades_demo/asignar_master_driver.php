<?php 
include("../../../conexion.php");

if (isset($_POST['id_master_driver']) && isset($_POST['id_asignacion'])) {

    $id_master_driver = $_POST['id_master_driver'];
    $id_asignacion = $_POST['id_asignacion'];

    echo "id_master_driver: " . $id_master_driver . " ";
    echo "id_asignacion: " . $id_asignacion . " ";

$query = "UPDATE asignacion_unidad_demo SET id_asignar_prueba_demo_master_driver = '$id_master_driver' WHERE id_asignacion_unidad_demo = '$id_asignacion'";

    if ($conexion->query($query) === TRUE) {
        echo "Asignacion realizada con exito";
    } else {
        echo "Error al realizar la asignacion: " . $conexion->error;
    }
} else {
    echo "Faltan datos";
}