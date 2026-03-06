<!--Aqui comienza el contenedor de unidades-->

<div class="container mt-4" style="padding-top: 40px;">

  <div class="panel-acciones-final p-4 mb-4">

    <div class="d-flex justify-content-between align-items-center flex-wrap">

      <div>
        <h4 class="titulo-validacion mb-1">Personas morales</h4>
        <p class="subtitulo-validacion mb-0">
          Registro y administración de personas morales para asignación de unidades demo
        </p>
      </div>

      <div class="d-flex flex-wrap gap-2 mt-3 mt-md-0">
        <?php if ($id_tipo_usuario == 5 || $id_tipo_usuario == 6 || $id_tipo_usuario == 15 || $id_tipo_usuario == 4): ?>

          <button class="btn btn-success btnagregarpersonamoral">
            <i class="fa-solid fa-building-user me-2"></i> Registrar persona moral
          </button>

          <button class="btn btn-outline-secondary" onclick="window.history.back()">
            <i class="fa-solid fa-arrow-left me-2"></i> Regresar
          </button>

        <?php endif; ?>
      </div>

    </div>

  </div>
  <!----------------------------------------------------------------------- Tabla Responsiva de las unidades ------------------------------------------------------------------->
  <div class="contendortablaunidades" id="contendortablaunidades">
    <!-- Campo de búsqueda para filtrar la tabla -->
    <div class="panel-acciones-final p-3 mb-3">

      <div class="flex-grow-1">
        <label class="form-label fw-semibold mb-1">Buscar persona moral</label>

        <div class="input-group">
          <span class="input-group-text bg-white">
            <i class="fas fa-search text-muted"></i>
          </span>
          <input type="text"
            id="filtroBusqueda"
            class="form-control"
            placeholder="Buscar por razón social o RFC..."
            onkeyup="filtrarTabla()">
        </div>
      </div>

    </div>
    <!--tabla de las unidades-->
    <div class="panel-acciones-final p-3">

      <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap">
        <p class="panel-texto fw-bold mb-3">
          🔹 Listado de personas morales
        </p>
      </div>
      <div class="table-responsive">
        <table class="table table-hover tablaunidades" id="tablaUnidades">
          <thead>
            <tr>
              <th class="titulostablaunidades"></th>
              <th class="titulostablaunidades">ID</th>
              <th class="titulostablaunidades">Persona moral</th>
              <th class="titulostablaunidades">RFC</th>
              <th class="titulostablaunidades">Domicilio</th>
              <th class="titulostablaunidades">Contacto</th>
              <th class="titulostablaunidades">Resguardo de unidad</th>
              <?php if ($id_tipo_usuario == 4): ?>
                <th class="titulostablaunidades">Creador de la persona</th>
              <?php endif; ?>
              <th class="titulostablaunidades">Identificación o pasaporte</th>
              <th class="titulostablaunidades">Poder representante legal</th>
              <th class="titulostablaunidades">Constancia situación fiscal</th>
              <th class="titulostablaunidades">Domicilio</th>
              <th class="titulostablaunidades">Escritura constitutiva</th>
              <th class="titulostablaunidades">Escritura estatutos sociales</th>
              <th class="titulostablaunidades">Resguardo de la unidad</th>
            </tr>
          </thead>
          <tbody>
            <?php include("../../Servidor/componentes/obtener_personas_morales.php"); ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <!----------------------------------------------------------------------- modal de registro de personas morales ------------------------------------------------------------------->
  <!-- Modal -->
  <div class="modal fade modalregistrarpersonasmorales" id="modalregistrarpersonasmorales" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Personas morales</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="modalregistrarpersonasmoralesbody">


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
          <button type="button" class="btn btn-primary btn" id="btnguardarpersonamoral">Guardar</button>
        </div>
      </div>
    </div>
  </div>

  <!-------------------------------------------------------------------------modal para ver los archivos de la persona moral------------------------------------------>
  <!------------------------------------------------------------------------modal para ver el archivo identificacion del representante legal----------------------->
  <!--modal-->
  <div class="modal fade modalveridrepresentantelegal" id="modalveridrepresentantelegal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">CURP</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="modalveridrepresentantelegalbody">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
  <!-----------------------------------------------------------------------modal para ver el archivo poder del representante legal-->
  <!--modal-->
  <div class="modal fade modalverpoderrepresentantelegal" id="modalverpoderrepresentantelegal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Poder</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="modalverpoderrepresentantelegalbody">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!-------------------------------------------------------------------------modal para ver el archivo del rfc-->
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

  <!-----------------------------------------------------------------------------------MODAL PARA VER EL ARCHIVO DEL DOMICILIO DE LA PERSONA MORAL-->
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

  <!----------------------------------------------------------------------------------------------modal para ver el archivo de la escritura constitutiva-->
  <!--modal-->
  <div class="modal fade modalverescrituraconstitutiva" id="modalverescrituraconstitutiva" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Escritura Constitutiva</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="modalverescrituraconstitutivabody">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!------------------------------------------------------------------------------------modal para ver el archivo de estatius sociales--------------->
  <!--modal-->
  <div class="modal fade modalverestatusosciales" id="modalverestatusosciales" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Estatius</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="modalverestatusoscialesbody">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>


  <!-----------------------------------------------------------------------------------modal para editar la informacion de la persona moral-->
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
          <button type="button" class="btn btn-primary btn" id="btneditarpersonafisica">Guardar</button>
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
    <div class="modal-dialog modal-sm">
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
    <div class="modal-dialog modal-sm">
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
  <div class="modal fade modalveridrepresentantelegal" id="modalveridrepresentantelegal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">CURP</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="modalveridrepresentantelegalbody">
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
    <div class="modal-dialog modal-sm">
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




  <!--js para mandar a llamar el modal de edicion de unidades-->
  <script src="../js/asignar_unidades_demo/alta_personas_morales.js"></script>
  <!--js para filtrar la tabla de unidades-->
  <script src="../js/unidades/filtrar_tabla.js"></script>