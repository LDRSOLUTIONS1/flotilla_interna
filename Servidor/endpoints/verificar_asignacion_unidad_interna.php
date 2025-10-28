<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

include("../../Servidor/conexion.php");

// Leer id_colaborador desde POST o JSON raw
$id_colaborador = $_POST['id_colaborador'] ?? null;
if (!$id_colaborador) {
    $input = json_decode(file_get_contents('php://input'), true);
    $id_colaborador = $input['id_colaborador'] ?? null;
}

if (!$id_colaborador) {
    echo json_encode([
        'status' => 'error',
        'message' => 'No se recibió el id_colaborador'
    ]);
    exit;
}

// Consulta
$query = "SELECT 
        u.id_unidad,
        m.nombre_modelo,
        u.placa,
        u.vin,
        u.numero_motor
    FROM asignacion_unidad_colaborador AS auc
    INNER JOIN unidades AS u ON auc.id_unidad = u.id_unidad
    INNER JOIN modelos AS m ON u.id_modelo = m.id_modelo
    WHERE auc.id_colaborador = ?
    LIMIT 1
";

$stmt = $conexion->prepare($query);
if (!$stmt) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Error en prepare(): ' . $conexion->error
    ]);
    exit;
}

$stmt->bind_param("i", $id_colaborador);
if (!$stmt->execute()) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Error en execute(): ' . $stmt->error
    ]);
    exit;
}

// Vincular columnas a variables
$stmt->bind_result($id_unidad, $nombre_modelo, $placa, $vin, $numero_motor);

if ($stmt->fetch()) {
    echo json_encode([
        'status' => 'success',
        'tiene_asignacion' => true,
        'unidad' => [
            'id_unidad' => $id_unidad,
            'nombre_modelo' => $nombre_modelo,
            'placa' => $placa,
            'vin' => $vin,
            'numero_motor' => $numero_motor
        ]
    ]);
} else {
    echo json_encode([
        'status' => 'success',
        'tiene_asignacion' => false
    ]);
}

$stmt->close();
$conexion->close();
