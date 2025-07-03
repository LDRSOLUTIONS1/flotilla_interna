<!-------------------------------------------aqui comienza el contenedor Validacion de los comodatos ----------------------------------------------------------->
<div class="contenedorvalidacionunidades">
    <h5 class="titulosletrasunidades text-nowrap">Vehículos exclusivos</h5>
    <h5 class="letravalidacionunidad text-nowrap">
        Asegúrate de que la unidad tenga firmado el comodato.
    </h5>
    <div class="container mt-4">
        <div class="d-flex flex-wrap justify-content-center contenedor_botones_validacion_unidades">
            <!-- Botón estilizado -->
            <button onclick="window.location.href='../interfaces/validacion_unidades_comodato.php'" class="btn btn-comodato m-2 "><i class="fa-solid fa-file-contract"></i> Comodato</button>
            <!-- Botón estilizado -->
            <button onclick="window.location.href='../interfaces/validacion_unidades.php'" class="btn btn-responsiva m-2 "><i class="fa-solid fa-file-contract"></i> Carta Responsiva</button>
        </div>
    </div>
</div>

<!-- Campo de búsqueda para filtrar la tabla -->
<div class="contenedorbuscadorvalidacionunidades ">
    <div class="buscadorcomodato mb-3 col-md-8">
        <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards(), filtrarTabla()">
    </div>
    <!-- // Botón para alternar vista -->
    <div class="d-flex justify-center" style="left: 130px;"><button class="btn btn-cambiar_vista mb-3" id="botonCambiarVista" onclick="toggleVista()">Cambiar a vista de tabla</button> </div>
</div>
<!--contenedor de las cards de las unidades por asignar-->
<div class="contenedorcardunidadescomodatoresponsiva">
    <?php include("../../Servidor/componentes/obtener_validacion_unidades_comodato.php"); ?>
</div>



<!---------------------------------------modal para ver los detalles de la unidad y el COMODATO que el usuario cliente firmo----------------------->
<!--modal-->
<div class="modal fade modalinfounidadcomodato" id="modalinfounidadcomodato" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad y COMODATO</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidadcomodato"></button>
            </div>
            <div class="modal-body" id="modalinfounidadcomodatobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-dark" id="btnnotificarusuario"><i class="fas fa-bell"></i> Notificar</button>
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidadcomodato" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnaprovarcomodatofirmado">Asignar</button>
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




<!--js para mandar a llamar el modal de informacion de la unidad y la carta responsiva de las unidades-->
<script src="../js/asignar_unidades/validacion_unidades_comodato.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>