document.addEventListener("DOMContentLoaded", function () {
const btnguardarpolizaeditada = document.getElementById("btnguardarpolizaeditada");

let id_poliza;

document.body.addEventListener("click", function (event) {
  if (event.target.classList.contains("btneditarpolizas")) {
    id_poliza = event.target.getAttribute("data-id");
    console.log(id_poliza);
    // Implementar la lógica necesaria para la acción del botón aquí
  }
});

document.body.addEventListener("click", function (event) {
  if (event.target.classList.contains("btneditarpolizas")) {
    let id_poliza = event.target.getAttribute("data-id");
    console.log(id_poliza);
    // Implementar la lógica necesaria para la acción del botón aquí
  }
});


  let editartipopolizas;
  let identificadoreditarpoliza;
  let fecharegistroeditarpoliza;
  let fechavencimientoeditarpoliza;
  let editar_documento_poliza;

  //declaracion del spinner de carga
  const contenedorspinner = document.getElementById("contenedorspinner");


  let valoreditartipopolizas;
  let valoridentificadoreditarpoliza;
  let valorfecharegistroeditarpoliza;
  let valorfechavencimientoeditarpoliza;
  let valoreditar_documento_poliza;
  //obtenemos modal
  const modalEditarPolizasUnidades = new bootstrap.Modal(document.getElementById("modaleditarpolizasUnidades"));

  btnguardarpolizaeditada.addEventListener("click", function () {
    editartipopolizas = document.getElementById("editartipopolizas");
    identificadoreditarpoliza = document.getElementById(
      "identificadoreditarpoliza"
    );
    fecharegistroeditarpoliza = document.getElementById(
      "fecharegistroeditarpoliza"
    );
    fechavencimientoeditarpoliza = document.getElementById(
      "fechavencimientoeditarpoliza"
    );
    editar_documento_poliza = document.getElementById(
      "editar_documento_poliza"
    );

    console.log("preciona el boton");
    contenedorspinner.style.display = "flex";

    obtenervalores();
    validarllenado();
    insertardatos();
  });

  function obtenervalores() {
    valoreditartipopolizas = editartipopolizas.value;
    valoridentificadoreditarpoliza = identificadoreditarpoliza.value;
    valorfecharegistroeditarpoliza = fecharegistroeditarpoliza.value;
    valorfechavencimientoeditarpoliza = fechavencimientoeditarpoliza.value;
    valoreditar_documento_poliza = editar_documento_poliza.files[0]; //obtenemos el archivo

    console.log(valoreditartipopolizas);
    console.log(valoridentificadoreditarpoliza);
    console.log(valorfecharegistroeditarpoliza);
    console.log(valorfechavencimientoeditarpoliza);
    console.log(valoreditar_documento_poliza);
  }

  //validar que los campos esten llenos con toastyfy
  function validarllenado() {
    const campos = [
      { campo: valoreditartipopolizas, nombre: "editartipopolizas" },
      {
        campo: valoridentificadoreditarpoliza,
        nombre: "identificadoreditarpoliza",
      },
      {
        campo: valorfecharegistroeditarpoliza,
        nombre: "fecharegistroeditarpoliza",
      },
      {
        campo: valorfechavencimientoeditarpoliza,
        nombre: "fechavencimientoeditarpoliza",
      },
      {
        campo: valoreditar_documento_poliza,
        nombre: "editar_documento_poliza",
      },
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
            background:
              "linear-gradient(to right,rgb(0, 183, 255),rgb(0, 183, 255))",
          },
        }).showToast();
        contenedorspinner.style.display = "none"; // Mueve esto antes del return
        return false;
      }
    }
    return true;
  }

  function insertardatos() {
    const formData = new FormData();
    formData.append("id_poliza", id_poliza);
    formData.append("editartipopolizas", valoreditartipopolizas);
    formData.append(
      "identificadoreditarpoliza",
      valoridentificadoreditarpoliza
    );
    formData.append(
      "fecharegistroeditarpoliza",
      valorfecharegistroeditarpoliza
    );
    formData.append(
      "fechavencimientoeditarpoliza",
      valorfechavencimientoeditarpoliza
    );
    formData.append("editar_documento_poliza", valoreditar_documento_poliza);

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/polizas/insertar_polizas_editadas.php", //url para insertar las polizas
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
          window.location.href = "./unidades.php?resultado=Polizactualizada"; //resultado nombre del parametro -> resultado del contenido
          modalEditarPolizasUnidades.hide();
        }
        if (response.includes("Duplicate")) {
          Toastify({
            text: "Poliza ya registrada",
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
        
        else if (response.includes("Error")) {
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
