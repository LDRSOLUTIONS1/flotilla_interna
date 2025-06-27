document.addEventListener("DOMContentLoaded", function () {

    //----------------------------------------------------------esto hace que todas las entradas de texto sean mayusculas
  document.addEventListener("input", function (e) {
  const target = e.target;
  if (target.tagName === "INPUT" && target.type === "text") {
    target.value = target.value.toUpperCase();
  }
});


    //obtenemos la modal para dar de alta personas fisicas
    const modalregistrarpersonasfisicas = new bootstrap.Modal(document.getElementById("modalregistrarpersonasfisicas"));
    const modalregistrarpersonasfisicasbody = document.getElementById("modalregistrarpersonasfisicasbody");

    document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnagregarpersonafisica")) {
            //mando la solicitud al servidor
            $.ajax({
                type: "POST",
                url: "../../Servidor/solicitudes/solicitud_ver_personas_fisicas/formularioaltapersonasfisicas.php",
                success: function (response) {
                    modalregistrarpersonasfisicasbody.innerHTML = response;
                    modalregistrarpersonasfisicas.show();
                }
            });
        }
    });

    //declaracion del spinner de carga
  const contenedorspinner = document.getElementById("contenedorspinner");

  let valornombrepersonafisica1;
  let valornombrepersonafisica2;
  let valorapaternopersonafisica;
  let valoramaternopersonafisica;
  let valorgeneropersonafisica;
  let valorinepersonafisica;
  let valorvigenciainepersonafisica;
  let valorarchivoINEpersonafisica;
  let valorcurppersonafisica;
  let valorarchivoCURPpersonafisica
  let valorrfcpersonafisica;
  let valorarchivoRFCpersonafisica;
  let valordomiciliodomiciliopersonafisica;
  let valorarchivodomicilio;


  document.body.addEventListener("click", function (event) {
    if (event.target.id === "btnguardarpersonafisica") {
      console.log("click en el boton");

      //mandamos a llamar los datos del formulario de las personas fisicas
      const btnguardarpersonafisica = document.getElementById("btnguardarpersonafisica");

    const nombrepersonafisica1 = document.getElementById("nombrepersonafisica1");
    const nombrepersonafisica2 = document.getElementById("nombrepersonafisica2");
    const apaternopersonafisica = document.getElementById("apaternopersonafisica");
    const amaternopersonafisica = document.getElementById("amaternopersonafisica");
    const generopersonafisica = document.getElementById("generopersonafisica");
    const inepersonafisica = document.getElementById("inepersonafisica");
    const vigenciainepersonafisica = document.getElementById("vigenciainepersonafisica");
    const archivoINEpersonafisica = document.getElementById("archivoINEpersonafisica");
    const curppersonafisica = document.getElementById("curppersonafisica");
    const archivoCURPpersonafisica = document.getElementById("archivoCURPpersonafisica");
    const rfcpersonafisica = document.getElementById("rfcpersonafisica");
    const archivoRFCpersonafisica = document.getElementById("archivoRFCpersonafisica");
    const domiciliodomiciliopersonafisica = document.getElementById("domiciliodomiciliopersonafisica");
    const archivodomicilio = document.getElementById("archivodomicilio");

      contenedorspinner.style.display = "flex";
      obtenervalores();
      validarllenado();
      insertardatos();
    }
  });

  function obtenervalores(){
    valornombrepersonafisica1 = nombrepersonafisica1.value.toUpperCase(); // toUpperCase() permite que se convierten a mayusculas sl obtener los valores delformulario
    valornombrepersonafisica2 = nombrepersonafisica2.value.toUpperCase();
    valorapaternopersonafisica = apaternopersonafisica.value.toUpperCase();
    valoramaternopersonafisica = amaternopersonafisica.value.toUpperCase();
    valorgeneropersonafisica = generopersonafisica.value;
    valorinepersonafisica = inepersonafisica.value;
    valorvigenciainepersonafisica = vigenciainepersonafisica.value;
    valorarchivoINEpersonafisica = archivoINEpersonafisica.files[0];
    valorcurppersonafisica = curppersonafisica.value.toUpperCase();
    valorarchivoCURPpersonafisica = archivoCURPpersonafisica.files[0];
    valorrfcpersonafisica = rfcpersonafisica.value.toUpperCase();
    valorarchivoRFCpersonafisica = archivoRFCpersonafisica.files[0];
    valordomiciliodomiciliopersonafisica = domiciliodomiciliopersonafisica.value.toUpperCase();
    valorarchivodomicilio = archivodomicilio.files[0];

    console.log(valornombrepersonafisica1);
    console.log(valornombrepersonafisica2);
    console.log(valorapaternopersonafisica);
    console.log(valoramaternopersonafisica);
    console.log(valorgeneropersonafisica);
    console.log(valorinepersonafisica);
    console.log(valorvigenciainepersonafisica);
    console.log(valorarchivoINEpersonafisica);
    console.log(valorcurppersonafisica);
    console.log(valorarchivoCURPpersonafisica);
    console.log(valorrfcpersonafisica);
    console.log(valorarchivoRFCpersonafisica);
    console.log(valordomiciliodomiciliopersonafisica);
    console.log(valorarchivodomicilio);
  }

  function validarllenado(){
    const campos = [
      {
        campo: valornombrepersonafisica1,
        nombre: "nombrepersonafisica1",
      },
      {
        campo: valornombrepersonafisica2,
        nombre: "nombrepersonafisica2",
      },
      {
        campo: valorapaternopersonafisica,
        nombre: "apaternopersonafisica",
      },
      {
        campo: valoramaternopersonafisica,
        nombre: "amaternopersonafisica",
      },
      {
        campo: valorgeneropersonafisica,
        nombre: "generopersonafisica",
      },
      {
        campo: valorinepersonafisica,
        nombre: "inepersonafisica",
      },
      {
        campo: valorvigenciainepersonafisica,
        nombre: "vigenciainepersonafisica",
      },
      {
        campo: valorarchivoINEpersonafisica,
        nombre: "archivoINEpersonafisica",
      },
      {
        campo: valorcurppersonafisica,
        nombre: "curppersonafisica",
      },
      {
        campo: valorarchivoCURPpersonafisica,
        nombre: "archivoCURPpersonafisica",
      },
      {
        campo: valorrfcpersonafisica,
        nombre: "rfcpersonafisica",
      },
      {
        campo: valorarchivoRFCpersonafisica,
        nombre: "archivoRFCpersonafisica",
      },
      {
        campo: valordomiciliodomiciliopersonafisica,
        nombre: "domiciliodomiciliopersonafisica",
      },
      {
        campo: valorarchivodomicilio,
        nombre: "archivodomicilio",
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
            background: "linear-gradient(to right, #00b09b, #96c93d)",
          },
        }).showToast();
      }
    }
  }

  function insertardatos(){
    const formData = new FormData();

    formData.append("nombrepersonafisica1", valornombrepersonafisica1);
    formData.append("nombrepersonafisica2", valornombrepersonafisica2);
    formData.append("apaternopersonafisica", valorapaternopersonafisica);
    formData.append("amaternopersonafisica", valoramaternopersonafisica);
    formData.append("generopersonafisica", valorgeneropersonafisica);
    formData.append("inepersonafisica", valorinepersonafisica);
    formData.append("vigenciainepersonafisica", valorvigenciainepersonafisica);
    formData.append("archivoINEpersonafisica", valorarchivoINEpersonafisica);
    formData.append("curppersonafisica", valorcurppersonafisica);
    formData.append("archivoCURPpersonafisica", valorarchivoCURPpersonafisica);
    formData.append("rfcpersonafisica", valorrfcpersonafisica);
    formData.append("archivoRFCpersonafisica", valorarchivoRFCpersonafisica);
    formData.append("domiciliodomiciliopersonafisica", valordomiciliodomiciliopersonafisica);
    formData.append("archivodomicilio", valorarchivodomicilio);

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/solicitud_ver_personas_fisicas/insertar_alta_persona_fisica.php",
      data: formData,
      contentType: false,
      processData: false,
      success: function (response) {
        console.log("entro a success");
        console.log(response);
        contenedorspinner.style.display = "none";
       window.location.href = "./personas_fisicas.php?resultado=personafisicainsertada";
      },
    });

  }
  //---------------------------------------------------------------------modales para ver documentos------------------------------------------------------
  //modal para ver ine
  const modalverine = new bootstrap.Modal(document.getElementById("modalverine"));
  const modalverinebody = document.getElementById("modalverinebody");

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnine")) {
      persona_ine = event.target.getAttribute("data-id");
      $.ajax({
        type: "POST",
        data: { id_persona_ine: persona_ine },
        url: "../../Servidor/solicitudes/solicitud_ver_personas_fisicas/verine.php",
        success: function (response) {
          console.log("entro a success");
          console.log(response);
          modalverinebody.innerHTML = response;
          modalverine.show();
        },
      });
    }
  });

  //modal para ver rfc
  const modalverrfc = new bootstrap.Modal(document.getElementById("modalverrfc"));
  const modalverrfcbody = document.getElementById("modalverrfcbody");

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnrfc")) {
      persona_rfc = event.target.getAttribute("data-id");
      $.ajax({
        type: "POST",
        data: { id_persona_rfc: persona_rfc },
        url: "../../Servidor/solicitudes/solicitud_ver_personas_fisicas/verrfc.php",
        success: function (response) {
          console.log("entro a success");
          console.log(response);
          modalverrfcbody.innerHTML = response;
          modalverrfc.show();
        },
      });
    }
  });

  //modal para ver curp
  const modalvercurp = new bootstrap.Modal(document.getElementById("modalvercurp"));
  const modalvercurpbody = document.getElementById("modalvercurpbody");

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btncurp")) {
      persona_curp = event.target.getAttribute("data-id");
      $.ajax({
        type: "POST",
        data: { id_persona_curp: persona_curp },
        url: "../../Servidor/solicitudes/solicitud_ver_personas_fisicas/vercurp.php",
        success: function (response) {
          console.log("entro a success");
          console.log(response);
          modalvercurpbody.innerHTML = response;
          modalvercurp.show();
        },
      });
    }
  });

  //modal para ver domicilio
  const modalverdomicilio = new bootstrap.Modal(document.getElementById("modalverdomicilio"));
  const modalverdomiciliobody = document.getElementById("modalverdomiciliobody");

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btndomicilio")) {
      persona_domicilio = event.target.getAttribute("data-id");
      $.ajax({
        type: "POST",
        data: { id_persona_domicilio: persona_domicilio },
        url: "../../Servidor//solicitudes/solicitud_ver_personas_fisicas/verdomicilio.php",
        success: function (response) {
          console.log("entro a success");
          console.log(response);
          modalverdomiciliobody.innerHTML = response;
          modalverdomicilio.show();
        },
      });
    }
  });




  //modal de asignacion de las unidades demo despues de haber dado de alta a personas fisicas
  const modalasignarunidadesdemopersonafisica = new bootstrap.Modal(document.getElementById("modalasignarunidadesdemopersonafisica"));
  const modalasignarunidadesdemopersonafisicabody = document.getElementById("modalasignarunidadesdemopersonafisicabody");

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnasignarunidadespersonafisica")) {
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/unidades/asignacion_unidades_demo/formularioasignarunidadesdemopersonafisica.php",
        success: function (response) {
          console.log("entro a success");
          console.log(response);
          modalasignarunidadesdemopersonafisicabody.innerHTML = response;
          modalasignarunidadesdemopersonafisica.show();
        },
      });
    }
  });

});
    