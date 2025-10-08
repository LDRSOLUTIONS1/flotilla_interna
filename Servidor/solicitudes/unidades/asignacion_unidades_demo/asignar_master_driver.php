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
        echo "Master Driver asignado: " . $id_master_driver . "<br>";
        echo "Asignación: " . $id_asignacion . "<br>";
    } else {
        echo "Error al asignar Master Driver: " . $conexion->error;
    }

    // 2️⃣ Guardar las fechas en calendario_prueba_demo e insertar en API externa
    if (isset($_POST['fechas_prueba']) && is_array($_POST['fechas_prueba'])) {

        $stmt = $conexion->prepare("INSERT INTO calendario_prueba_demo (id_asignacion_unidad_demo, fecha_prueba) VALUES (?, ?)");
        echo "Fechas de prueba recibidas: " . implode(", ", $_POST['fechas_prueba']) . "<br>";
        
        $url_api = "http://192.168.12.70:8000/api/storeDemo"; // Endpoint remoto

        foreach ($_POST['fechas_prueba'] as $fecha) {
            $fecha = trim($fecha);
            if (!empty($fecha)) {
                // Insertar en tu base de datos local
                $stmt->bind_param("is", $id_asignacion, $fecha);
                if ($stmt->execute()) {

                    // Si el insert fue correcto, enviar la misma info al endpoint remoto
                    $payload = json_encode([
                        "instructor_id" => $id_master_driver,
                        "reference_id"  => $id_asignacion,
                        "start_date"    => $fecha
                    ]);

                    $ch = curl_init($url_api);
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    curl_setopt($ch, CURLOPT_POST, true);
                    curl_setopt($ch, CURLOPT_HTTPHEADER, [
                        'Content-Type: application/json'
                    ]);
                    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);

                    $response = curl_exec($ch);
                    $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
                    curl_close($ch);

                    // Puedes mostrar la respuesta para depurar (o guardar en logs)
                    echo "<br>📡 Enviado al API → Código HTTP: $http_code<br>";
                    echo "Respuesta del servidor: $response<br>";
                } else {
                    echo "❌ Error al insertar fecha $fecha: " . $stmt->error . "<br>";
                }
            }
        }

        $stmt->close();
        echo "✅ Fechas de prueba guardadas correctamente.";
    } else {
        echo "⚠️ No se enviaron fechas de prueba.";
    }

} else {
    echo "❌ Faltan datos: id_master_driver o id_asignacion.";
}
?>
