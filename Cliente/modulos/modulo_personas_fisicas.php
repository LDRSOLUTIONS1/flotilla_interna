
<?php
include("../../Servidor/conexion.php");

if (!isset($_SESSION)) {
    session_start();
}

// Verificar que la sesión tenga los datos necesarios
if (!isset($_SESSION['id_colaborador']) || !isset($_SESSION['id_tipo_usuario'])) {
    echo "Sesión inválida";
    exit;
}

$colaborador = $_SESSION['id_colaborador'];
$id_tipo_usuario = $_SESSION['id_tipo_usuario'];

?>


<!--Aqui comienza el contenedor de unidades-->
<div class="contenedoropcionesunidades">
  <h2 class="titulosletrasunidades text-nowrap">Personas físicas</h2>
  <div class="container mt-4">
    <div class="d-flex flex-wrap justify-content-center contenedor_botones">
      <?php if ($id_tipo_usuario == 5 || $id_tipo_usuario == 6 || $id_tipo_usuario == 15 || $id_tipo_usuario == 4): // tipos de usuario solicitantes demos ?>
      <!-- Botón estilizado -->
      <button  class="btn btn-agregarunidad m-2 btnagregarpersonafisica"> <i class="fa-solid fa-user"> </i>   Registrar</button>
      <button class="btn btn-regresar m-2 " onclick="window.history.back()"> <i class="fa-solid fa-arrow-left"></i>   Regresar</button>
      <?php endif; ?>
    </div>
  </div>
</div>
<!----------------------------------------------------------------------- Tabla Responsiva de las unidades ------------------------------------------------------------------->
<div class="contendortablaunidades" id="contendortablaunidades">
  <!-- Campo de búsqueda para filtrar la tabla -->
  <div class="buscador">
    <input type="text" id="filtroBusqueda" class="form-control" placeholder="Buscar personas..." onkeyup="filtrarTabla()">
  </div>
  <!--tabla de las unidades-->
  <table class="table table-hover tablaunidades" id="tablaUnidades">
    <thead>
      <tr>
        <th class="titulostablaunidades"></th>
        <th class="titulostablaunidades">ID</th>
        <th class="titulostablaunidades">Nombre</th>
        <th class="titulostablaunidades">Género</th>
        <th class="titulostablaunidades">Curp</th>
        <th class="titulostablaunidades">RFC</th>
        <th class="titulostablaunidades">Domicilio</th>
        <th class="titulostablaunidades">Contacto</th>
        <th class="titulostablaunidades">Resguardo de unidad</th>
        <?php if ($id_tipo_usuario == 4): // Administrador demos ?>
        <th class="titulostablaunidades">Creador de la persona</th>
        <?php endif; ?>
        <th class="titulostablaunidades">Identificación o pasaporte</th>
        <th class="titulostablaunidades">CURP</th>
        <th class="titulostablaunidades">Constancia de situación fiscal</th>
        <th class="titulostablaunidades">Comprobante de domicilio</th>
        <th class="titulostablaunidades">Resguardo de la unidad</th>
      </tr>
    </thead>
    <tbody>
      <?php include("../../Servidor/componentes/obtener_personas_fisicas.php"); ?>
    </tbody>
  </table>
</div>

<!----------------------------------------------------------------------- modal de registro de personas fisicas ------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade modalregistrarpersonasfisicas" id="modalregistrarpersonasfisicas" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Personas físicas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalregistrarpersonasfisicasbody">
        

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
        <button type="button" class="btn btn-primary btn" id="btnguardarpersonafisica">Guardar</button>
      </div>
    </div>
  </div>
</div>
<!-----------------------------------------------------------------------------------modal para editar la informacion de la persona fisica-->
<!--modal-->
<div class="modal fade modaleditarpersonafisica" id="modaleditarpersonafisica" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar información</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modaleditarpersonafisicabody">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn" id="btnactualizarpersonafisica">Actualizar</button>
      </div>
    </div>
  </div>
</div>

<!----------------------------------------------------------------------- modal de asignacion a personas fisicas unidades demo ------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade modalasignarunidadesdemopersonafisica" id="modalasignarunidadesdemopersonafisica" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Asignar unidades demo a personas físicas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalasignarunidadesdemopersonafisicabody">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn" id="btnasignarunidaddemo">Guardar</button>
      </div>
    </div>
  </div>
</div>

<!------------------------------------------------------------------------modal para ver el archivo de la ine-------------------------------------------->
<!--modal-->
<div class="modal fade modalverine" id="modalverine" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">INE</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalverinebody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
<!------------------------------------------------------------------------modal para ver el archivo del rfc-------------------------------------------->
<!--modal-->
<div class="modal fade modalverrfc" id="modalverrfc" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">RFC</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalverrfcbody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<!--------------------------------------------------------------------------modal para ver el archivo del curp------------------------------------------>
<!--modal-->
<div class="modal fade modalvercurp" id="modalvercurp" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">CURP</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalvercurpbody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<!----------------------------------------------------------------------------modal para ver el archivo del domicilio---------------------------------->
<!--modal-->
<div class="modal fade modalverdomicilio" id="modalverdomicilio" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Domicilio</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalverdomiciliobody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<!----------------------------------------------------------------------------modal para ver el archivo del domicilio---------------------------------->
<!--modal-->
<div class="modal fade modalverdomicilioresguardo" id="modalverdomicilioresguardo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Domicilio resguardo de la unidad</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modalverdomicilioresguardobody">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>




<!--js para mandar a llamar el modal para dar de alta a las personas fisicas-->
<script src="../js/asignar_unidades_demo/alta_personas_fisicas.js"></script>
<!--js para mandar a llamar el modal para editar a las personas fisicas-->
<script src="../js/asignar_unidades_demo/editar_persona_fisica.js"></script>
<!--js para filtrar la tabla de unidades-->
<script src="../js/unidades/filtrar_tabla.js"></script>
