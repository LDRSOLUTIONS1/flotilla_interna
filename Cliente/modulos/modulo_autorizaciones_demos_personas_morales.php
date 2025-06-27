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

<!-------------------------------------------aqui comienza el contenedor Autorizacion de unidades demos por parte del usuario tipo 7 ----------------------------------------------------------->
<div class="contenedorautorizardemos">
    <h5 class="titulosletrasunidademo text-nowrap">Autorización de vehículos demo</h5>
    <h5 class="letraautorizaciondemo text-nowrap">
        Personas Morales
    </h5>
    <div class="container mt-4">
        <div class="d-flex flex-wrap justify-content-center contenedor_botones_validacion_unidades_demos">
            <!-- Botón estilizado -->
            <button onclick="window.location.href='../interfaces/autorizaciones_demos_personas_fisicas.php'" class="btn btn-persona-fisica m-2 "><i class="fa-solid fa-user"></i> Físicas</button>
            <!-- Botón estilizado -->
            <button onclick="window.location.href='../interfaces/autorizaciones_demos_personas_morales.php'" class="btn btn-persona-moral m-2 "><i class="fa-solid fa-building-user"></i> Morales</button>
        </div>
    </div>
</div>

<!-- Campo de búsqueda para filtrar la tabla -->
<div class="contenedorbuscadorautorizaciondemosmorales">
    <div class="buscadorautorizaciondemosmorales">
        <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards(), filtrarTabla()">
    </div>
    <!-- // Botón para alternar vista -->
    <div class="d-flex justify-center" style="left: 130px;"><button class="btn btn-cambiar_vista_morales mb-3" id="botonCambiarVista" onclick="toggleVista()">Cambiar a vista de tabla</button> </div>
</div>
<!--contenedor de las cards de las unidades por asignar-->
<div class="contenedorcardunidadescomodatoresponsiva">
    <?php include("../../Servidor/componentes/obtener_autorizacion_unidades_demo_morales.php"); ?>
</div>



<!---------------------------------------modal para ver los detalles de la unidad y el COMODATO que el usuario cliente firmo----------------------->
<!--modal-->
<div class="modal fade modalinfounidademomoral" id="modalinfounidademomoral" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidademomoral"></button>
            </div>
            <div class="modal-body" id="modalinfounidademomoralbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidademomoral" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnaprovarunidademomoral">Aprovar</button>
                <button type="button" class="btn btn-danger" id="btndenegarcomodatofirmado">Denegar</button>
            </div>
        </div>
    </div>
</div>

<!--------------------------------------modal para escribir el motivo por el cual se denego el comodato firmado---------------------------------------------->
<!--modal-->
<div class="modal fade modaldescripcionnegacioncomodatofirmado" id="modaldescripcionnegacioncomodatofirmado" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Denegar carta responsiva</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodaldescripcionnegacioncomodatofirmado"></button>
            </div>
            <div class="modal-body" id="modaldescripcionnegacioncomodatofirmadobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodaldescripcionnegacioncomodatofirmado" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-danger" id="btndenegarcartaresponsivafirmadadenegar">Enviar motivo de denegación</button>
            </div>
        </div>
    </div>
</div>


<!--js para mandar a llamar el modal de informacion de la unidad y autorizacion demo-->
<script src="../js/autorizar_unidades_demos/autorizar_unidades_demos_morales.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>