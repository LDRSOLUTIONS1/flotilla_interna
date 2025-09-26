<?php 
include("../../../conexion.php");

if (isset($_POST['id_master_driver']) && isset($_POST['id_asignacion'])) {

    $id_master_driver = $_POST['id_master_driver'];
    $id_asignacion = $_POST['id_asignacion'];

    // 1️⃣ Actualizar el master driver en la asignación
    $query = "UPDATE asignacion_unidad_demo 
              SET id_asignar_prueba_demo_master_driver = '$id_master_driver' 
              WHERE id_asignacion_unidad_demo = '$id_asignacion'";

    if ($conexion->query($query) === TRUE) {
        echo "Asignación del Master Driver realizada con éxito.<br>";
    } else {
        echo "Error al asignar Master Driver: " . $conexion->error;
    }

    // 2️⃣ Guardar las fechas en calendario_prueba_demo
    if (isset($_POST['fechas_prueba']) && is_array($_POST['fechas_prueba'])) {
        $stmt = $conexion->prepare("INSERT INTO calendario_prueba_demo (id_asignacion_unidad_demo, fecha_prueba) VALUES (?, ?)");
        foreach ($_POST['fechas_prueba'] as $fecha) {
            $fecha = trim($fecha);
            if (!empty($fecha)) {
                $stmt->bind_param("is", $id_asignacion, $fecha);
                $stmt->execute();
            }
        }
        $stmt->close();
        echo "Fechas de prueba guardadas correctamente.";
    } else {
        echo "No se enviaron fechas de prueba.";
    }

} else {
    echo "Faltan datos: id_master_driver o id_asignacion.";
}
?>
