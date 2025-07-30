<!-------------------------------------------aqui comienza el contenedor Validacion de los comodatos ----------------------------------------------------------->
<div class="contenedorvalidacionunidades">
    <h5 class="titulosletrasunidades text-nowrap">Reportes finales Master Drivers</h5>
    <h5 class="letravalidacionunidad text-nowrap">
    </h5>
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
    <?php include("../../Servidor/componentes/obtener_unidades_reportes_finales_demos.php"); ?>
</div>

<!--modal para ver la prueba demo y la informacion de la unidad-->
<!--modal-->
<div class="modal fade modalresultadopruebademo" id="modalresultadopruebademo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Prueba unidad demo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalpruebademo"></button>
            </div>
            <div class="modal-body" id="modalresultadopruebademobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalpruebademo" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>




<!--js para mandar a llamar el modal de informacion de la unidad y la carta responsiva de las unidades-->
<script src="../js/reporte_final_prueba_demo/reportes_finales_demos.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>