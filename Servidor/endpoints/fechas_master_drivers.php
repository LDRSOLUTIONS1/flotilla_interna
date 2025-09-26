<?php
header('Content-Type: application/json');
include("../../Servidor/conexion.php");

$sql = "SELECT 
            cpd.fecha_prueba AS start_date,
            aud.id_asignar_prueba_demo_master_driver AS instructor_id,
            col.numero_colaborador AS collaborator_number
        FROM calendario_prueba_demo cpd
        INNER JOIN asignacion_unidad_demo aud 
            ON cpd.id_asignacion_unidad_demo = aud.id_asignacion_unidad_demo
        LEFT JOIN colaboradores col
            ON aud.id_asignar_prueba_demo_master_driver = col.id_colaborador
        ORDER BY cpd.fecha_prueba ASC";

$result = $conexion->query($sql);

$datos = [];

if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        $datos[] = [
            'start_date' => $row['start_date'],
            'instructor_id' => $row['instructor_id'] ?? null,
            'collaborator_number' => $row['collaborator_number'] ?? null
        ];
    }
}

echo json_encode($datos, JSON_PRETTY_PRINT);
?>
