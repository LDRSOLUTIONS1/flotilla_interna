<?php 
include("../../../Servidor/conexion.php");


// Conexión a la base de datos
include '../../conexion.php';

if (isset($_POST['id_asignacion_unidad_demo'])) {
    $id_asignacion = intval($_POST['id_asignacion_unidad_demo']);

    $sql = "SELECT 
                uda.id_asignacion_unidad_demo,
                uda.fecha_prestamo,
                uda.autorizacion,
                pf.nombre_1,
                pf.apellido_paterno,
                pf.apellido_materno,
                pm.organizacion_institucion
            FROM asignacion_unidad_demo AS uda
            INNER JOIN unidades AS unid ON uda.id_unidad = unid.id_unidad
            INNER JOIN personas_fisicas AS pf ON uda.id_persona_fisica = pf.id_persona_fisica
            INNER JOIN personas_morales AS pm ON uda.id_persona_moral = pm.id_persona_moral
            WHERE uda.id_asignacion_unidad_demo = $id_asignacion";
    
    $resultado = $conexion->query($sql);

    if ($resultado->num_rows > 0) {
        $fila = $resultado->fetch_assoc();

        echo '
        <div class="container">
            <h5>Información de la Prueba Demo</h5>
            <p><strong>Fecha de asignación:</strong> ' . htmlspecialchars($fila['fecha_asignacion']) . '</p>
            <p><strong>Autorización:</strong> ' . htmlspecialchars($fila['autorizacion']) . '</p>
            <p><strong>Colaborador:</strong> ' . htmlspecialchars($fila['nombre_1']) . ' ' . htmlspecialchars($fila['apellido_paterno']) . ' ' . htmlspecialchars($fila['apellido_materno']) . '</p>
        </div>';
    } else {
        echo '<p>No se encontró información para esta asignación.</p>';
    }

} else {
    echo '<p>Datos no válidos.</p>';
}

$conn->close();
?>