document.addEventListener("DOMContentLoaded", function () {
  //abrimos la modal para vizualisar la informacion general de la unidad y solicitarla
  const modalinfoformacionunidademo = new bootstrap.Modal(
    document.getElementById("modalinfoformacionunidademo")
  );
  const modalinfoformacionunidademobody = document.getElementById(
    "modalinfoformacionunidademobody"
  );

  //abrimos modal para ver la unidad demo al seleccionar la persona fisica/moral asignada
  const modalverunidaddemoasignacion = new bootstrap.Modal(
    document.getElementById("modalverunidaddemoasignacion")
  );
  const modalverunidaddemoasignacionbody = document.getElementById(
    "modalverunidaddemoasignacionbody"
  );

  const btnsolicitudunidademo = document.getElementById(
    "btnsolicitudunidademo"
  );
  btnsolicitudunidademo.addEventListener("click", function () {
    const sederecolecciondemo = document.getElementById("sederecolecciondemo");
    const fechasolicitudunidademo = document.getElementById(
      "fechasolicitudunidademo"
    );
    const sededevolucionunidademo = document.getElementById(
      "sededevolucionunidademo"
    );
    const fechadevolucionunidademo = document.getElementById(
      "fechadevolucionunidademo"
    );
    let idunidad = 0;

    let valorsederecolecciondemo;
    let valorfechasolicitudunidademo;
    let valorsededevolucionunidademo;
    let valorfechadevolucionunidademo;

    contenedorspinner.style.display = "flex";

    obtenervalores();
    if (validarllenado()) {
      consultar();
    } else {
      contenedorspinner.style.display = "none";
    }

    function obtenervalores() {
      valorsederecolecciondemo = sederecolecciondemo.value;
      valorfechasolicitudunidademo = fechasolicitudunidademo.value;
      valorsededevolucionunidademo = sededevolucionunidademo.value;
      valorfechadevolucionunidademo = fechadevolucionunidademo.value;

      console.log(valorsederecolecciondemo);
      console.log(valorfechasolicitudunidademo);
      console.log(valorsededevolucionunidademo);
      console.log(valorfechadevolucionunidademo);
    }

    function validarllenado() {
      const campos = [
        {
          campo: valorsederecolecciondemo,
          nombre: "sederecolecciondemo",
          atributo: "Ubicación de recolección",
        },
        {
          campo: valorfechasolicitudunidademo,
          nombre: "fechasolicitudunidademo",
          atributo: "Fecha de solicitud",
        },
        {
          campo: valorsededevolucionunidademo,
          nombre: "sededevolucionunidademo",
          atributo: "Ubicación de devolución",
        },
        {
          campo: valorfechadevolucionunidademo,
          nombre: "fechadevolucionunidademo",
          atributo: "Fecha de devolución",
        },
      ];

      for (let i = 0; i < campos.length; i++) {
        if (!campos[i].campo) {
          Toastify({
            text: "No obtuve " + campos[i].atributo,
            duration: 3000,
            gravity: "top",
            position: "right",
            stopOnFocus: true,
            style: {
              background:
                "linear-gradient(to right,rgb(255, 0, 0),rgb(255, 0, 0))",
            },
          }).showToast();
          return false;
        }
      }
      return true;
    }

    function consultar() {
      console.log("entro a consultar unidades disponibles");
      //meter en un formdata en este se puede meter informacion de todo tipo fyle, varchar etc etc
      const caja = new FormData();

      //metemos todo a la caja
      caja.append("sederecolecciondemo", valorsederecolecciondemo);
      caja.append("fechasolicitudunidademo", valorfechasolicitudunidademo);
      caja.append("sededevolucionunidademo", valorsededevolucionunidademo);
      caja.append("fechadevolucionunidademo", valorfechadevolucionunidademo);
      caja.append(
        "capacidad_carga",
        document.getElementById("capacidad_carga").value
      );
      caja.append(
        "capacidad_pasajeros",
        document.getElementById("capacidad_pasajeros").value
      );
      caja.append(
        "tipo_combustible",
        document.getElementById("tipo_combustible").value
      );
      caja.append("traccion", document.getElementById("traccion").value);
      caja.append(
        "tipo_carroceria",
        document.getElementById("tipo_carroceria").value
      );
      caja.append(
        "numero_puertas",
        document.getElementById("numero_puertas").value
      );
      caja.append(
        "numero_asientos",
        document.getElementById("numero_asientos").value
      );
      caja.append("tipo_caja", document.getElementById("tipo_caja").value);
      caja.append("tipo_frenos", document.getElementById("tipo_frenos").value);
      caja.append("suspension", document.getElementById("suspension").value);
      caja.append("numero_ejes", document.getElementById("numero_ejes").value);
      caja.append(
        "uso_permitido",
        document.getElementById("uso_permitido").value
      );
      caja.append(
        "camara_reversa",
        document.getElementById("camara_reversa").checked ? 1 : 0
      );
      caja.append(
        "sensores_reversa",
        document.getElementById("sensores_reversa").checked ? 1 : 0
      );

      console.log(caja);
      // 🔍 Nuevos filtros funcionales
      const camposFiltro = [
        "capacidad_carga",
        "capacidad_pasajeros",
        "tipo_combustible",
        "traccion",
        "tipo_carroceria",
        "numero_puertas",
        "numero_asientos",
        "tipo_caja",
        "tipo_frenos",
        "suspension",
        "numero_ejes",
        "uso_permitido",
        "camara_reversa",
        "sensores_reversa",
      ];

      camposFiltro.forEach((id) => {
        const el = document.getElementById(id);
        if (el) {
          if (el.type === "checkbox") {
            caja.append(id, el.checked ? "1" : "0");
          } else {
            caja.append(id, el.value);
          }
        }
      });

      $.ajax({
        type: "POST",
        data: caja,
        url: "../../Servidor/solicitudes/solicitud_unidades_demo/consultar_unidades_demo_disponibles.php",
        contentType: false,
        processData: false,
        success: function (response) {
          contenedorspinner.style.display = "none";
          document.getElementById(
            "contenedorunidadesdisponiblesdemo"
          ).innerHTML = response;
        },
      });

      document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnmostrarunidademofisicamoral")) {
          id_unidad = event.target.getAttribute("data-id");
          id_usuario_demo = event.target.getAttribute("data-id-usuario-demo");
          data_fecha_solicitudemo = event.target.getAttribute("data-fecha-solicitudemo");
          data_fecha_devoluciondemo = event.target.getAttribute("data-fecha-devoluciondemo");
          console.log(id_unidad);
          console.log(id_usuario_demo);
          console.log(data_fecha_solicitudemo);
          console.log(data_fecha_devoluciondemo);
          $.ajax({
            type: "POST",
            url: "../../Servidor/solicitudes/solicitud_unidades_demo/seleccionar_persona_fisica_moral.php",
            data: { id_unidad: id_unidad, 
                    id_usuario_demo: id_usuario_demo,
                    data_fecha_solicitudemo: data_fecha_solicitudemo,
                    data_fecha_devoluciondemo: data_fecha_devoluciondemo },
            success: function (response) {
              modalinfoformacionunidademobody.innerHTML = response;
              modalinfoformacionunidademo.show();
            },
          });
        }
      });

      //-------------------------aqui mostramos a las personas fisicas registradas por el usuario-------------------------------------------------

      document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnasignarpersonafisica")) {
          id_unidad = event.target.getAttribute("data-idunidad");
          id_usuario_demo = event.target.getAttribute("data-idusuario");
          data_fecha_solicitudemo = event.target.getAttribute("data-fecha_solicitud");
          data_fecha_devoluciondemo = event.target.getAttribute("data-fecha_devolucion");
          console.log(id_unidad);
          console.log(id_usuario_demo);
          console.log(data_fecha_solicitudemo);
          console.log(data_fecha_devoluciondemo);
          $.ajax({
            type: "POST",
            url: "../../Servidor/solicitudes/solicitud_unidades_demo/obtener_personas_fisicas_asignar_demo.php",
            data: { id_unidad: id_unidad, 
                    id_usuario_demo: id_usuario_demo,
                    data_fecha_solicitudemo: data_fecha_solicitudemo,
                    data_fecha_devoluciondemo: data_fecha_devoluciondemo },
            success: function (response) {
              console.log(response);
              tablasignacionunidadesdemos.innerHTML = response;
            },
          });
        } else if (event.target.classList.contains("btnasignarpersonamoral")) {
          id_unidad = event.target.getAttribute("data-idunidad");
          id_usuario_demo = event.target.getAttribute("data-idusuario");
          data_fecha_solicitudemo = event.target.getAttribute("data-fecha_solicitud");
          data_fecha_devoluciondemo = event.target.getAttribute("data-fecha_devolucion");
          console.log(id_unidad);
          console.log(id_usuario_demo);
          console.log(data_fecha_solicitudemo);
          console.log(data_fecha_devoluciondemo);
          $.ajax({
            type: "POST",
            url: "../../Servidor/solicitudes/solicitud_unidades_demo/obtener_personas_morales_asignar_demo.php",
            data: { id_unidad: id_unidad, 
                    id_usuario_demo: id_usuario_demo, 
                    data_fecha_solicitudemo: data_fecha_solicitudemo,
                    data_fecha_devoluciondemo: data_fecha_devoluciondemo },
            success: function (response) {
              console.log(response);
              tablasignacionunidadesdemos.innerHTML = response;
            },
          });
        }
      });

      document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnasignarunidademo")) {
          id_unidad = event.target.getAttribute("data-id_unidad");
          data_id_persona_fisica = event.target.getAttribute("data-id_persona_fisica");
          data_id_persona_moral = event.target.getAttribute("data-id_persona_moral");
          data_id_colaborador = event.target.getAttribute("data-id_colaborador");
          data_fecha_solicitudemo = event.target.getAttribute("data-fecha_solicitudemo");
          data_fecha_devoluciondemo = event.target.getAttribute("data-fecha_devoluciondemo");
          
          console.log("unidad: " + id_unidad);
          console.log("persona fisica: " + data_id_persona_fisica);
          console.log("persona moral: " + data_id_persona_moral);
          console.log("colaborador que asigna: " + data_id_colaborador);
          console.log("fecha solicitud: " + data_fecha_solicitudemo);
          console.log("fecha devolucion: " + data_fecha_devoluciondemo);
          $.ajax({
            type: "POST",
            url: "../../Servidor/solicitudes/solicitud_unidades_demo/formularioinfounidademo.php",
            data: {
              id_unidad: id_unidad,
              data_id_persona_fisica: data_id_persona_fisica,
              data_id_colaborador: data_id_colaborador,
              data_id_persona_moral: data_id_persona_moral,
              data_fecha_solicitudemo: data_fecha_solicitudemo,
              data_fecha_devoluciondemo: data_fecha_devoluciondemo
            },
            success: function (response) {
              modalverunidaddemoasignacionbody.innerHTML = response;
              modalverunidaddemoasignacion.show();

              // Agregamos el listener del botón después de cargar el contenido
              const btnSolicitar = document.getElementById(
                "btnsolicitaruniaddemo"
              );
              if (btnSolicitar) {
                //elimina el listener anterior para no realizar muchas inserciones en la bd y mandar muchos correos nuevoBoton
                const nuevoBoton = btnSolicitar.cloneNode(true);
                btnSolicitar.parentNode.replaceChild(nuevoBoton, btnSolicitar);

                nuevoBoton.addEventListener("click", function () {
                  // Obtener los valores de los campos
                  const id_unidad = document.getElementById("id_unidad");
                  const id_persona_fisica = document.getElementById("id_persona_fisica");
                  const id_persona_moral = document.getElementById("id_persona_moral");
                  const id_colaborador = document.getElementById("id_colaborador");
                  const fecha_solicitudemo = document.getElementById("fechasolicitudunidademo");
                  const fecha_devoluciondemo = document.getElementById("fechadevolucionunidademo");

                  if (
                    !id_unidad ||
                    !id_colaborador ||
                    !fecha_solicitudemo ||
                    !fecha_devoluciondemo
                  ) {
                    alert("Faltan campos requeridos en la solicitud.");
                    return;
                  }

                  // Validar que al menos una persona (física o moral) esté presente
                  const tienePersonaFisica =
                    id_persona_fisica && id_persona_fisica.value !== "";
                  const tienePersonaMoral =
                    id_persona_moral && id_persona_moral.value !== "";

                  if (!tienePersonaFisica && !tienePersonaMoral) {
                    alert("Debes asignar al menos una persona física o moral.");
                    return;
                  }

                  const caja1 = new FormData();
                  caja1.append("id_unidad", id_unidad.value);
                  caja1.append("id_colaborador", id_colaborador.value);
                  caja1.append("fechasolicitudunidademo",fechasolicitudunidademo.value);
                  caja1.append("fechadevolucionunidademo",fechadevolucionunidademo.value );

                  if (tienePersonaFisica) {
                    caja1.append("id_persona_fisica", id_persona_fisica.value);
                  }
                  if (tienePersonaMoral) {
                    caja1.append("id_persona_moral", id_persona_moral.value);
                  }
                  const requiereMasterDriver = document.getElementById("requiere_master_driverldr");
                  const comentarios_pruebas_demo = document.getElementById("comentarios_pruebas_demo");
                  const objetivo_prueba_demo = document.getElementById("objetivo_prueba_demo");

                  if (requiereMasterDriver && requiereMasterDriver.checked) {
                    caja1.append("requiere_master_driver", "1");
                  } else {
                    caja1.append("requiere_master_driver", "0");
                  }

                  caja1.append("objetivo_prueba_demo",objetivo_prueba_demo.value);
                  caja1.append("comentarios_pruebas_demo",comentarios_pruebas_demo.value);

                  contenedorspinner.style.display = "flex";

                  $.ajax({
                    type: "POST",
                    data: caja1,
                    url: "../../Servidor/solicitudes/solicitud_unidades_demo/insertar_solicitud_pedir_autorizacion_demo.php",
                    contentType: false,
                    processData: false,
                    success: function (response) {
                      contenedorspinner.style.display = "none";
                      console.log(response);
                      window.location.href ="./solicitar_unidades_demo.php?resultado=Solicitudunidaddemo";
                    },
                  });
                });
              } else {
                console.error("No se encontró el botón #btnsolicitaruniaddemo");
              }
            },
          });
        }
      });
    }
  });
});
