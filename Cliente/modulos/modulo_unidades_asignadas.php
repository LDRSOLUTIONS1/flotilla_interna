<!-------------------------------------------aqui comienza el contenedor mis unidades cliente----------------------------------------------------------->
<div class="contenedormisunidades">

    <h2 class="titulosletrasunidadesasignadas text-nowrap">Unidades asignadas</h2>
    <!-- Campo de búsqueda para filtrar las cards -->
     <div class="contenedorbuscador">
  <div class="buscadorunidadesasignadas">
    <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards()">
  </div>
  </div>

    <!--contenedor de las cards de las unidades asignadas-->
    <h2 class="titulosletrasunidadesasignadas text-nowrap">Vehículos exclusivos</h2>
    <div class="contenedorcardunidades">
        <?php include("../../Servidor/componentes/obtener_unidades_asignadas.php"); ?>
    </div>

        <!--contenedor de las cards de las unidades asignnadas-->
<h2 class="titulosletrasunidadesasignadas text-nowrap">Vehículos pool</h2>
    <div class="contenedorcardunidades">
        <?php include("../../Servidor/componentes/obtener_unidades_asignadas_pool.php"); ?>
    </div>

        <!--contenedor de las cards de las unidades asignnadas a externos-->
<h2 class="titulosletrasunidadesasignadas text-nowrap">Vehículos asignados a usuarios externos</h2>
    <div class="contenedorcardunidades">
        <?php include("../../Servidor/componentes/obtener_unidades_asignadas_externos.php"); ?>
    </div>

</div>

<!---------------------------------------------modal para la informacion de asignascion de unidades de manera precencial---------------------------------->
<!--modal-->
<div class="modal fade modalasignacionpresencial" id="modalasignacionpresencial" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalasignacionpresencial"></button>
            </div>
            <div class="modal-body" id="modalasignacionpresencialbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalasignacionpresencial" data-bs-dismiss="modal">Cerrar</button>
                

            </div>
        </div>
    </div>
</div>

<!--------------------------------------------modal para el cheklist de las unidades----------------------------------->
<!--modal-->
<div class="modal fade modalcheklistunidad" id="modalcheklistunidad" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Cheklist de la unidad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalcheklistunidad"></button>
            </div>
            <div class="modal-body" id="modalcheklistunidadbody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btncerrarmodalcheklistunidad" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btnguardarcheklistunidad">Entregar</button>
            </div>
        </div>
    </div>
</div>



<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards.js"></script>
<!--js para asignar la unidad de manera precencial-->
<script src="../js/asignar_unidades/asignar_unidades_presencial.js"></script>
