
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
                    u.img_unidad
                FROM asignacion_unidad_demo AS a
                LEFT JOIN unidades AS u ON a.id_unidad = u.id_unidad
                WHERE a.id_asignacion_unidad_demo = ?";
                
    $stmt = $conexion->prepare($consulta);
    $stmt->bind_param("i", $id_asignacion);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if ($fila = $resultado->fetch_assoc()) {
    $img = $fila['img_unidad'];

    // Ruta real (en servidor) donde se almacena la imagen
    $ruta_servidor = "../../Servidor/archivos/imagenes/imagenes_unidades/";
    $ruta_completa = $ruta_servidor . $img;

    // Ruta que usará el navegador
    $ruta_url = $ruta_servidor . $img;
    $ruta_fallback = "../../Cliente/img/unidades/carro_desconocido.png";

    // Validar si el nombre está definido y el archivo existe físicamente
    if (!empty($img) && file_exists($ruta_completa)) {
        echo "<img class='imgunidadpruebademo img-unidad' src='" . htmlspecialchars($ruta_url) . "' alt='Imagen de la unidad'>";
    } else {
        echo "<img class='imgunidadpruebademo img-unidad' src='" . htmlspecialchars($ruta_fallback) . "' alt='Imagen no disponible'>";
    }

    // Mostrar datos
    echo "<h1 class='letrasinfounidademoprueba'>Datos de la asignación:</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>ID Asignación: " . $fila['id_asignacion_unidad_demo'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>ID Unidad: " . $fila['id_unidad'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>ID Colaborador que asigna: " . $fila['id_colaborador_que_asigna'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>ID Persona Física: " . $fila['id_persona_fisica'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>ID Persona Moral: " . $fila['id_persona_moral'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>Fecha Préstamo: " . $fila['fecha_prestamo'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>Fecha Devolución: " . $fila['fecha_devolucion'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>Objetivo Préstamo: " . $fila['objetivo_prestamo'] . "</h1>";
    echo "<h1 class='letrasinfounidademoprueba'>Comentarios: " . $fila['comentarios'] . "</h1>";
} else {
    echo "<h1>No se encontró la asignación.</h1>";
}


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
