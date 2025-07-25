<!-------------------------------------------aqui comienza el contenedor Validacion de los comodatos ----------------------------------------------------------->
<div class="contenedorvalidacionunidades">
    <h5 class="titulosletrasunidades text-nowrap">Reportes finales</h5>
    <h5 class="letravalidacionunidad text-nowrap">
        Sube el reporte a la unidad correspondiente.
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
    <?php include("../../Servidor/componentes/obtener_unidades_subir_reporte_final.php"); ?>
</div>




<!--js para mandar a llamar el modal de informacion de la unidad y la carta responsiva de las unidades-->
<script src="../js/reporte_final_prueba_demo/reporte_final_prueba_demo.js"></script>
<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards_tabla.js"></script>