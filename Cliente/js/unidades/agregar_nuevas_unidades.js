document.addEventListener("DOMContentLoaded", function () {
  const btnregistrarunidad = document.getElementById("btnregistrarunidad");

  const marcaunidad = document.getElementById("marcaunidad");
  const modelounidad = document.getElementById("modelounidad");
  const VIN = document.getElementById("VIN");
  const placaunidad = document.getElementById("placaunidad");
  const kilometrajeunidad = document.getElementById("kilometrajeunidad");
  const colorunidad = document.getElementById("colorunidad");
  const tarjetacirculacionunidad = document.getElementById(
    "tarjetacirculacionunidad"
  );
  const estadounidad = document.getElementById("estadounidad");
  const estatusunidad = document.getElementById("estatusunidad");
  const tipounidad = document.getElementById("tipounidad");
  const sedeunidad = document.getElementById("sedeunidad");
  const tipoadquisicionunidad = document.getElementById(
    "tipoadquisicionunidad"
  );
  const detalleadquisicion = document.getElementById("detalleadquisicion");
  const fechaadquisicionunidad = document.getElementById(
    "fechaadquisicionunidad"
  );
  const imagen_unidad = document.getElementById("imagen_unidad");

  //declaracion del spinner de carga
  const contenedorspinner = document.getElementById("contenedorspinner");

  let valormarcaunidad;
  let valormodelounidad;
  let valorVIN;
  let valorplacaunidad;
  let valorkilometrajeunidad;
  let valorcolorunidad;
  let valortarjetacirculacionunidad;
  let valorestadounidad;
  let valorestatusunidad;
  let valortipounidad;
  let valoresedeunidad;
  let valortipoadquisicionunidad;
  let valordetalleadquisicion;
  let valorfechaadquisicionunidad;
  let valorimagenunidad;

  btnregistrarunidad.addEventListener("click", function () {
    contenedorspinner.style.display = "flex";

    obtenervalores();
    validarllenado();
    insertardatos();
  });


function obtenervalores() {
  //obtenemos todos los valores de los inputs
  valormarcaunidad = marcaunidad.value;
  valormodelounidad = modelounidad.value;
  valorVIN = VIN.value;
  valorplacaunidad = placaunidad.value;
  valorkilometrajeunidad = kilometrajeunidad.value;
  valorcolorunidad = colorunidad.value;
  valortarjetacirculacionunidad = tarjetacirculacionunidad.value;
  valorestadounidad = estadounidad.value;
  valorestatusunidad = estatusunidad.value;
  if (tipounidad) {
    valortipounidad = tipounidad.value;
  }
  valorsedeunidad = sedeunidad.value;
  valortipoadquisicionunidad = tipoadquisicionunidad.value;
  valordetalleadquisicion = detalleadquisicion.value;
  valorfechaadquisicionunidad = fechaadquisicionunidad.value;
  valorimagen_unidad = imagen_unidad.value;

  console.log(valormarcaunidad);
  console.log(valormodelounidad);
  console.log(valorVIN);
  console.log(valorplacaunidad);
  console.log(valorkilometrajeunidad);
  console.log(valorcolorunidad);
  console.log(valortarjetacirculacionunidad);
  console.log(valorestadounidad);
  console.log(valorestatusunidad);
  if (tipounidad) {
    console.log(valortipounidad);
  }
  console.log(valorsedeunidad);
  console.log(valortipoadquisicionunidad);
  console.log(valordetalleadquisicion);
  console.log(valorfechaadquisicionunidad);
  console.log(valorimagen_unidad);
}

//validar que todos los campos esten llenos con toastify
function validarllenado() {
  const campos = [
    {
      campo: valormarcaunidad,
      nombre: "marcaunidad",
    },
    {
      campo: valormodelounidad,
      nombre: "modelounidad",
    },
    {
      campo: valorVIN,
      nombre: "VIN",
    },
    {
      campo: valorplacaunidad,
      nombre: "placaunidad",
    },
    {
      campo: valorkilometrajeunidad,
      nombre: "kilometrajeunidad",
    },
    {
      campo: valorcolorunidad,
      nombre: "colorunidad",
    },
    {
      campo: valortarjetacirculacionunidad,
      nombre: "tarjetacirculacionunidad",
    },
    {
      campo: valorestadounidad,
      nombre: "estadounidad",
    },
    {
      campo: valorestatusunidad,
      nombre: "estatusunidad",
    },
    ...(typeof valortipounidad !== "undefined"
      ? [
          {
            campo: valortipounidad,
            nombre: "tipounidad",
          },
        ]
      : []),
    {
      campo: valorsedeunidad,
      nombre: "sedeunidad",
    },
    {
      campo: valortipoadquisicionunidad,
      nombre: "tipoadquisicionunidad",
    },
    {
      campo: valorfechaadquisicionunidad,
      nombre: "fechaadquisicionunidad",
    },
    {
      campo: valorimagen_unidad,
      nombre: "imagen_unidad",
    },
  ];

  for (let i = 0; i < campos.length; i++) {
    if (campos[i].campo == "") {
      Toastify({
        text: "No obtuve " + campos[i].nombre,
        duration: 3000,
        gravity: "top", // `top` or `bottom`
        position: "right", // `left`, `center` or `right`
        stopOnFocus: true, // Prevents dismissing of toast on hover
        style: {
          background:
            "linear-gradient(to right,rgb(0, 183, 255),rgb(0, 183, 255))",
        },
      }).showToast();
    }
  }

  return true;
}

function insertardatos() {
  if (validarllenado()) {
    console.log("entro a insertardatos");
    //meter en un formdata en este se puede meter informacion de todo tipo fyle, varchar etc etc
    const caja = new FormData();

    //metemos todo a la caja
    caja.append("marcaunidad", valormarcaunidad);
    caja.append("modelounidad", valormodelounidad);
    caja.append("VIN", valorVIN);
    caja.append("placaunidad", valorplacaunidad);
    caja.append("kilometrajeunidad", valorkilometrajeunidad);
    caja.append("colorunidad", valorcolorunidad);
    caja.append("tarjetacirculacionunidad", valortarjetacirculacionunidad);
    caja.append("estadounidad", valorestadounidad);
    caja.append("estatusunidad", valorestatusunidad);
    caja.append("tipounidad", valortipounidad);
    caja.append("sedeunidad", valorsedeunidad);
    caja.append("tipoadquisicionunidad", valortipoadquisicionunidad);
    caja.append("detalleadquisicion", valordetalleadquisicion);
    caja.append("fechaadquisicionunidad", valorfechaadquisicionunidad);
    caja.append("imagen_unidad", imagen_unidad.files[0]);

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/unidades/insertar_unidades.php",
      data: caja,
      processData: false, //permite mandar imagenes
      contentType: false, //permite mandar imagenes
      success: function (response) {
        console.log("entro a success");
        console.log(response);
        if (response.includes("correctamente")) {
        
          contenedorspinner.style.display = "none";
          window.location.href ="./agrega_nuevas_unidades.php?resultado=Unidadinsertada"; //resultado nombre del parametro -> resultado del contenido
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
                "linear-gradient(to right,rgb(255, 0, 0),rgb(255, 0, 0))",
            },
          }).showToast();

          contenedorspinner.style.display = "none";
        } else if (response == "Error al insertar la unidad") {
          Toastify({
            text: "Error al insertar la poliza",
            duration: 3000,
            gravity: "top", // `top` or `bottom`
            position: "right", // `left`, `center` or `right`
            stopOnFocus: true, // Prevents dismissing of toast on hover
            style: {
              background:
                "linear-gradient(to right,rgb(255, 0, 0),rgb(231, 0, 0))",
            },
          }).showToast();
          contenedorspinner.style.display = "none";
        }
        contenedorspinner.style.display = "none";
      },
    });
  }
}
});