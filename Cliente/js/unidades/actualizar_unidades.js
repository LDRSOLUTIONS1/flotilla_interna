document.addEventListener("DOMContentLoaded", function () {
    let id_unidad_seleccionado;
  const btnactualizarunidad = document.getElementById("btnactualizarunidad");

  id_unidad_seleccionado = 0;
  
  document.body.addEventListener("click", function (event) {
      if (event.target.classList.contains("btneditarunidades")) {
        id_unidad_seleccionado = event.target.getAttribute("data-id");
          console.log(id_unidad_seleccionado);
          // Implementar la lógica necesaria para la acción del botón aqui
        }
    });
    
  let marcaeditarunidad;
  let modeloeditarunidad;
  let editarVIN;
  let editarPlaca;
  let editarKilometraje;
  let editarColor;
  let editarTarjetaCirculacion;
  let editarEstadoUnidad;
  let editarEstatusUnidad;
  let editarTipoUnidad;
  let editsedeunidad;
  let editarfechaadquisicionunidad;
  let editartipoadquisicionunidad;
  let editardetalleadquisicion;
  let imagen_unidad;

  //declaracion del spinner de carga
  const contenedorspinner = document.getElementById("contenedorspinner");

  let valormarcaeditarunidad;
  let valormodeloeditarunidad;
  let valorVINeditar;
  let valorPlacaeditar;
  let valorKilometrajeeditar;
  let valoreditarColor;
  let valorTarjetaCirculacioneditar;
  let valorEstadoUnidadeditar;
  let valorEstatusUnidadeditar;
  let valorTipoUnidadeditar;
  let valorsedeunidadeditar;
  let valorfechaadquisicionunidadeditar;
  let valortipoadquisicionunidadeditar;
  let valordetalleadquisicioneditar;
  let valorimagen_unidad;

  //obtenemos modal
  const modalEditarUnidades = new bootstrap.Modal(
    document.getElementById("modalEditarUnidades")
  );

  btnactualizarunidad.addEventListener("click", function () {
    marcaeditarunidad = document.getElementById("marcaeditarunidad");
    modeloeditarunidad = document.getElementById("modeloeditarunidad");
    editarVIN = document.getElementById("editarVIN");
    editarPlaca = document.getElementById("editarPlaca");
    editarKilometraje = document.getElementById("editarKilometraje");
    editarColor = document.getElementById("editarColor");
    editarTarjetaCirculacion = document.getElementById(
      "editarTarjetaCirculacion"
    );
    editarEstadoUnidad = document.getElementById("editarEstadoUnidad");
    editarEstatusUnidad = document.getElementById("editarEstatusUnidad");
    editarTipoUnidad = document.getElementById("editarTipoUnidad");
    editsedeunidad = document.getElementById("editsedeunidad");
    editarfechaadquisicionunidad = document.getElementById(
      "editarfechaadquisicionunidad"
    );
    editartipoadquisicionunidad = document.getElementById(
      "editartipoadquisicionunidad"
    );
    editardetalleadquisicion = document.getElementById(
      "editardetalleadquisicion"
    );
    imagen_unidad = document.getElementById("imagen_unidad");

    console.log("preciona el boton");
    contenedorspinner.style.display = "flex";
    obtenervalores();
    console.log("entro a " + valormarcaeditarunidad);
    validarllenado();
    insertardatos();
  });

  function obtenervalores() {
    valormarcaeditarunidad = marcaeditarunidad.value;
    valormodeloeditarunidad = modeloeditarunidad.value;
    valorVINeditar = editarVIN.value;
    valorPlacaeditar = editarPlaca.value;
    valorKilometrajeeditar = editarKilometraje.value;
    valoreditarColor = editarColor.value;
    valorTarjetaCirculacioneditar = editarTarjetaCirculacion.value;
    valorEstadoUnidadeditar = editarEstadoUnidad.value;
    valorEstatusUnidadeditar = editarEstatusUnidad.value;
    valorTipoUnidadeditar = editarTipoUnidad.value;
    valorsedeunidadeditar = editsedeunidad.value;
    valorfechaadquisicionunidadeditar = editarfechaadquisicionunidad.value;
    valortipoadquisicionunidadeditar = editartipoadquisicionunidad.value;
    valordetalleadquisicioneditar = editardetalleadquisicion.value;
    valorimagen_unidad = imagen_unidad.files[0]; //obtenemos el archivo

    console.log(valormarcaeditarunidad);
    console.log(valormodeloeditarunidad);
    console.log(valorVINeditar);
    console.log(valorPlacaeditar);
    console.log(valorKilometrajeeditar);
    console.log(valoreditarColor);
    console.log(valorTarjetaCirculacioneditar);
    console.log(valorEstadoUnidadeditar);
    console.log(valorEstatusUnidadeditar);
    console.log(valorTipoUnidadeditar);
    console.log(valorsedeunidadeditar);
    console.log(valorfechaadquisicionunidadeditar);
    console.log(valortipoadquisicionunidadeditar);
    console.log(valordetalleadquisicioneditar);
    console.log(valorimagen_unidad);
    }

  //validar que los campos esten llenos con toastyfy
  function validarllenado() {
    const campos = [
    { campo: valormarcaeditarunidad, nombre: "marcaeditarunidad" },
    { campo: valormodeloeditarunidad, nombre: "modeloeditarunidad" },
    { campo: valorVINeditar, nombre: "editarVIN" },
    { campo: valorPlacaeditar, nombre: "editarPlaca" },
    { campo: valorKilometrajeeditar, nombre: "editarKilometraje" },
    { campo: valoreditarColor, nombre: "editarColor" },
    {
        campo: valorTarjetaCirculacioneditar,
        nombre: "editarTarjetaCirculacion",
    },
    { campo: valorEstadoUnidadeditar, nombre: "editarEstadoUnidad" },
    { campo: valorEstatusUnidadeditar, nombre: "editarEstatusUnidad" },
    { campo: valorTipoUnidadeditar, nombre: "editarTipoUnidad" },
    { campo: valorsedeunidadeditar, nombre: "editsedeunidad" },
    {
        campo: valorfechaadquisicionunidadeditar,
        nombre: "editarfechaadquisicionunidad",
    },
    {
        campo: valortipoadquisicionunidadeditar,
        nombre: "editartipoadquisicionunidad",
    },
    {
        campo: valordetalleadquisicioneditar,
        nombre: "editardetalleadquisicion",
    },
    ];

    for (let i = 0; i < campos.length; i++) {
      if (!campos[i].campo) {
        Toastify({
          text: "No obtuve " + campos[i].nombre,
          duration: 3000,
          gravity: "top", // `top` or `bottom`
          position: "right", // `left`, `center` or `right`
          stopOnFocus: true, // Prevents dismissing of toast on hover
          style: {
            background:
              "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
          },
        }).showToast();
        contenedorspinner.style.display = "none";
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
    formData.append("editarKilometraje", valorKilometrajeeditar);
    formData.append("editarColor", valoreditarColor);
    formData.append("editarTarjetaCirculacion", valorTarjetaCirculacioneditar);
    formData.append("editarEstadoUnidad", valorEstadoUnidadeditar);
    formData.append("editarEstatusUnidad", valorEstatusUnidadeditar);
    formData.append("editarTipoUnidad", valorTipoUnidadeditar);
    formData.append("editsedeunidad", valorsedeunidadeditar);
    formData.append(
      "editarfechaadquisicionunidad",
      valorfechaadquisicionunidadeditar
    );
    formData.append(
      "editartipoadquisicionunidad",
      valortipoadquisicionunidadeditar
    );
    formData.append("editardetalleadquisicion", valordetalleadquisicioneditar);
    formData.append("imagen_unidad", valorimagen_unidad);

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/unidades/actualizar_unidades.php",
      data: formData,
      processData: false, //permite mandar imagenes
      contentType: false, //permite mandar imagenes
      success: function (response) {
        console.log("entro a success");
        console.log(response);
        if (response.includes("correctamente")) {
          Toastify({
            text: "Correctamente",
            duration: 3000,
            gravity: "top", // `top` or `bottom`
            position: "right", // `left`, `center` or `right`
            stopOnFocus: true, // Prevents dismissing of toast on hover
            style: {
              background:
                "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
            },
          }).showToast();

          contenedorspinner.style.display = "none";
          window.location.href = "./unidades.php?resultado=Unidadactualizada"; //resultado nombre del parametro -> resultado del contenido
          modalEditarUnidades.hide();
        }
        if (response.includes("Duplicate")) {
          Toastify({
            text: "Unidad ya registrada",
            duration: 3000,
            gravity: "top", // `top` or `bottom`
            position: "right", // `left`, `center` or `right`
            stopOnFocus: true, // Prevents dismissing of toast on hover
            style: {
              background:
                "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
            },
          }).showToast();

          contenedorspinner.style.display = "none";
        }else if (response.includes("Error")) {
            Toastify({
              text: "Error al editar la poliza",
              duration: 3000,
              gravity: "top", // `top` or `bottom`
              position: "right", // `left`, `center` or `right`
              stopOnFocus: true, // Prevents dismissing of toast on hover
              style: {
                background:
                  "linear-gradient(to right,rgb(255, 0, 0),rgb(255, 0, 0))",
              },
            }).showToast();
            contenedorspinner.style.display = "none"; // Mueve esto antes del return
          }
      },
    });
  }
});
