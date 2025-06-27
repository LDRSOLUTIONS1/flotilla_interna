<!-------------------------------------------aqui comienza el contenedor mis unidades cliente----------------------------------------------------------->
<div class="contenedormisunidades">
    <h2 class="titulosletrasunidades text-nowrap">Mis unidades</h2>
    <!-- Campo de búsqueda para filtrar las cards -->
     <div class="contenedorbuscador">
  <div class="buscador">
    <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarCards()">
  </div>
  </div>
    <div class="contenedorcardunidadescliente">
        <?php include("../../Servidor/componentes/obtener_mis_unidades_cliente.php"); ?>
    </div>
</div>

<!--js para filtrar las cards de unidades-->
<script src="../js/unidades/filtrar_cards.js"></script>