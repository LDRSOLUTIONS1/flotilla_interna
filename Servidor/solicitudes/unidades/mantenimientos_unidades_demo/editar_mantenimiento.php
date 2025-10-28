<?php
include '../conexion.php';

$id_mantenimiento = $_POST['id_mantenimiento'];
$id_estatus_mantenimiento = $_POST['id_estatus_mantenimiento'];
$fecha_salida = $_POST['fecha_salida'] ?? NULL;
$costo_estimado = $_POST['costo_estimado'] ?? NULL;
$descripcion_trabajo = $_POST['descripcion_trabajo'];
$proximo_km = $_POST['proximo_km'] ?? NULL;
$proximo_fecha = $_POST['proximo_fecha'] ?? NULL;
$evidencia = NULL;

if (!empty($_FILES['evidencia']['name'])) {
    $targetDir = "uploads/";
    if (!file_exists($targetDir)) mkdir($targetDir, 0777, true);
    $filename = time() . "_" . basename($_FILES["evidencia"]["name"]);
    $targetFile = $targetDir . $filename;

    if (move_uploaded_file($_FILES["evidencia"]["tmp_name"], $targetFile)) {
        $evidencia = $targetFile;
    }
}

$sql = "UPDATE mantenimientos SET 
            id_estatus_mantenimiento = ?, 
            fecha_salida = ?, 
            costo_estimado = ?, 
            descripcion_trabajo = ?, 
            proximo_km = ?, 
            proximo_fecha = ?";

if ($evidencia) $sql .= ", evidencia = '$evidencia'";

$sql .= " WHERE id_mantenimiento = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("isdsssi", $id_estatus_mantenimiento, $fecha_salida, $costo_estimado, $descripcion_trabajo, $proximo_km, $proximo_fecha, $id_mantenimiento);

if ($stmt->execute()) {
    echo json_encode(["success" => true, "message" => "Mantenimiento actualizado correctamente."]);
} else {
    echo json_encode(["success" => false, "message" => "Error: " . $conn->error]);
}
?>
