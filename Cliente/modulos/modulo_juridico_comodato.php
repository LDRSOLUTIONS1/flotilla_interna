<!-------------------------------------------aqui comienza el contenedor Validacion de carta responsiva ----------------------------------------------------------->
<div class="contenedorvalidacionunidades">
    <h5 class="letravalidacionunidadjuridico text-nowrap">
        Sube el COMODATO correspondiente al usuario.
    </h5>
    <!-- Campo de búsqueda para filtrar la tabla -->
    <div class="contenedorbuscadosubircomodato">
        <div class="buscadorcomodato">
            <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards(), filtrarTabla()">
                <!-- // Botón para alternar vista -->
    <div class="d-flex justify-center" style="left: 130px;"><button class="btn btn-cambiar_vista mb-3" id="botonCambiarVista" onclick="toggleVista()">Cambiar a vista de tabla</button> </div>
        </div>
    </div>
    
    <!--contenedor de las cards de las unidades por asignar-->
    <div class="contenedorcardunidadescliente">
        <?php include("../../Servidor/componentes/obtener_unidades_subir_comodato.php"); ?>
            <div class="d-flex justify-center" style="left: 130px;"><button class="btn btn-cambiar_vista mb-3" id="botonCambiarVista" onclick="toggleVista()">Cambiar a vista de tabla</button> </div>

    </div>
</div>

<!-------------------------------------modal para subir el comodato correspondiente al usuario-------------------------------->
<!--modal-->
<div class="modal fade modalunidadcomodato" id="modalunidadcomodato" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalunidadcomodato"></button>
            </div>
            <div class="modal-body" id="modalunidadcomodatobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalunidadcomodato" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnenviarcomodato">Enviar</button>
            </div>
        </div>
    </div>
</div>

<!-------------------------------------js para subir el comodato correspondiente al usuario-------------------------------->
<script src="../js/juridico/comodato.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>