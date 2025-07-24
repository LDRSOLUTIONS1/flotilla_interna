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

<!-----------------aqui comienza el contenedor para subir el desempeño de las unidades demos por parte del usuario tipo 11 ADMINISTRADOR PRUEBA DEMO ---------------------------------->
<div class="contenedordesempeñosdemos">
    <h5 class="titulosletrasdesempeñodemos text-nowrap">Desempeños de las unidades demos</h5>
</div>

<!-- Campo de búsqueda para filtrar la tabla -->
<div class="contenedorbuscadorpruebasunidademo">
    <div class="buscadorunidadesdemoautorizadas mb-3 col-md-8">
        <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards(), filtrarTabla()">
    </div>
    <!-- // Botón para alternar vista -->
    <div class="d-flex justify-center" style="left: 130px;">
        <!--boton para filtrar por tipo de solicitante-->
        <div class="dropdown mx-2">
            <button class="btn btn-secondary dropdown-toggle mb-3 mx-1" type="button" id="dropdownFiltroSolicitante" data-bs-toggle="dropdown" aria-expanded="false">
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
    <?php include("../../Servidor/componentes/obtener_desempeños_unidades_demo.php"); ?>
</div>



<!---------------------------------------modal para ver los detalles de la unidad demo del lado del usuario tipo 9 master driver--------------------------------------->
<!--modal-->
<div class="modal fade modalinfopruebaunidademo" id="modalinfopruebaunidademo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfopruebaunidademo"></button>
            </div>
            <div class="modal-body" id="modalinfopruebaunidademobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfopruebaunidademo" data-bs-dismiss="modal">Cerrar</button>
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
<script src="../js/pruebas_unidades_demo/pruebas_unidades_demo.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>
<!--js para poder obtener iinformacion del mapa -->
<script src="../js/api/obtener_mapa_telematics.js"></script>
