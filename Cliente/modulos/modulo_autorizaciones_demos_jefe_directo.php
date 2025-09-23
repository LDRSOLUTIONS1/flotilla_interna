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
    <h5 class="titulosletrasunidademo text-nowrap">Autorización de vehículos demo jefe directo</h5>
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
    <?php include("../../Servidor/componentes/obtener_autorizacion_unidades_demo_jefe_directo.php"); ?>
</div>



<!---------------------------------------modal para ver los detalles de la unidad ---------------------->
<!--modal-->
<div class="modal fade modalinfounidademojefedirecto" id="modalinfounidademojefedirecto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidademojefedirecto"></button>
            </div>
            <div class="modal-body" id="modalinfounidademojefedirectobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidademojefedirecto" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnaprovarunidademojefedirecto">Autorizar</button>
                <button type="button" class="btn btn-danger" id="btndenegarunidademofisica">Rechazar</button>
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
                <h5 class="modal-title" id="exampleModalLabel">Rechazar autorización</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodaldescripcionnegacionunidademofisica"></button>
            </div>
            <div class="modal-body" id="modaldescripcionnegacionunidademofisicabody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodaldescripcionnegacionunidademofisica" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-danger" id="btndenegarunidaddemofisica">Enviar</button>
            </div>
        </div>
    </div>
</div>




<!--js para mandar a llamar el modal de informacion de la unidad y la carta responsiva de las unidades-->
<script src="../js/autorizar_unidades_demos/autorizar_unidades_demos_jefe_directo.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>