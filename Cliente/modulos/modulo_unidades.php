<!--Aqui comienza el contenedor de unidades-->
<div class="contenedoropcionesunidades">
  <h2 class="titulosletrasunidades text-nowrap">Administración de unidades</h2>
  <div class="container mt-4">
    <div class="d-flex flex-wrap justify-content-center contenedor_botones">
      <!-- Enlace estilizado como un botón -->
      <a href="../interfaces/agrega_nuevas_unidades.php" class="btn btn-primary m-2 w-auto text-decoration-none">Agregar nuevas unidades</a>
      <!-- Enlace estilizado como un botón -->
      <a href="#" class="btn btn-success m-2 w-auto text-decoration-none">Asignar unidades</a>
      <!-- Enlace estilizado como un botón -->
      <a href="#" class="btn btn-warning m-2 w-auto text-decoration-none">Asignar unidades Pool</a>
    </div>
  </div>
</div>
<!----------------------------------------------------------------------- Tabla Responsiva de las unidades ------------------------------------------------------------------->
<div class="contendortablaunidades" id="contendortablaunidades">
  <!-- Campo de búsqueda para filtrar la tabla -->
  <div class="buscador">
    <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar unidades..." onkeyup="filtrarTabla()">
  </div>
  <!--tabla de las unidades-->
  <table class="table table-hover tablaunidades" id="tablaUnidades">
    <thead>
      <tr class="titulostablaunidades">
        <th></th>
        <th>ID</th>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Placa</th>
        <th>Estado</th>
        <th>Ubicación</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      <?php include("../../Servidor/solicitudes/unidades/obtener_unidades.php"); ?>
    </tbody>
  </table>
</div>
<!----------------------------------------------------------------------- modal de edicion de unidades ------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade modaleditarunidades" id="modalEditarUnidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar unidades</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalEditarUnidadesBody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnactualizarunidad">Actualizar unidad</button>
      </div>
    </div>
  </div>
</div>
<!----------------------------------------------------------------------- modal de polizas de unidades ------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade modalpolizasunidades" id="modalPolizasUnidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Pólizas de unidades</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalPolizasUnidadesBody">
      <?php include("../../Servidor/componentes/formularioPolizas.php"); ?>
        <button type="button" class="btn btn-primary btn-sm" id="btnguardarpoliza">Guardar póliza</button>
        <div>
          <div class="contenedor_tabla_polizas">
            <div class="row">
              <div class="col-md">
                <h4>Pólizas de seguros</h4>
                <div class="contenedor_poliza_seguro" id="contenedor_poliza_seguro">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md">
                <h4>Pólizas de tenencias</h4>
                <div class="contenedor_poliza_tenencia" id="contenedor_poliza_tenencia">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<!--------------------------------------------------------------------------modal editar polizas de unidades ------------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalEditarPolizasUnidades" id="modaleditarpolizasUnidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Pólizas de unidades</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalEditarPolizasUnidadesBody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnguardarpolizaeditada">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>





<!--js para mandar a llamar el modal de edicion de unidades-->
<script src="../js/unidades/editarunidades.js?v=1"></script>
<!--js para mandar a llamar el modal de polizas de unidades-->
<script src="../js/polizas/modulopolizas.js?v=1"></script>
<!--js para filtrar la tabla de unidades-->
<script src="../js/unidades/filtrar_tabla.js?v=1"></script>
<!--js para editar polizas de unidades-->
<script src="../js/polizas/editar_polizas.js?v=1"></script>
<!--actualizar polizas de unidades-->
<script src="../js/polizas/actualizar_polizas.js?v=1"></script> 
<!--actualizar unidades-->
<script src="../js/unidades/actualizar_unidades.js?v=1"></script>