<div class="contenedoropcionesunidades demo-wrapper">

    <!-- PANEL -->
    <div class="demo-panel">

        <!-- HEADER -->
        <div class="demo-header">
            <h2 class="titulosletrasunidades">Solicitud de unidades demo</h2>
            <p class="demo-descripcion">
                Registra al cliente y después asigna una unidad disponible para demostración.
            </p>
        </div>

        <!-- ACCIONES -->
        <div class="demo-acciones">
            <div class="row justify-content-center g-4">

                <div class="col-md-3 col-sm-3">
                    <button onclick="window.location.href='../interfaces/personas_fisicas.php'"
                        class="btn btn-demo-action w-100">
                        <i class="fa-solid fa-person"></i>
                        <span>Personas físicas</span>
                    </button>
                </div>

                <div class="col-md-3 col-sm-3">
                    <button onclick="window.location.href='../interfaces/personas_morales.php'"
                        class="btn btn-demo-action w-100">
                        <i class="fa-solid fa-building-user"></i>
                        <span>Personas morales</span>
                    </button>
                </div>

            </div>
        </div>

        <p class="demo-descripcion text-center mt-4">
            Una vez que se ha registrado correctamente a la persona física o moral, se asignará una unidad disponible para demostración.
        </p>

        <!-- LISTADO -->
        <div class="demo-contenido">
            <?php include("../../Servidor/componentes/solicitar_unidades_demo.php"); ?>
        </div>

        <div class="contenedorunidadesdisponiblesdemo" id="contenedorunidadesdisponiblesdemo"></div>

    </div>

</div>


<!-----------------------------------modal para ver los detalles de la unidad DEMO que el ususario cliente solicita-------------------------------->
<!--modal-->
<div class="modal fade modalinfoformacionunidademo" id="modalinfoformacionunidademo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Asignar</h5>
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
