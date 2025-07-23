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

<!-------------------------------------------aqui comienza el contenedor Asignacion de mater driver porparte del ususario tipo 11 ----------------------------------------------------------->
<div class="contenedorasignarmasterdriver">
    <h5 class="titulosletrasunidademo text-nowrap">Asignación de Máster Driver</h5>
    <h5 class="letraautorizaciondemo text-nowrap">
    </h5>
</div>

<!-- Campo de búsqueda para filtrar la tabla -->
<div class="contenedorbuscadorautorizaciondemosfisicas">
    <div class="buscadorautorizaciondemosificas">
        <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards(), filtrarTabla()">
    </div>
</div>
<!--contenedor de las cards de las unidades por asignar-->
<div class="contenedorcardunidadescomodatoresponsiva">
    <?php include("../../Servidor/componentes/obtener_unidades_demo_asignar_master_driver.php"); ?>
</div>



<!---------------------------------------modal para asignar master drver a la unidad------------------------------------------------------->
<!--modal-->
<div class="modal fade modalasugnarrmasterdriver" id="modalasugnarrmasterdriver" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Máster Driver</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalasugnarrmasterdriver"></button>
            </div>
            <div class="modal-body" id="modalasugnarrmasterdriverbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalasugnarrmasterdriver" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnasignarmasterdriver">Asignar</button>
            </div>
        </div>
    </div>
</div>

<!--------------------------------------modal para escribir el motivo por el cual se denego el comodato firmado---------------------------------------------->
<!--modal-->
<div class="modal fade modaldescripcionnegacionunidademofisica" id="modaldescripcionnegacionunidademofisica" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Denegar carta responsiva</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodaldescripcionnegacionunidademofisica"></button>
            </div>
            <div class="modal-body" id="modaldescripcionnegacionunidademofisicabody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodaldescripcionnegacionunidademofisica" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-danger" id="btndenegarunidaddemofisica">Enviar motivo de denegación</button>
            </div>
        </div>
    </div>
</div>




<!--js para mandar a llamar el modal de informacion de la unidad y la carta responsiva de las unidades-->
<script src="../js/aisgnar_master_driver/aisgnar_master_driver.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>