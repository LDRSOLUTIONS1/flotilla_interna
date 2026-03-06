<div class="container mt-4" style="padding-top: 40px;">
    <!-- PANEL -->
    <div class="container mt-4" style="padding-top: 40px;">

        <!-- HEADER -->
        <div class="mb-4">
            <h4 class="titulo-validacion mb-1">Solicitud de unidades demo</h4>
            <p class="subtitulo-validacion mb-0">Registra al cliente y después asigna una unidad disponible para demostración.</p>
        </div>

        <!-- PANEL DESTACADO -->
        <div class="panel-acciones-final p-4 mb-4">
            <!-- Call to Action -->
            <p class="panel-texto fw-bold mb-3">
                🔹 Aquí se registran las personas físicas y morales antes de asignarles una unidad demo
            </p>

            <!-- Botones -->
            <div class="d-flex flex-wrap gap-3">
                <button onclick="window.location.href='../interfaces/personas_fisicas.php'"
                    class="btn btn-final-demo" data-bs-toggle="tooltip" data-bs-placement="top" title="Registrar persona física">
                    <i class="fa-solid fa-person fa-xl me-2"></i>
                    Alta Personas físicas
                </button>

                <button onclick="window.location.href='../interfaces/personas_morales.php'"
                    class="btn btn-final-demo" data-bs-toggle="tooltip" data-bs-placement="top" title="Registrar persona moral">
                    <i class="fa-solid fa-building-user fa-xl me-2"></i>
                    Alta Personas morales
                </button>
            </div>
        </div>

    </div>


    <!-- LISTADO -->
    <div class="demo-contenido">
        <?php include("../../Servidor/componentes/solicitar_unidades_demo.php"); ?>
    </div>

    <div class="contenedorunidadesdisponiblesdemo" id="contenedorunidadesdisponiblesdemo"></div>

</div>



<!-----------------------------------modal para ver los detalles de la unidad DEMO que el ususario cliente solicita-------------------------------->
<!--modal-->
<div class="modal fade modalinfoformacionunidademo" id="modalinfoformacionunidademo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Asignación</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalinfounidadpool"></button>
            </div>
            <div class="modal-body" id="modalinfoformacionunidademobody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalinfounidadpool" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<!-----------------------------------modal para ver los detalles de la unidad demo que el ususario cliente solicita-------------------------------->
<!--modal-->
<div class="modal fade modalverunidaddemoasignacion" id="modalverunidaddemoasignacion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalverunidaddemoasignacion"></button>
            </div>
            <div class="modal-body" id="modalverunidaddemoasignacionbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalverunidaddemoasignacion" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnsolicitaruniaddemo">Solicitar</button>
            </div>
        </div>
    </div>
</div>

<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards.js"></script>
<!--js para mandar a llmamar la informacion de unidades pool-->
<script src="../js/asignar_unidades_demo/solicitud_unidades_demo.js"></script>