<!-------------------------------------------aqui comienza el contenedor UNIDADES DEMO----------------------------------------------------------->
<div class="contenedoropcionesunidades">

    <h2 class="titulosletrasunidades text-nowrap">Solicitud de unidades demo</h2>

    <div class="container mt-4">
        <div class="d-flex flex-wrap justify-content-center contenedor_botones">
            <!-- Botón estilizado -->
            <button onclick="window.location.href='../interfaces/personas_fisicas.php'" class="btn m-2 btn-asignarunidadfisica "> <i class="fa-solid fa-person"> </i> Personas físicas</button>
            <!-- Botón estilizado -->
            <button onclick="window.location.href='../interfaces/personas_morales.php'" class="btn m-2 btn-asignarunidadmoral "> <i class="fa-solid fa-building-user"> </i> Personas morales</button>
        </div>
    </div>
    <h1 class="letrasolicitudemo text-nowrap">Después de registrar a la persona física/moral asígnele una unidad</h1>
    <!--contenedor de las cards de las unidades por asignar-->
    <div class="">
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