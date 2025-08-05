<?php
if (!isset($_GET['id']) || !isset($_GET['fi']) || !isset($_GET['ff'])) {
    echo json_encode(['error' => 'Parámetros faltantes']);
    exit;
}

$idTelematics = $_GET['id'];
$fechaInicio = $_GET['fi'];
$fechaFin = $_GET['ff'];

$url = "http://advancedatalab.telematicsadvance.com.mx:3500/appi/rendimientoagrupadodia/{$idTelematics}&{$fechaInicio}&{$fechaFin}";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);

if ($response === false) {
    echo json_encode(['error' => 'No se pudo conectar con la API']);
    exit;
}

header('Content-Type: application/json');
echo $response;
?>