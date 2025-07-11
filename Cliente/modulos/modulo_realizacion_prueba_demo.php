<?php
include("../../Servidor/conexion.php");

//obtenemos el id del colaborador para saber quien es el que esta logeado
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];
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
                    a.id_estado_prueba_demo,
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
    while ($fila = $resultado->fetch_assoc()) {
        if (is_null($fila['id_estado_prueba_demo'])) {
            echo "<button type='button' id='realizacion_prueba' class='btn btn-primera_prueba realizacion_prueba' data-idpruebademo ='" . $fila['id_asignacion_unidad_demo'] . "'>Realizar primera prueba</button>";
        } else if ($fila['id_estado_prueba_demo'] == 1) {
            echo "<button type='button' id='realizacion_prueba' class='btn btn-segunda_prueba realizacion_prueba' data-idpruebademo ='" . $fila['id_asignacion_unidad_demo'] . "'>Realizar segunda prueba</button>";
        } else if ($fila['id_estado_prueba_demo'] == 2) {
            echo "<button type='button' id='realizacion_prueba' class='btn btn-tercera_prueba realizacion_prueba' data-idpruebademo ='" . $fila['id_asignacion_unidad_demo'] . "'>Realizar tercera prueba</button>";
        } else if ($fila['id_estado_prueba_demo'] == 3) {
            // no se muestra el boton
        }
    $consulta_pruebas = "SELECT 
                    p.id_prueba,
                    p.id_asignacion_unidad_demo,
                    p.fecha_prueba,
                    p.nombre_del_conductor,
                    p.tipo_prueba,
                    p.temperatura,
                    p.revoluciones,
                    p.velocidad,
                    p.kilometraje,
                    p.foto_tablero,
                    p.foto_odometro,
                    p.foto_unidad,
                    p.comentarios,
                    crp.nombre_1,
                    crp.nombre_2,
                    crp.apellido_paterno,
                    crp.apellido_materno
                FROM pruebas_unidad_demo AS p
                LEFT JOIN colaboradores AS crp ON p.id_colaborador_registra_prueba = crp.id_colaborador
                WHERE p.id_asignacion_unidad_demo = ?";

    $stmti = $conexion->prepare($consulta_pruebas);
    $stmti->bind_param("i", $id_asignacion);
    $stmti->execute();
    $resultado = $stmti->get_result();
    echo "<div class='table-responsive'>
            <table class='table table-hover tablaunidades' id='tablaUnidades'>
            <thead class='table-light'>
                <tr>
                    <th class='letratablapruebademo'>#</th>
                    <th class='letratablapruebademo'>Fecha y Hora Prueba</th>
                    <th class='letratablapruebademo'>Nombre del Conductor</th>
                    <th class='letratablapruebademo'>Tipo Prueba</th>
                    <th class='letratablapruebademo'>Temperatura</th>
                    <th class='letratablapruebademo'>Revoluciones</th>
                    <th class='letratablapruebademo'>Velocidad</th>
                    <th class='letratablapruebademo'>Kilometraje</th>
                    <th class='letratablapruebademo'>Tablero</th>
                    <th class='letratablapruebademo'>OdÃ³metro</th>
                    <th class='letratablapruebademo'>Unidad</th>
                    <th class='letratablapruebademo'>Comentarios</th>
                    <th class='letratablapruebademo'>Registrador de prueba</th>
                </tr>
            </thead>
            <tbody>";

    $contador = 1;
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td class='letratablapruebademo'>" . ($contador++) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['fecha_prueba']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['nombre_del_conductor']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['tipo_prueba']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['temperatura']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['revoluciones']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['velocidad']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['kilometraje']) . "</td>";
        echo "<td class='letratablapruebademo' style='text-align: center;'>
                <a href='../../Servidor/archivos/files/files_asignacion_demo/pruebas_unidades_demo/fotos_tablero/" . ($fila['foto_tablero']) . "' target='_blank'>
                    <button class='btn btn-sm btn-tablero'><i class='fas fa-dashboard'></i></button>
                </a>
              </td>";
        echo "<td class='letratablapruebademo' style='text-align: center;'>
                <a href='../../Servidor/archivos/files/files_asignacion_demo/pruebas_unidades_demo/fotos_odometro/" . ($fila['foto_odometro']) . "' target='_blank'>
                    <button class='btn btn-sm btn-odometro'><i class='fas fa-tachometer-alt'></i></button>
                </a>
              </td>";
        echo "<td class='letratablapruebademo' style='text-align: center;'>
                <a href='../../Servidor/archivos/files/files_asignacion_demo/pruebas_unidades_demo/fotos_unidad_exterior/" . ($fila['foto_unidad']) . "' target='_blank'>
                    <button class='btn btn-sm btn-unidad-exterior'><i class='fas fa-car-side'></i></button>
                </a>
              </td>";
        echo "<td class='letratablapruebademo'>" . ($fila['comentarios']) . "</td>";
        echo "<td class='letratablapruebademo'>" . ($fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno']) . "</td>";
        echo "</tr>";
    }


    $stmti->close();
        }
    

    echo "</tbody></table>";

    $stmt->close();
} else {
    echo "<h1>ID de asignaciÃ³n no proporcionado.</h1>";
}
?>
</div>

<!--------------------------------------------------------------------------modal para registrar las pruebas demos por unidad-------------------->
<!--modal-->
<div class="modal fade modalregistrarpruebas" id="modalregistrarpruebas" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Prueba unidad demo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalpruebademo"></button>
            </div>
            <div class="modal-body" id="modalregistrarpruebasbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalpruebademo" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnregistrarpruebademo">Registrar PRUEBA</button>
            </div>
        </div>
    </div>
</div>

<!--pruebas unidades demo-->
<script src="../js/pruebas_unidades_demo/realizacion_pruebas_demos.js"></script>
<!--js para filtrar la tabla de unidades-->
<script src="../js/unidades/filtrar_tabla.js"></script>

