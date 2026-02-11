document.addEventListener("DOMContentLoaded", function () {
    //----------------------------------------------------------esto hace que todas las entradas de texto sean mayusculas
  document.addEventListener("input", function (e) {
  const target = e.target;
  if (target.tagName === "INPUT" && target.type === "text") {
    target.value = target.value.toUpperCase();
  }
});



  const modalEditarUnidadesdemo = new bootstrap.Modal(document.getElementById("modalEditarUnidadesdemo"));
  const modalEditarUnidadesBody = document.getElementById("modalEditarUnidadesBody");

  let id_unidad_seleccionado = 0;

  document.body.addEventListener("click", function (e) {
  if (e.target && e.target.id === "btnactualizarunidad") {
    e.preventDefault();
    actualizarUnidad();
  }
});

function v(id) {
  const el = document.getElementById(id);
  if (!el) {
    console.warn("No existe:", id);
    return "";
  }
  return el.type === "checkbox" ? el.checked : el.value;
}

function f(id) {
  const el = document.getElementById(id);
  if (!el) {
    console.warn("No existe:", id);
    return null;
  }
  return el.files ? el.files[0] : null;
}

function actualizarUnidad() {

  marcaeditarunidad = document.getElementById("marcaeditarunidad");
  modeloeditarunidad = document.getElementById("modeloeditarunidad");
  editarVIN = document.getElementById("editarVIN");
  editarPlaca = document.getElementById("editarPlaca");
  editarNumeroMotor = document.getElementById("editarNumeroMotor");
  editarColor = document.getElementById("editarColor");
  editarTarjetaCirculacion = document.getElementById("editarTarjetaCirculacion");
  editarañounidad = document.getElementById("editarañounidad");
  editarEstadoUnidad = document.getElementById("editarEstadoUnidad");
  editarEstatusUnidad = document.getElementById("editarEstatusUnidad");
  editarTipoUnidad = document.getElementById("editarTipoUnidad");
  editsedeunidad = document.getElementById("editsedeunidad");
  editarfechaadquisicionunidad = document.getElementById("editarfechaadquisicionunidad");
  editartipoadquisicionunidad = document.getElementById("editartipoadquisicionunidad");
  editartipoarrendadoraunidad = document.getElementById("editartipoarrendadoraunidad");
  editarfoliofacturaunidad = document.getElementById("editarfoliofacturaunidad");
  imagen_unidad = document.getElementById("imagen_unidad");

  editarCarga = document.getElementById("editarCarga");
  editarPasajeros = document.getElementById("editarPasajeros");
  editarCombustible = document.getElementById("editarCombustible");
  editarTraccion = document.getElementById("editarTraccion");
  editarCarroceria = document.getElementById("editarCarroceria");
  editarPuertas = document.getElementById("editarPuertas");
  editarAsientos = document.getElementById("editarAsientos");
  editarCaja = document.getElementById("editarCaja");
  editarFreno = document.getElementById("editarFreno");
  editarSuspencion = document.getElementById("editarSuspencion");
  editarEjes = document.getElementById("editarEjes");
  editarUso = document.getElementById("editarUso");

  contenedorspinner.style.display = "flex";

  obtenervalores();

  if (validarllenado()) {
    insertardatos();
  } else {
    contenedorspinner.style.display = "none";
  }
}


  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btneditarunidadesdemo")) {
      id_unidad_seleccionado = event.target.getAttribute("data-id");
      console.log(id_unidad_seleccionado);
      
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/unidades/formularioeditarunidadesdemo.php",
        data: { idunidad: id_unidad_seleccionado },
        success: function (response) {
          console.log(response);
          modalEditarUnidadesBody.innerHTML = response;
          modalEditarUnidadesdemo.show();
        }
      });
    }
  });
  
//realizamos la actualizacion

  let marcaeditarunidad, modeloeditarunidad, editarVIN, editarPlaca, editarNumeroMotor, editarColor, editarTarjetaCirculacion;
  let editarañounidad, editarEstadoUnidad, editarEstatusUnidad, editarTipoUnidad, editsedeunidad, editarfechaadquisicionunidad;
  let editartipoadquisicionunidad, editartipoarrendadoraunidad, editarfoliofacturaunidad, imagen_unidad;
  let editarCarga, editarPasajeros, editarCombustible, editarTraccion, editarCarroceria;
  let editarPuertas, editarAsientos, editarCaja, editarFreno, editarSuspencion, editarEjes, editarUso;

  const contenedorspinner = document.getElementById("contenedorspinner");

  let valormarcaeditarunidad, valormodeloeditarunidad, valorVINeditar, valorPlacaeditar, valorNumeroMotoreditar;
  let valoreditarColor, valorTarjetaCirculacioneditar, valoreditarañounidad, valorEstadoUnidadeditar, valorEstatusUnidadeditar;
  let valorTipoUnidadeditar, valorsedeunidadeditar, valorfechaadquisicionunidadeditar, valortipoadquisicionunidadeditar;
  let valoreditartipoarrendadoraunidad, valoreditarfoliofacturaunidad, valorimagen_unidad;

  let valoreditarCarga, valoreditarPasajeros, valoreditarCombustible, valoreditarTraccion, valoreditarCarroceria;
  let valoreditarPuertas, valoreditarAsientos, valoreditarCaja, valoreditarFreno, valoreditarSuspencion, valoreditarEjes;
  let valoreditarUso;


function obtenervalores() {
  valormarcaeditarunidad = v("marcaeditarunidad");
  valormodeloeditarunidad = v("modeloeditarunidad");
  valorVINeditar = v("editarVIN");
  valorPlacaeditar = v("editarPlaca");
  valorNumeroMotoreditar = v("editarNumeroMotor");
  valoreditarColor = v("editarColor");
  valorTarjetaCirculacioneditar = v("editarTarjetaCirculacion");
  valoreditarañounidad = v("editarañounidad");
  valorEstadoUnidadeditar = v("editarEstadoUnidad");
  valorEstatusUnidadeditar = v("editarEstatusUnidad");
  valorTipoUnidadeditar = v("editarTipoUnidad");
  valorsedeunidadeditar = v("editsedeunidad");
  valorfechaadquisicionunidadeditar = v("editarfechaadquisicionunidad");
  valortipoadquisicionunidadeditar = v("editartipoadquisicionunidad");
  valoreditartipoarrendadoraunidad = v("editartipoarrendadoraunidad");
  valoreditarfoliofacturaunidad = v("editarfoliofacturaunidad");
  valorimagen_unidad = f("imagen_unidad");

  valoreditarCarga = v("editarCarga");
  valoreditarPasajeros = v("editarPasajeros");
  valoreditarCombustible = v("editarCombustible");
  valoreditarTraccion = v("editarTraccion");
  valoreditarCarroceria = v("editarCarroceria");
  valoreditarPuertas = v("editarPuertas");
  valoreditarAsientos = v("editarAsientos");
  valoreditarCaja = v("editarCaja");
  valoreditarFreno = v("editarFreno");
  valoreditarSuspencion = v("editarSuspencion");
  valoreditarEjes = v("editarEjes");
  valoreditarUso = v("editarUso");
}


  function validarllenado() {
    const campos = [
    ];

    for (let i = 0; i < campos.length; i++) {
      if (!campos[i].campo) {
        Toastify({
          text: "No obtuve " + campos[i].nombre,
          duration: 3000,
          gravity: "top",
          position: "right",
          stopOnFocus: true,
          style: {
            background: "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
          },
        }).showToast();
        return false;
      }
    }
    return true;
  }

  function insertardatos() {
    const formData = new FormData();
    formData.append("id_unidad", id_unidad_seleccionado);
    formData.append("marcaeditarunidad", valormarcaeditarunidad);
    formData.append("modeloeditarunidad", valormodeloeditarunidad);
    formData.append("editarVIN", valorVINeditar);
    formData.append("editarPlaca", valorPlacaeditar);
    formData.append("editarNumeroMotor", valorNumeroMotoreditar);
    formData.append("editarColor", valoreditarColor);
    formData.append("editarTarjetaCirculacion", valorTarjetaCirculacioneditar);
    formData.append("editarañounidad", valoreditarañounidad);
    formData.append("editarEstadoUnidad", valorEstadoUnidadeditar);
    formData.append("editarEstatusUnidad", valorEstatusUnidadeditar);
    formData.append("editarTipoUnidad", valorTipoUnidadeditar);
    formData.append("editsedeunidad", valorsedeunidadeditar);
    formData.append("editarfechaadquisicionunidad", valorfechaadquisicionunidadeditar);
    formData.append("editartipoadquisicionunidad", valortipoadquisicionunidadeditar);
    formData.append("editartipoarrendadoraunidad", valoreditartipoarrendadoraunidad);
    formData.append("editarfoliofacturaunidad", valoreditarfoliofacturaunidad);
    formData.append("imagen_unidad", valorimagen_unidad);

    formData.append("editarCarga", valoreditarCarga);
    formData.append("editarPasajeros", valoreditarPasajeros);
    formData.append("editarCombustible", valoreditarCombustible);
    formData.append("editarTraccion", valoreditarTraccion);
    formData.append("editarCarroceria", valoreditarCarroceria);
    formData.append("editarPuertas", valoreditarPuertas);
    formData.append("editarAsientos", valoreditarAsientos);
    formData.append("editarCaja", valoreditarCaja);
    formData.append("editarFreno", valoreditarFreno);
    formData.append("editarSuspencion", valoreditarSuspencion);
    formData.append("editarEjes", valoreditarEjes);
    formData.append("editarUso", valoreditarUso);

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/unidades/actualizar_unidades_demo.php",
      data: formData,
      processData: false,
      contentType: false,
      success: function (response) {
        console.log("entro a success");
        console.log(response);
        contenedorspinner.style.display = "none";

        if (response.includes("correctamente")) {
          Toastify({
            text: "Correctamente",
            duration: 3000,
            gravity: "top",
            position: "right",
            stopOnFocus: true,
            style: {
              background: "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
            },
          }).showToast();

          window.location.href = "./unidades_demo.php?resultado=Unidadactualizada";
          modalEditarUnidadesdemo.hide();
        } else if (response.includes("Duplicate")) {
          Toastify({
            text: "Unidad ya registrada",
            duration: 3000,
            gravity: "top",
            position: "right",
            stopOnFocus: true,
            style: {
              background: "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
            },
          }).showToast();
        } else if (response.includes("Error")) {
          Toastify({
            text: "Error al editar la poliza",
            duration: 3000,
            gravity: "top",
            position: "right",
            stopOnFocus: true,
            style: {
              background: "linear-gradient(to right,rgb(255, 0, 0),rgb(255, 0, 0))",
            },
          }).showToast();
        }
      },
    });
  }
});
