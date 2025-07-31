 <!-------------------------------------------aqui comienza el contenedor mis unidades cliente----------------------------------------------------------->
<div class="contenedormisunidades">

    <h5 class="titulosletrasunidadescliente text-nowrap">Unidades demo autorizadas</h5>
    <!--contenedor de las cards de las unidades por asignar-->
    <div class="contenedorcardunidadescliente">
        <?php include("../../Servidor/componentes/obtener_unidades_utorizadas_demos.php"); ?>
    </div>
</div>

<!---------------------------------------modal para solicitar prorrogas---------------------------------->
<!--modal-->
<div class="modal fade modalprorrogaunidaddemo" id="modalprorrogaunidaddemo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Solicitud de prorroga</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalprorrogaunidaddemo"></button>
            </div>
            <div class="modal-body" id="modalprorrogaunidaddemobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalprorrogaunidaddemo" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnenviarpolitica">Solicitar</button>
            </div>
        </div>
    </div>
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


<!--js solicitar prorroga de la unidad-->
<script src="../js/unidades_demo_autorizadas/asignaciones_unidades_demo.js"></script>
<!--js para vizualisar el reporte final de la prueba demo-->
<script src="../js/reporte_final_prueba_demo/reportes_finales_demos.js"></script>

