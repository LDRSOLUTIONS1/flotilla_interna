<!-------------------------------------------aqui comienza el contenedor mis unidades cliente----------------------------------------------------------->
<div class="contenedormisunidades">

    <h2 class="titulosletrasunidades text-nowrap">Solicitud de unidades pool</h2>
    <!-- Campo de búsqueda para filtrar la tabla -->
    <!-- <div class="contenedorbuscador">
  <div class="buscador">
    <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards()">
  </div>
  </div> -->

    <!--contenedor de las cards de las unidades por asignar-->
    <div class="">
        <?php //include("../../Servidor/componentes/obtener_unidades_pool.php"); ?>
        <?php include("../../Servidor/componentes/solicitar_unidades_pool.php"); ?>
    </div>
    <div class="contenedorunidadesdisponiblespool" id="contenedorunidadesdisponiblespool"></div>
</div>


<!-----------------------------------modal para ver los detalles de la unidad pool que el ususario cliente solicita-------------------------------->
<!--modal-->
<div class="modal fade modalinfoformacionunidadpool" id="modalinfoformacionunidadpool" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidadpool"></button>
            </div>
            <div class="modal-body" id="modalinfoformacionunidadpoolbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidadpool" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnsolicitaruniadpool">Solicitar</button>
            </div>
        </div>
    </div>
</div>

<!-----------------------------------modal para ver los detalles de la unidad pool que el ususario cliente solicita-------------------------------->
<!--modal-->
<div class="modal fade modalinfounidadpool" id="modalinfounidadpool" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidadpool"></button>
            </div>
            <div class="modal-body" id="modalinfounidadpoolbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidadpool" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnsolicitaruniadpool11">Solicitar</button>
            </div>
        </div>
    </div>
</div>

<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards.js"></script>
<!--js para mandar a llmamar la informacion de unidades pool-->
<script src="../js/solicitud_unidades_pool/solicitud_unidades_pool.js"></script>
