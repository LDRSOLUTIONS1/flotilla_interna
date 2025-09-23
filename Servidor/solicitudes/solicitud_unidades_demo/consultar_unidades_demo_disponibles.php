<?php
// Debug de POST y SESSION
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();  // 👈 mover arriba

error_log("POST: " . print_r($_POST, true));
error_log("SESSION: " . print_r($_SESSION, true));

include("../../conexion.php");

$id_usuario_demo = $_SESSION['id_colaborador'] ?? 'NO_SESSION';

// Validar datos obligatorios
if (isset($_POST['sederecolecciondemo']) 
    && isset($_POST['sededevolucionunidademo']) 
    && isset($_POST['fechasolicitudunidademo']) 
    && isset($_POST['fechadevolucionunidademo'])) {

    $sederecolecciondemo = $_POST['sederecolecciondemo'];
    $sededevolucionunidademo = $_POST['sededevolucionunidademo'];
    $fechasolicitudunidademo = $_POST['fechasolicitudunidademo'];
    $fechadevolucionunidademo = $_POST['fechadevolucionunidademo'];

    // Características funcionales como filtros
    $nombre_modelo       = $_POST['nombre_modelo'] ?? '';
    $capacidad_carga     = $_POST['capacidad_carga'] ?? '';
    $capacidad_pasajeros = $_POST['capacidad_pasajeros'] ?? '';
    $tipo_combustible    = $_POST['tipo_combustible'] ?? '';
    $traccion            = $_POST['traccion'] ?? '';
    $tipo_carroceria     = $_POST['tipo_carrceria'] ?? '';
    $numero_puertas      = $_POST['numero_puertas'] ?? '';
    $numero_asientos     = $_POST['numero_asientos'] ?? '';
    $tipo_caja           = $_POST['tipo_caja'] ?? '';
    $tipo_frenos         = $_POST['tipo_frenos'] ?? '';
    $suspension          = $_POST['suspension'] ?? '';
    $numero_ejes         = $_POST['numero_ejes'] ?? '';
    $uso_permitido       = $_POST['uso_permitido'] ?? '';
    $camara_reversa      = $_POST['camara_reversa'] ?? '';
    $sensores_reversa    = $_POST['sensores_reversa'] ?? '';

    // Construcción dinámica del WHERE
    $filtros = "WHERE ung.id_estado_unidad = 1 
                AND ung.id_estatus_unidad = 1 
                AND ung.id_sede = '$sederecolecciondemo' 
                AND ung.id_tipo_unidad = 3";

    if ($nombre_modelo !== '')          $filtros .= " AND ung.id_modelo = '$nombre_modelo'";
    if ($capacidad_carga !== '')        $filtros .= " AND ung.capacidad_carga >= '$capacidad_carga'";
    if ($capacidad_pasajeros !== '')    $filtros .= " AND ung.capacidad_pasajeros >= '$capacidad_pasajeros'";
    if ($tipo_combustible !== '')       $filtros .= " AND ung.id_tipo_combustible = '$tipo_combustible'";
    if ($traccion !== '')               $filtros .= " AND ung.id_traccion = '$traccion'";
    if ($tipo_carroceria !== '')        $filtros .= " AND ung.tipo_carrceria LIKE '%$tipo_carroceria%'";
    if ($numero_puertas !== '')         $filtros .= " AND ung.numero_puertas = '$numero_puertas'";
    if ($numero_asientos !== '')        $filtros .= " AND ung.numero_asientos = '$numero_asientos'";
    if ($tipo_caja !== '')              $filtros .= " AND ung.id_tipo_caja = '$tipo_caja'";
    if ($tipo_frenos !== '')            $filtros .= " AND ung.id_tipo_freno = '$tipo_frenos'";
    if ($suspension !== '')             $filtros .= " AND ung.id_tipo_suspencion = '$suspension'";
    if ($numero_ejes !== '')            $filtros .= " AND ung.numero_ejes = '$numero_ejes'";
    if ($uso_permitido !== '')          $filtros .= " AND ung.id_tipo_uso = '$uso_permitido'";
    //if ($camara_reversa !== '')         $filtros .= " AND ung.camara_reversa = 1";
    //if ($sensores_reversa !== '')       $filtros .= " AND ung.sensores_reversa = 1";

    $sql = "SELECT ung.id_unidad, marc.nombre_marca, model.nombre_modelo, ung.placa, ung.img_unidad,
                   ung.id_tipo_unidad, unest.estado, unestatus.id_estatus_unidad, sed.ubicacion
            FROM unidades AS ung
            INNER JOIN modelos AS model ON ung.id_modelo = model.id_modelo
            INNER JOIN marcas AS marc ON model.id_marca = marc.id_marca
            INNER JOIN estado_unidad AS unest ON ung.id_estado_unidad = unest.id_estado_unidad
            INNER JOIN estatus_unidades AS unestatus ON ung.id_estatus_unidad = unestatus.id_estatus_unidad
            INNER JOIN sedes AS sed ON ung.id_sede = sed.id_sede
            $filtros";

    // Mostrar el SQL en log y en pantalla (para debug)
    //error_log("SQL Ejecutado: " . $sql);
    //echo "<pre style='background:#f8f9fa;border:1px solid #ccc;padding:10px;'>SQL ejecutado:\n$sql</pre>";

    $resultado = $conexion->query($sql);

    if (!$resultado) {
        die("<div style='color:red;'>❌ Error en la consulta: " . $conexion->error . "</div>");
    }

    //echo "<div style='margin:10px 0;color:blue;'>Registros encontrados: " . $resultado->num_rows . "</div>";

    if ($resultado->num_rows > 0) {
        while ($fila = $resultado->fetch_assoc()) {
            echo '
            <div class="conetenedortarjetauniddemo d-flex border p-3 mb-3 align-items-start" style="max-width: 700px;">
                <img src="../../Servidor/archivos/imagenes/imagenes_unidades/' . $fila['img_unidad'] . '" alt="Imagen del vehículo"
                     class="imgunidadpoolsolicitud" style="width: 180px; height: auto; border-radius: 8px; margin-right: 20px;"
                     onerror="this.src=\'../../Cliente/img/unidades/silueta_tracto3.png\'">

                <div>
                    <h5><strong>' . $fila['nombre_marca'] . ' ' . $fila['nombre_modelo'] . '</strong></h5>
                    <p class="mb-1"><i class="fas fa-map-marker-alt me-2"></i><strong>Ubicación:</strong> ' . $fila['ubicacion'] . '</p>
                    <p class="mb-1"><i class="fas fa-id-card me-2"></i><strong>Placa:</strong> ' . $fila['placa'] . '</p>

                    <button type="button" id="btnmostrarunidademofisicamoral" data-id="' . $fila['id_unidad'] . '"
                            data-id-usuario-demo="' . $id_usuario_demo . '"
                            data-fecha-solicitudemo="' . $fechasolicitudunidademo . '"
                            data-fecha-devoluciondemo="' . $fechadevolucionunidademo . '"
                            class="btn btn-primary mt-2 btnmostrarunidademofisicamoral">Asignar a</button>
                </div>
            </div>';
        }
    } else {
        echo '<div class="alert alert-danger">⚠ No hay unidades disponibles con esas especificaciones.</div>';
    }
} else {
    echo "<div style='color:red;'>❌ Faltan parámetros obligatorios en POST.</div>";
}
?>
