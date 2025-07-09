
<?php
include("../../Servidor/conexion.php");

//obtenemos el id del colaborador para saber quien es el que esta logeado
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$id_usuario = $resultado->fetch_assoc()['id_usuario'];

// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$id_tipo_usuario = $resultado->fetch_assoc()['id_tipo_usuario'];
?>

<!--Aqui comienza el contenedor de unidades-->
<div class="contenedoropcionesunidades">

  <?php if ($id_tipo_usuario == 1): // Administrador ?>
  <h2 class="titulosletrasunidades text-nowrap">Administración de unidades</h2>
  <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS ?>
  <h2 class="titulosletrasunidades text-nowrap">Administración de unidades demo</h2>
  <?php endif; ?>


  <div class="container mt-4">
   <!-------------------------------------------------------------- Botones de unidades dependiendo del tipo de usuario ADMIN o ADMIN DEMOS -->
    <?php if ($id_tipo_usuario == 1): // Administrador ?>
    <div class="d-flex flex-wrap justify-content-center contenedor_botones">
      <!-- Botón estilizado -->
      <button onclick="window.location.href='../interfaces/agrega_nuevas_unidades.php'" class="btn btn-agregarunidad m-2 "> <i class="fa-solid fa-car"> </i>   Agregar</button>
      <!-- Botón estilizado -->
      <button class="btn m-2 btn-asignarunidad btnasignarunidades"> <i class="fa-solid fa-route"> </i>   Asignar</button>
      <!-- Botón estilizado -->
      <button class="btn m-2 btn-asignarexterno btnasignarunidadesexternos"> <i class="fa-solid fa-person-walking-arrow-right"> </i>   Asignar externos</button>
    </div>

    
    <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS ?>
    <div class="d-flex flex-wrap justify-content-center contenedor_botones">
      <!-- Botón estilizado -->
      <button onclick="window.location.href='../interfaces/agrega_nuevas_unidades.php'" class="btn btn-agregarunidad m-2 "> <i class="fa-solid fa-car"> </i>   Agregar</button>
      <!-- Botón estilizado -->
      <button onclick="window.location.href='../interfaces/personas_fisicas.php'" class="btn m-2 btn-asignarunidadfisica "> <i class="fa-solid fa-person"> </i>   Personas físicas</button> 
      <!-- Botón estilizado -->
      <button onclick="window.location.href='../interfaces/personas_morales.php'" class="btn m-2 btn-asignarunidadmoral "> <i class="fa-solid fa-building-user"> </i>   Personas morales</button>
    </div>
    <?php endif; ?>
  </div>
</div>
<!----------------------------------------------------------------------- Tabla Responsiva de las unidades ------------------------------------------------------------------->
<div class="contendortablaunidades" id="contendortablaunidades">
  <!-- Campo de búsqueda para filtrar la tabla -->
  <div class="buscador">
    <input type="text" id="filtroBusqueda" class="form-control filtroBusqueda" placeholder="Buscar unidades..." onkeyup="filtrarTabla()">
  </div>
  <!--tabla de las unidades-->
  <table class="table table-hover tablaunidades" id="tablaUnidades">
    <thead>
      <?php if ($id_tipo_usuario == 1): // Administrador ?>
      <tr>
        <th class="titulostablaunidades sticky-left-0"></th>
        <th class="titulostablaunidades sticky-left-25">ID</th>
        <th class="titulostablaunidades sticky-left-50">Marca</th>
        <th class="titulostablaunidades sticky-left-75">Modelo</th>
        <th class="titulostablaunidades">Placa</th>
        <th class="titulostablaunidades">VIN</th>
        <th class="titulostablaunidades">Estado</th>
        <th class="titulostablaunidades">Tipo de unidad</th>
        <th class="titulostablaunidades">Sede</th>
        <th class="titulostablaunidades">Kilometraje</th>
        <th class="titulostablaunidades">Maps</th>
        <th class="titulostablaunidades">Seguros</th>
        <th class="titulostablaunidades">Tenencias</th>
        <th class="titulostablaunidades">Verificaciones</th>
      </tr>
      <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS ?>
      <tr>
        <th class="titulostablaunidades sticky-left-0"></th>
        <th class="titulostablaunidades ">ID</th>
        <th class="titulostablaunidades ">Marca</th>
        <th class="titulostablaunidades ">Modelo</th>
        <th class="titulostablaunidades">Placa</th>
        <th class="titulostablaunidades">VIN</th>
        <th class="titulostablaunidades">Estado</th>
        <th class="titulostablaunidades">Tipo de unidad</th>
        <th class="titulostablaunidades">Sede</th>
        <th class="titulostablaunidades">Kilometraje</th>
        <th class="titulostablaunidades">Maps</th>
        <th class="titulostablaunidades">Seguros</th>
        <th class="titulostablaunidades">Tenencias</th>
        <th class="titulostablaunidades">Verificaciones</th>
      </tr>
      <?php endif; ?>
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
        <button type="button" class="btn btn-primary" id="btnactualizarunidad">Actualizar</button>
      </div>
    </div>
  </div>
</div>
<!----------------------------------------------------------------------- modal de registro de aseguradoras ------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade modalpolizasunidades" id="modalPolizasUnidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Seguros</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalPolizasUnidadesBody">
        <?php 
        if ($id_tipo_usuario == 1): // Administrador
        include("../../Servidor/componentes/formularioPolizas.php"); 
        elseif ($id_tipo_usuario == 4): // Administrador DEMOS
          include("../../Servidor/componentes/formularioPolizas.php"); 
        endif;
        ?>

        <?php if ($id_tipo_usuario == 1): // Administrador ?>
        <div class="d-flex " style="padding-left: 20px;">
          <button type="button" class="btn btn-primary btn" id="btnguardaraseguradora">Guardar</button>
        </div>
        <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS?>
        <div class="d-flex " style="padding-left: 20px;">
          <button type="button" class="btn btn-primary btn" id="btnguardaraseguradora">Guardar</button>
        </div>
        <?php endif; ?>

        <div>
          <div class="contenedor_tabla_polizas">
            <div class="row">
              <div class="col-md">
                <h4>Historial</h4>
                <div class="contenedor_poliza_seguro" id="contenedor_poliza_seguro">
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


<!--------------------------------------------------------------------------modal editar aseguradoras ------------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalEditarPolizasUnidades" id="modaleditarpolizasUnidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar aseguradora</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalEditarPolizasUnidadesBody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnguardarpolizaeditada">Guardar</button>
      </div>
    </div>
  </div>
</div>

<!----------------------------------------------------------------------------modal registro tenencias------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalTenenciasunidades" id="modalTenenciasunidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tenencias</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalTenenciasunidadesBody">
        <?php 
        if ($id_tipo_usuario == 1): // Administrador
        include("../../Servidor/componentes/formularioTenencias.php"); 
        elseif ($id_tipo_usuario == 4): // Administrador DEMOS
        include("../../Servidor/componentes/formularioTenencias.php"); 

        endif;
        ?>

        

        <?php if ($id_tipo_usuario == 1): // Administrador ?>
        <div class="d-flex " style="padding-left: 20px;">
          <button type="button" class="btn btn-primary btn" id="btnguardartenencia">Guardar</button>
        </div>
        <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS?>
        <div class="d-flex " style="padding-left: 20px;">
          <button type="button" class="btn btn-primary btn" id="btnguardartenencia">Guardar</button>
        </div>
        <?php endif; ?>

        <div>
          <div class="contenedor_tabla_polizas">
            <div class="row">
              <div class="col-md">
                <h4>Historial</h4>
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

<!--------------------------------------------------------------------------modal editar tenencias ------------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalEditarTenencias" id="modalEditarTenencias" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar tenencia</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalEditarTenenciasBody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnguardartenenciaedotada">Guardar</button>
      </div>
    </div>
  </div>
</div>

<!----------------------------------------------------------------------------modal registro verificaciones------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalverificaciones" id="modalverificaciones" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Verificaciones</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalverificacionesBody">
        <?php  ?>

        <?php 
        if ($id_tipo_usuario == 1): // Administrador
        include("../../Servidor/componentes/formularioVerificaciones.php");
        elseif ($id_tipo_usuario == 4): // Administrador DEMOS
        include("../../Servidor/componentes/formularioVerificaciones.php");
        endif;
        ?>

        <?php if ($id_tipo_usuario == 1): // Administrador ?>
        <div class="d-flex " style="padding-left: 20px;">
          <button type="button" class="btn btn-primary btn" id="btnguardarverificacion">Guardar</button>
        </div>
        <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS?>
        <div class="d-flex " style="padding-left: 20px;">
          <button type="button" class="btn btn-primary btn" id="btnguardarverificacion">Guardar</button>
        </div>
        <?php endif; ?>

        <div>
          <div class="contenedor_tabla_polizas">
            <div class="row">
              <div class="col-md">
                <h4>Historial</h4>
                <div class="contenedor_poliza_verificacion" id="contenedor_poliza_verificacion">
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
<!--------------------------------------------------------------------------modal editar verificaciones ------------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalEditarVerificaciones" id="modalEditarVerificaciones" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Aseguradora</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalEditarVerificacionesBody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnguardarverificacioneditada">Guardar</button>
      </div>
    </div>
  </div>
</div>
<!----------------------------------------------------------------------- Modal filtro de unidades ------------------------------------------------------------------>
<!-- Modal -->
<div class="modal fade modalfiltrounidades" id="modalfiltrounidades" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Asignar unidades</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalfiltrounidades"></button>
      </div>
      <div class="modal-body" id="modalfiltrounidadesbody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="btncerrarmodalfiltrounidades" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>



<!------------------------------------------------------------------------- Modal ver unidad para asignacion exclusiva------------------------------------------------------------------>
<!--modal-->
<div class="modal fade modalasignarunidadexclusiva" id="modalasignarunidadexclusiva" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Unidad exclusiva</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalasignarunidadexclusivabody">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnasignarunidadexclusiva">Asignar</button>
      </div>
    </div>
  </div>
</div>

<!------------------------------------------------------------------------modal para asignar unidad a externos---------------------------------------------------->
<!--modal-->
<div class="modal fade modalasignarunidadexterno" id="modalasignarunidadexterno" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Asignar unidad a usuario externo</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btncerrarmodalasignarunidadexterno"></button>
      </div>
      <div class="modal-body" id="modalasignarunidadexternobody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="btncerrarmodalasignarunidadexterno" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnasignarunidadexterno">Registrar</button>
      </div>
    </div>
  </div>
</div>


<!--------------------------------------------------------------------------Modal para ver el Mapa y saber donde esta la unidad-->
<!--modal-->
<div class="modal fade" id="modalMapa" tabindex="-1" aria-labelledby="modalMapaLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Ultima actualización de la ubicación de la unidad</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <div id="mapaUnidad" style="height: 500px;"></div>
      </div>
    </div>
  </div>
</div>


<!--js para mandar a llamar el modal de edicion de unidades-->
<script src="../js/unidades/editarunidades.js"></script>
<!--js para mandar a llamar el modal de polizas aseguradoras-->
<script src="../js/polizas/modulo_poliza_aseguradora.js"></script>
<!--js para mandar a llamar el modal de polizas tenencias-->
<script src="../js/polizas/modulo_poliza_tenencia.js"></script>
<!--js para mandar a llamar el modal de polizas tenencias-->
<script src="../js/polizas/modulo_poliza_verificacion.js"></script>
<!--js para filtrar la tabla de unidades-->
<script src="../js/unidades/filtrar_tabla.js"></script>
<!--js para editar polizas de seguros-->
<script src="../js/polizas/editar_polizas.js"></script>
<!--js para editar polizas tenencias-->
<script src="../js/polizas/editar_tenencias.js"></script>
<!--js para editar polizas verificaciones-->
<script src="../js/polizas/editar_verificaciones.js"></script>
<!--asignar unidades-->
<script src="../js/asignar_unidades/asignar_unidades.js"></script>
<!--asignar unidades externos-->
<script src="../js/asignar_unidades/asignar_unidades_externos.js"></script>
<!--js para poder obtener iinformacion del mapa -->
<script src="../js/api/obtener_mapa_telematics.js"></script>
