<?php
include("../../../conexion.php");

$id_unidad = isset($_GET['id_unidad']) ? intval($_GET['id_unidad']) : 0;

$sql = "SELECT 
            m.id_mantenimiento,
            m.id_unidad,
            tm.nombre_tipo_mantenimiento AS tipo,
            em.estatus,
            m.fecha_ingreso,
            m.fecha_salida,
            m.taller,
            m.costo_estimado,
            m.descripcion_trabajo,
            m.proximo_km,
            m.proximo_fecha
        FROM mantenimientos m
        INNER JOIN tipo_mantenimiento tm ON m.id_tipo_mantenimiento = tm.id_tipo_mantenimiento
        INNER JOIN estatus_mantenimiento em ON m.id_estatus_mantenimiento = em.id_estatus_mantenimiento
        " . ($id_unidad ? "WHERE m.id_unidad = $id_unidad" : "") . "
        ORDER BY m.fecha_ingreso DESC";

$result = $conexion->query($sql);

$data = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data);
?>
