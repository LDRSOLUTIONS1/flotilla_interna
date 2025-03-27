document.addEventListener("DOMContentLoaded", function () {
  const btnguardarpoliza = document.getElementById("btnguardarpoliza");

  const polizas = document.getElementById("polizas");
  const identificadorpoliza = document.getElementById("identificadorpoliza");
  const fecharegistropoliza = document.getElementById("fecharegistropoliza");
  const fechavencimientopoliza = document.getElementById("fechavencimientopoliza");
  const documento_poliza = document.getElementById("documento_poliza");

  //declaracion del spinner de carga
  const contenedorspinner = document.getElementById("contenedorspinner");

  let id_unidad = 0;
  let valorpolizas;
  let valoridentificadorpoliza;
  let valorfecharegistropoliza;
  let valorfechavencimientopoliza;
  let valordocumento_poliza;
  //obtenemos modal
  const modalPolizasUnidades = new bootstrap.Modal(
    document.getElementById("modalPolizasUnidades")
  );

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnpolizasunidades")) {
      id_unidad = event.target.getAttribute("data-id");
      renderizarTablaPolizas();//muestra la tabla renderizada
      modalPolizasUnidades.show();
    }
  });

  btnguardarpoliza.addEventListener("click", function () {
    contenedorspinner.style.display = "flex";

    console.log("entro a btnguardarpoliza");
    obtenervalores();
    validarllenado();
    console.log("entro a " + valorpolizas);
    insertardatos();
  });

  function obtenervalores() {
    valorpolizas = polizas.value;
    valoridentificadorpoliza = identificadorpoliza.value;
    valorfecharegistropoliza = fecharegistropoliza.value;
    valorfechavencimientopoliza = fechavencimientopoliza.value;
    valordocumento_poliza = documento_poliza.files[0]; //obtenemos el archivo

    console.log(id_unidad);
    console.log(valorpolizas);
    console.log(valoridentificadorpoliza);
    console.log(valorfecharegistropoliza);
    console.log(valorfechavencimientopoliza);
    console.log(valordocumento_poliza);
  }

  //validar que los campos esten llenos con toastyfy
  function validarllenado() {
    const campos = [
      { campo: valorpolizas, nombre: "polizas" },
      { campo: valoridentificadorpoliza, nombre: "identificadorpoliza" },
      { campo: valorfecharegistropoliza, nombre: "fecharegistropoliza" },
      { campo: valorfechavencimientopoliza, nombre: "fechavencimientopoliza" },
      { campo: valordocumento_poliza, nombre: "documento_poliza" },
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
    if (validarllenado()) {
      console.log("entro a insertardatos");
      //meter los datos en una caja
      const caja = new FormData();
      caja.append("id_unidad", id_unidad);
      caja.append("polizas", valorpolizas);
      caja.append("identificadorpoliza", valoridentificadorpoliza);
      caja.append("fecharegistropoliza", valorfecharegistropoliza);
      caja.append("fechavencimientopoliza", valorfechavencimientopoliza);
      caja.append("documento_poliza", valordocumento_poliza);

      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/polizas/insertar_polizas.php", //url para insertar las polizas
        data: caja,
        processData: false, //permite mandar imagenes
        contentType: false, //permite mandar imagenes
        success: function (response) {
          console.log("entro a success");
          console.log(response);
          if (response.includes("Poliza insertada correctamente")) {
            Toastify({
              text: "Poliza insertada correctamente",
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
            window.location.href = "./unidades.php?resultado=Polizainsertada"; //resultado nombre del parametro -> resultado del contenido
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

            contenedorspinner.style.display = "none";
          } else if (response == "Error al insertar la poliza") {
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

  const contenedor_poliza_tenencia = document.getElementById(
    "contenedor_poliza_tenencia"
  );
  const contenedor_poliza_seguro = document.getElementById(
    "contenedor_poliza_seguro"
  );

  //creación de componentes de tablas renderisadas desde el servidor
  function renderizarTablaPolizas() {
    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/polizas/obtener_tabla_seguro.php", //url para obtener las polizas
      data: {
        id_unidad: id_unidad,
      },
      success: function (response) {
        console.log(response);
        contenedor_poliza_seguro.innerHTML = response;
      },
    });

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/polizas/obtener_tabla_tenencias.php", //url para obtener las polizas
      data: {
        id_unidad: id_unidad,
      },
      success: function (response) {
        console.log(response);
        contenedor_poliza_tenencia.innerHTML = response;
      }
      });
  }
});
