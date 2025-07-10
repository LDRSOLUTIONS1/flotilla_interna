
<?php
include("../../Servidor/conexion.php");

//obtenemos el id del colaborador para saber quien es el que esta logeado
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$id_usuario = $resultado->fetch_assoc()['id_usuario'];

// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$id_tipo_usuario = $resultado->fetch_assoc()['id_tipo_usuario'];
?>

<!-- Contenedor -->
<div class="contenedoropcionesunidades">
    <h2 class="titulosletrarealizacionpruebademo text-nowrap">Administración de prueba</h2>
</div>
<!-----------------------------------------------------------------card con informacion de la unidad y solicitud demo--------------------------------------->
<div class="contenedorrealizacionprueba">
<?php
if (isset($_GET['id_unidad'])) {
    $id_asignacion = $_GET['id_unidad'];

    $consulta = "SELECT 
                    a.id_asignacion_unidad_demo,
                    a.id_unidad,
                    a.id_colaborador_que_asigna,
                    a.id_persona_fisica,
                    a.id_persona_moral,
                    a.fecha_prestamo,
                    a.fecha_devolucion,
                    a.objetivo_prestamo,
                    a.comentarios,
                    u.img_unidad,
                    pf.id_persona_fisica,
                    pf.nombre_1,
                    pf.nombre_2,
                    pf.apellido_paterno,
                    pf.apellido_materno,
                    pm.id_persona_moral,
                    pm.organizacion_institucion,
                    model.nombre_modelo,
                    unid.placa,
                    unid.vin,
                    ca.nombre_1 AS nombre1colaborador,
                    ca.nombre_2 AS nombre2colaborador,
                    ca.apellido_paterno AS apellidopcolaborador,
                    ca.apellido_materno AS apellidomcolaborador,
                    usr.avatar AS avatar_colaborador,
                    epd.estado_prueba
                FROM asignacion_unidad_demo AS a
                LEFT JOIN unidades AS u ON a.id_unidad = u.id_unidad
                LEFT JOIN personas_fisicas AS pf ON a.id_persona_fisica = pf.id_persona_fisica
                LEFT JOIN personas_morales AS pm ON a.id_persona_moral = pm.id_persona_moral
                LEFT JOIN modelos AS model ON u.id_modelo = model.id_modelo
                LEFT JOIN unidades AS unid ON a.id_unidad = unid.id_unidad
                LEFT JOIN colaboradores AS ca ON a.id_colaborador_que_asigna = ca.id_colaborador
                LEFT JOIN usuarios AS usr ON usr.id_colaborador = ca.id_colaborador
                LEFT JOIN estado_pruebas_demos AS epd ON a.id_estado_prueba_demo = epd.id_estado_prueba_demo
                WHERE a.id_asignacion_unidad_demo = ?";

    $stmt = $conexion->prepare($consulta);
    $stmt->bind_param("i", $id_asignacion);
    $stmt->execute();
    $resultado = $stmt->get_result();

    while ($fila = $resultado->fetch_assoc()) {
        if (($fila['id_persona_fisica'] || $fila['id_persona_moral'])) {
            $nombre = $fila['id_persona_fisica'] ? $fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'] : $fila['organizacion_institucion'];

            $img = $fila['img_unidad'];
            $ruta_servidor = "../../Servidor/archivos/imagenes/imagenes_unidades/";
            $ruta_completa = $ruta_servidor . $img;
            $ruta_url = $ruta_servidor . $img;
            $ruta_fallback = "../../Cliente/img/unidades/carro_desconocido.png";

            echo "<div class='contenido-card'>";

            echo "<div class='contenedor-imagen'>";
            if (!empty($img) && file_exists($ruta_completa)) {
                echo "<img class='imgunidadpruebademo' src='" . htmlspecialchars($ruta_url) . "' alt='Imagen de la unidad'>";
            } else {
                echo "<img class='imgunidadpruebademo' src='" . htmlspecialchars($ruta_fallback) . "' alt='Imagen no disponible'>";
            }
            echo "</div>";

            echo "<form action='' method='post'>";
            echo "<div class='row'>";
            echo "<div class='col-md-6'>";
            echo "<label for='nombre' class='letrasinfounidademoprueba'><b>Nombre del usuario/empresa:</b></label>";
            echo "<input type='text' class='form-control letrasinfounidademoprueba' id='nombre' name='nombre' value='" . $nombre . "' readonly>";
            echo "</div>";
            echo "<div class='col-6'>";
            echo "<label for='solicitante' class='letrasinfounidademoprueba'><b>Solicitante:</b></label>";
            echo "<input type='text' class='form-control letrasinfounidademoprueba' id='solicitante' name='solicitante' value='" . $fila['nombre1colaborador'] . ' ' . $fila['nombre2colaborador'] . ' ' . $fila['apellidopcolaborador'] . ' ' . $fila['apellidomcolaborador'] . "' readonly>";
            echo "</div>";
            echo "<div class='col-3'>";
            echo "<label for='fecha_prestamo' class='letrasinfounidademoprueba'><b>Fecha Préstamo:</b></label>";
            echo "<input type='text' class='form-control letrasinfounidademoprueba' id='fecha_prestamo' name='fecha_prestamo' value='" . $fila['fecha_prestamo'] . "' readonly>";
            echo "</div>";
            echo "<div class='col-3'>";
            echo "<label for='fecha_devolucion' class='letrasinfounidademoprueba'><b>Fecha Devolución:</b></label>";
            echo "<input type='text' class='form-control letrasinfounidademoprueba' id='fecha_devolucion' name='fecha_devolucion' value='" . $fila['fecha_devolucion'] . "' readonly>";
            echo "</div>";
            echo "</div>";
            echo "<div class='row'>";
            echo "<div class='col-6'>";
            echo "<label for='objetivo_prestamo' class='letrasinfounidademoprueba'><b>Objetivo Préstamo:</b></label>";
            echo "<textarea class='form-control letrasinfounidademoprueba' id='objetivo_prestamo' name='objetivo_prestamo' rows='4' readonly>" . $fila['objetivo_prestamo'] . "</textarea>";
            echo "</div>";
            echo "<div class='col-6'>";
            echo "<label for='comentarios' class='letrasinfounidademoprueba'><b>Comentarios:</b></label>";
            echo "<textarea class='form-control letrasinfounidademoprueba' id='comentarios' name='comentarios' rows='4' readonly>" . $fila['comentarios'] . "</textarea>";
            echo "</div>";
            echo "</div>";
            echo "</form>";

            echo "</div>"; // contenido-card
        }
    }
    $stmt->close();
} else {
    echo "<h1>ID de asignación no proporcionado.</h1>";
}
?>
</div>

<!-----------------------------------------------------------------modulo de registro de la prueba demo ------------------------------------------------------------>
<div class="contenedorealizaciondeprueba">
<?php
if (isset($_GET['id_unidad'])) {
    $id_asignacion = $_GET['id_unidad'];

    $consulta = "SELECT 
                    a.id_asignacion_unidad_demo,
                    a.id_unidad,
                    model.nombre_modelo,
                    unid.placa,
                    unid.vin,
                    epd.estado_prueba
                FROM asignacion_unidad_demo AS a
                LEFT JOIN unidades AS u ON a.id_unidad = u.id_unidad
                LEFT JOIN modelos AS model ON u.id_modelo = model.id_modelo
                LEFT JOIN unidades AS unid ON a.id_unidad = unid.id_unidad
                LEFT JOIN estado_pruebas_demos AS epd ON a.id_estado_prueba_demo = epd.id_estado_prueba_demo
                WHERE a.id_asignacion_unidad_demo = ?";

    $stmt = $conexion->prepare($consulta);
    $stmt->bind_param("i", $id_asignacion);
    $stmt->execute();
    $resultado = $stmt->get_result();

    echo "<h2 class='text-center titulosletrarealizacionpruebademoestatus'>Realización de prueba demo</h2>";
    echo "<table class='table table-bordered'>
            <thead>
                <tr>
                    <th>Unidad</th>
                    <th>Placa</th>
                    <th>VIN</th>
                    <th>Estado de la Prueba</th>
                </tr>
            </thead>
            <tbody>";

    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . ($fila['nombre_modelo']) . "</td>";
        echo "<td>" . ($fila['placa']) . "</td>";
        echo "<td>" . ($fila['vin']) . "</td>";
        echo "<td>" . ($fila['estado_prueba']) . "</td>";
        echo "</tr>";
    }

    echo "</tbody></table>";

    $stmt->close();
} else {
    echo "<h1>ID de asignación no proporcionado.</h1>";
}
?>
</div>






<!--------------------------------------------------------------------------Modal para ver el Mapa y saber donde esta la unidad-->
<!--modal-->
<div class="modal fade" id="modalMapa" tabindex="-1" aria-labelledby="modalMapaLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Ultima actualización de la ubicación de la unidad</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <div id="mapaUnidad" style="height: 500px;"></div>
      </div>
    </div>
  </div>
</div>



<!--js para filtrar la tabla de unidades-->
<script src="../js/unidades/filtrar_tabla.js"></script>
<!--js para poder obtener iinformacion del mapa -->
<script src="../js/api/obtener_mapa_telematics.js"></script>
