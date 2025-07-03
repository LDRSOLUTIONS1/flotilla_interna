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
<div class="contenedorunidadesautorizadasdemos">
    <h5 class="titulosletrasunidademoautorizada text-nowrap">Vehículos autorizados</h5>
</div>

<!-- Campo de búsqueda para filtrar la tabla -->
<div class="contenedorbuscadorunidadautorizada">
    <div class="buscadorunidadesdemoautorizadas mb-3 col-md-8">
        <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards(), filtrarTabla()">
    </div>
    <!-- // Botón para alternar vista -->
    <div class="d-flex justify-center" style="left: 130px;">
        <button class="btn btn-cambiar_vista_fisicas mb-3 mx-1" id="botonCambiarVista" onclick="toggleVista()">Cambiar a vista de tabla</button>
        <!--boton para filtrar por tipo de solicitante-->
        <div class="dropdown mx-2">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownFiltroSolicitante" data-bs-toggle="dropdown" aria-expanded="false">
                Filtrar por tipo de solicitante
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownFiltroSolicitante">
                <li><a class="dropdown-item opcion-filtro-solicitante" data-filtro="todos" href="#">Todas</a></li>
                <li><a class="dropdown-item opcion-filtro-solicitante" data-filtro="fisica" href="#">Personas Físicas</a></li>
                <li><a class="dropdown-item opcion-filtro-solicitante" data-filtro="moral" href="#">Personas Morales</a></li>
            </ul>
        </div>
    </div>
</div>
<!--contenedor de las cards de las unidades por asignar-->
<div class="contenedorcardunidademoautorizada">
    <?php include("../../Servidor/componentes/obtener_unidades_demo_autorizadas.php"); ?>
</div>



<!---------------------------------------modal para ver los detalles de la unidad y el COMODATO que el usuario cliente firmo----------------------->
<!--modal-->
<div class="modal fade modalinfounidademofisica" id="modalinfounidademofisica" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidademofisica"></button>
            </div>
            <div class="modal-body" id="modalinfounidademofisicabody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidademofisica" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnaprovarunidademofisica">Aprovar</button>
                <button type="button" class="btn btn-danger" id="btndenegarunidademofisica">Denegar</button>
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


<!--js para mandar a llamar el modal de informacion de la unidad y la carta responsiva de las unidades-->
<script src="../js/unidades_demo_autorizadas/unidades_demo_autorizadas.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>
<!--js para poder obtener iinformacion del mapa -->
<script src="../js/api/obtener_mapa_telematics.js"></script>
