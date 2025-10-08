<?php
// archivo: obtener_fechas_ocupadas.php
$id_master_driver = $_GET['id_master_driver'] ?? 0;
$fechas_ocupadas = [];

if ($id_master_driver) {
    $url_api = "http://192.168.12.70:8000/api/course-schedules/dates";
    $ch = curl_init($url_api);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);

    $data = json_decode($response, true);

    if ($data && is_array($data)) {
        foreach ($data as $evento) {
            if ($evento['instructor_id'] == $id_master_driver) {
                $fechas_ocupadas[] = substr($evento['start_date'], 0, 10);
            }
        }
    }
}

echo json_encode($fechas_ocupadas);
?>
