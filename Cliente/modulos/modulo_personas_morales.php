<!--Aqui comienza el contenedor de unidades-->
<div class="contenedoropcionesunidades">
  <h2 class="titulosletrasunidades text-nowrap">Personas morales</h2>
  <div class="container mt-4">
    <div class="d-flex flex-wrap justify-content-center contenedor_botones">
      <!-- Botón estilizado -->
      <button  class="btn btn-resgistrar_moral m-2 btnagregarpersonamoral"> <i class="fa-solid fa-building-user"> </i>   Registrar</button>
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
        <th class="titulostablaunidades">Organizacion o institucion</th>
        <th class="titulostablaunidades">Identificacion o pasaporte</th>
        <th class="titulostablaunidades">Vigencia</th>
        <th class="titulostablaunidades">Id representante legal</th>
        <th class="titulostablaunidades">Archivo poder</th>
        <th class="titulostablaunidades">RFC</th>
        <th class="titulostablaunidades">Domicilio</th>
        <th class="titulostablaunidades">Archivo RFC</th>
        <th class="titulostablaunidades">Archivo domicilio</th>
        <th class="titulostablaunidades">Escritura constitutiva</th>
        <th class="titulostablaunidades">Escritura estatus sociales</th>
      </tr>
    </thead>
    <tbody>
      <?php include("../../Servidor/componentes/obtener_personas_morales.php"); ?>
    </tbody>
  </table>
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




<!--js para mandar a llamar el modal de edicion de unidades-->
<script src="../js/asignar_unidades_demo/alta_personas_morales.js"></script>
<!--js para filtrar la tabla de unidades-->
<script src="../js/unidades/filtrar_tabla.js"></script>
