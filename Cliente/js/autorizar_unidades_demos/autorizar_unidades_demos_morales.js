document.addEventListener("DOMContentLoaded", function () {
  const modalinfounidademomoral = new bootstrap.Modal(document.getElementById("modalinfounidademomoral"));
  const modalinfounidademomoralbody = document.getElementById("modalinfounidademomoralbody");
  const contenedorspinner = document.getElementById("contenedorspinner");
  const modaldescripcionnegacioncomodatofirmado = new bootstrap.Modal(document.getElementById("modaldescripcionnegacioncomodatofirmado"));
  const modaldescripcionnegacioncomodatofirmadobody = document.getElementById("modaldescripcionnegacioncomodatofirmadobody");

  let id_unidad = 0;
  let id_asignacion_demo = 0;
  let id_persona_moral = 0;

  // Mostrar modal de información de unidad
  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnmosrarmodalunidadmoral")) {
      id_unidad = event.target.getAttribute("data-idunidad");
      id_asignacion_demo = event.target.getAttribute("data-id_asignacion_demo");
      id_persona_moral = event.target.getAttribute("data-id_persona_moral");
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/solicitud_unidades_demo/formularioverunidadautorizacionmoral.php",
        data: { idunidad: id_unidad,
                idasignaciondemo: id_asignacion_demo,
                idpersonamoral: id_persona_moral
         },
        success: function (response) {
          modalinfounidademomoralbody.innerHTML = response;
          modalinfounidademomoral.show();
        },
      });
    }
  });

  // Autorizar unidad
  document.body.addEventListener("click", function (event) {
    if (event.target && event.target.id === "btnaprovarunidademomoral") {
      const formData = new FormData();
      formData.append("id_unidad", id_unidad);
      formData.append("id_asignacion_demo", id_asignacion_demo);
      formData.append("id_persona_moral", id_persona_moral);

      contenedorspinner.style.display = "flex";

      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/solicitud_unidades_demo/autorizar_unidad_demo_persona_moral.php",
        data: formData,
        contentType: false,
        processData: false,
        success: function (response) {
          console.log(response);
          contenedorspinner.style.display = "none";
          if (response.includes("correctamente")) {
            window.location.href = "./autorizaciones_demos_personas_morales.php?resultado=Autorizacionunidademo";
          } else {
            Toastify({
              text: "Hubo un error al realizar la autorización.",
              duration: 3000,
              gravity: "top",
              position: "right",
              style: { background: "linear-gradient(to right, #ff5f6d, #ffc371)" },
            }).showToast();
          }
        },
      });
    }
  });

  // Mostrar modal de negación
  document.body.addEventListener("click", function (event) {
    if (event.target && event.target.id === "btndenegarcomodatofirmado") {
      const btn = event.target;
      btn.disabled = true;
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/solicitud_unidades_ver_comodato/descripciondenegacioncomodatofirmado.php",
        data: { idasignacion: asignacion,
                idcolaborador: colaborador,
                idusuarioexterno: usuarioexterno
         },
        success: function (response) {
          modaldescripcionnegacioncomodatofirmadobody.innerHTML = response;
          modaldescripcionnegacioncomodatofirmado.show();
          btn.disabled = false;
        },
      });
    }
  });

  // Denegar comodato (delegación porque se carga dinámicamente)
  document.body.addEventListener("click", function (event) {
    if (event.target && event.target.id === "btndenegarcartaresponsivafirmadadenegar") {
      const descripcion = document.getElementById("descripciondenegacioncomodato").value;


      if (descripcion.trim() === "") {
        Toastify({
          text: "El campo de descripción no debe estar vacío.",
          duration: 3000,
          gravity: "top",
          position: "right",
          style: { background: "linear-gradient(to right, #00b09b, #96c93d)" },
        }).showToast();
        return;
      }

      const formData = new FormData();
      formData.append("idasignacion", asignacion);
      formData.append("idcolaborador", colaborador);
      formData.append("idusuarioexterno", usuarioexterno);
      formData.append("descripciondenegacioncomodato", descripcion);
      console.log(descripcion);
      console.log(asignacion);
      console.log(colaborador);
      console.log(usuarioexterno);

      contenedorspinner.style.display = "flex";
      if(colaborador){
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/solicitud_unidades_ver_comodato/denegarcomodatofirmado.php",
        data: formData,
        contentType: false,
        processData: false,
        success: function (response) {
          console.log("Éxito:", response);
          contenedorspinner.style.display = "none";
          window.location.href = "./validacion_unidades_comodato.php?resultado=Comodatodenegado";
        },
      });
    }else if (usuarioexterno) {
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/solicitud_unidades_ver_comodato/denegarcomodatofirmadoexterno.php",
        data: formData,
        contentType: false,
        processData: false,
        success: function (response) {
          console.log("Éxito:", response);
          contenedorspinner.style.display = "none";
          window.location.href = "./validacion_unidades_comodato.php?resultado=Comodatodenegado";
        },
      });
    }
    }
  });

  // Notificar usuario (una vez)
  const btnnotificarusuario = document.getElementById("btnnotificarusuario");
  if (btnnotificarusuario) {
    btnnotificarusuario.addEventListener("click", function () {
      btnnotificarusuario.disabled = true;
      contenedorspinner.style.display = "flex";

      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/solicitud_unidades_ver_comodato/notificarusuario.php",
        data: { idasignacion: asignacion },
        success: function (response) {
          console.log("Éxito:", response);
          contenedorspinner.style.display = "none";
          window.location.href = "./validacion_unidades_comodato.php?resultado=Notificaciónenviada";
        },
      });
    });
  }
});

//aqui usams este codigo para realizar el cambio de interfaz cards a tabla 
function toggleVista() {
    const button = document.getElementById("botonCambiarVista");
    const cards = document.getElementById("vistaCards");
    const tabla = document.getElementById("vistaTabla");
    const boton = event.target;

    if (cards.style.display === "none") {
        cards.style.display = "flex";
        tabla.style.display = "none";
        boton.textContent = "Cambiar a vista de tabla";
    } else {
        cards.style.display = "none";
        tabla.style.display = "block";
        boton.textContent = "Cambiar a vista de cards";
    }
}