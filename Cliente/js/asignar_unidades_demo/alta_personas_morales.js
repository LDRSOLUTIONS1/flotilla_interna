document.addEventListener("DOMContentLoaded", function () {

    //----------------------------------------------------------esto hace que todas las entradas de texto sean mayusculas
  document.addEventListener("input", function (e) {
  const target = e.target;
  if (target.tagName === "INPUT" && target.type === "text") {
    target.value = target.value.toUpperCase();
  }
});


//obtenemos la modal para dar de alta personas morales
const modalregistrarpersonasmorales = new bootstrap.Modal(document.getElementById("modalregistrarpersonasmorales"));
const modalregistrarpersonasmoralesbody = document.getElementById("modalregistrarpersonasmoralesbody");

document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnagregarpersonamoral")) {
        //mando la solicitud al servidor
        $.ajax({
            type: "POST",
            url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/formularioaltapersonasmorales.php",
            success: function (response) {
                modalregistrarpersonasmoralesbody.innerHTML = response;
                modalregistrarpersonasmorales.show();
            }
        });
    }
});
    //declaracion del spinner de carga
  const contenedorspinner = document.getElementById("contenedorspinner");

  let valorinstitucionorganizacion;
  let valoridentificacionlegal;
  let valorviegnciarepresentantelegal;
  let valorarchivoidentificacionrepresentantelegal;
  let valorarchivopoderepresentantelegal;
  let valorrfcpersonamoral;
  let valorarchivoRFCpersonamoral;
  let valordomiciliodomiciliopersonamoral;
  let  valorarchivodomiciliopersonamoral;
  let valorarchivoescrituraconstitutiva;
  let valorarchivoestatusociales;

  document.body.addEventListener("click", function (event) {
    if (event.target.id === "btnguardarpersonamoral") {
      console.log("click en el boton");

      //mandamos a llamar los datos del formulario de las personas fisicas
      const btnguardarpersonamoral = document.getElementById("btnguardarpersonamoral");

      const institucionorganizacion = document.getElementById("institucionorganizacion");
      const identificacionlegal = document.getElementById("identificacionlegal");
      const viegnciarepresentantelegal = document.getElementById("viegnciarepresentantelegal");
      const archivoidentificacionrepresentantelegal = document.getElementById("archivoidentificacionrepresentantelegal");
      const archivopoderepresentantelegal = document.getElementById("archivopoderepresentantelegal");
      const rfcpersonamoral = document.getElementById("rfcpersonamoral");
      const archivoRFCpersonamoral = document.getElementById("archivoRFCpersonamoral");
      const domiciliodomiciliopersonamoral = document.getElementById("domiciliodomiciliopersonamoral");
      const archivodomiciliopersonamoral = document.getElementById("archivodomiciliopersonamoral");
      const archivoescrituraconstitutiva = document.getElementById("archivoescrituraconstitutiva");
      const archivoestatusociales = document.getElementById("archivoestatusociales");

      contenedorspinner.style.display = "flex";
      obtenervalores();
      validarllenado();
      insertardatos();
    }
  });

  function obtenervalores(){
    valorinstitucionorganizacion = institucionorganizacion.value;
    valoridentificacionlegal = identificacionlegal.value; 
    valorviegnciarepresentantelegal = viegnciarepresentantelegal.value;
    valorarchivoidentificacionrepresentantelegal = archivoidentificacionrepresentantelegal.files[0];;
    valorarchivopoderepresentantelegal = archivopoderepresentantelegal.files[0];
    valorrfcpersonamoral = rfcpersonamoral.value.toUpperCase();
    valorarchivoRFCpersonamoral = archivoRFCpersonamoral.files[0];
    valordomiciliodomiciliopersonamoral = domiciliodomiciliopersonamoral.value.toUpperCase();
    valorarchivodomiciliopersonamoral = archivodomiciliopersonamoral.files[0];
    valorarchivoescrituraconstitutiva = archivoescrituraconstitutiva.files[0];
    valorarchivoestatusociales = archivoestatusociales.files[0];

    console.log(valorinstitucionorganizacion);
    console.log(valoridentificacionlegal);
    console.log(valorviegnciarepresentantelegal);
    console.log(valorarchivoidentificacionrepresentantelegal);
    console.log(valorarchivopoderepresentantelegal);
    console.log(valorrfcpersonamoral);
    console.log(valorarchivoRFCpersonamoral);
    console.log(valordomiciliodomiciliopersonamoral);
    console.log(valorarchivodomiciliopersonamoral);
    console.log(valorarchivoescrituraconstitutiva);
    console.log(valorarchivoestatusociales);
  }

  function validarllenado(){
    const campos = [
      {
        campo: valorinstitucionorganizacion,
        nombre: "institucionorganizacion",
      },
      {
        campo: valoridentificacionlegal,
        nombre: "identificacionlegal",
      },
      {
        campo: valorviegnciarepresentantelegal,
        nombre: "viegnciarepresentantelegal",
      },
      {
        campo: valorarchivoidentificacionrepresentantelegal,
        nombre: "archivoidentificacionrepresentantelegal",
      },
      {
        campo: valorarchivopoderepresentantelegal,
        nombre: "archivopoderepresentantelegal",
      },
      {
        campo: valorrfcpersonamoral,
        nombre: "rfcpersonamoral",
      },
      {
        campo: valorarchivoRFCpersonamoral,
        nombre: "archivoRFCpersonamoral",
      },
      {
        campo: valordomiciliodomiciliopersonamoral,
        nombre: "domiciliodomiciliopersonamoral",
      },
      {
        campo: valorarchivodomiciliopersonamoral,
        nombre: "archivodomiciliopersonamoral",
      },
      {
        campo: valorarchivoescrituraconstitutiva,
        nombre: "archivoescrituraconstitutiva",
      },
      {
        campo: valorarchivoestatusociales,
        nombre: "archivoestatusociales",
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
              "linear-gradient(to right,rgb(255, 230, 0),rgb(231, 208, 0))",
          },
        }).showToast();
        return false;
      }
    }
    return true;
  }

  function insertardatos() {
    const formData = new FormData();

    formData.append("institucionorganizacion", valorinstitucionorganizacion);
    formData.append("identificacionlegal", valoridentificacionlegal);
    formData.append("viegnciarepresentantelegal", valorviegnciarepresentantelegal);
    formData.append("archivoidentificacionrepresentantelegal", valorarchivoidentificacionrepresentantelegal);
    formData.append("archivopoderepresentantelegal", valorarchivopoderepresentantelegal);
    formData.append("rfcpersonamoral", valorrfcpersonamoral);
    formData.append("archivoRFCpersonamoral", valorarchivoRFCpersonamoral);
    formData.append("domiciliodomiciliopersonamoral", valordomiciliodomiciliopersonamoral);
    formData.append("archivodomiciliopersonamoral", valorarchivodomiciliopersonamoral);
    formData.append("archivoescrituraconstitutiva", valorarchivoescrituraconstitutiva);
    formData.append("archivoestatusociales", valorarchivoestatusociales);

    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/insertar_alta_persona_moral.php",
      data: formData,
      contentType: false,
      processData: false,
      success: function (response) {
        console.log("entro a success");
        console.log(response);
        contenedorspinner.style.display = "none";
        window.location.href = "./personas_morales.php?resultado=AltaPersonamoralExitosa";
      },
    });
  }
  //---------------------------------------------------------------------modales para ver documentos------------------------------------------------------
  const modalveridrepresentantelegal = new bootstrap.Modal(document.getElementById("modalveridrepresentantelegal"));
  const modalveridrepresentantelegalbody = document.getElementById("modalveridrepresentantelegalbody");

  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btnveridrepresentantelegal")) {
      persona_idrepresentantelegal = event.target.getAttribute("data-id");
      $.ajax({
        type: "POST",
        data: { id_persona_idrepresentantelegal: persona_idrepresentantelegal },
        url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/veridrepresentantelegal.php",
        success: function (response) {
          modalveridrepresentantelegalbody.innerHTML = response;
          modalveridrepresentantelegal.show();
        },
      });
    }
  });

   //modal para ver el poder del representante legal
   const modalverpoderrepresentantelegal = new bootstrap.Modal(document.getElementById("modalverpoderrepresentantelegal"));
   const modalverpoderrepresentantelegalbody = document.getElementById("modalverpoderrepresentantelegalbody");  

   document.body.addEventListener("click", function (event) {
     if (event.target.classList.contains("btnverpoderrepresentantelegal")) {
       persona_poderrepresentantelegal = event.target.getAttribute("data-id");
       $.ajax({
         type: "POST",
         data: { id_persona_poderrepresentantelegal: persona_poderrepresentantelegal },
         url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/verpoderrepresentantelegal.php",
         success: function (response) {
           modalverpoderrepresentantelegalbody.innerHTML = response;
           modalverpoderrepresentantelegal.show();
         },
       });
     }
   })

   //modal para ver el rfc
   const modalverrfc = new bootstrap.Modal(document.getElementById("modalverrfc"));
   const modalverrfcbody = document.getElementById("modalverrfcbody");

   document.body.addEventListener("click", function (event) {
     if (event.target.classList.contains("btnverrfc")) {
       persona_rfc = event.target.getAttribute("data-id");
       $.ajax({
         type: "POST",
         data: { id_persona_rfc: persona_rfc },
         url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/verrfc.php",
         success: function (response) {
           modalverrfcbody.innerHTML = response;
           modalverrfc.show();
         },
       });
     }
   })

   //modal para ver el domicilio
   const modalverdomicilio = new bootstrap.Modal(document.getElementById("modalverdomicilio"));
   const modalverdomiciliobody = document.getElementById("modalverdomiciliobody");

   document.body.addEventListener("click", function (event) {
     if (event.target.classList.contains("btnverdomicilio")) {
       persona_domicilio = event.target.getAttribute("data-id");
       $.ajax({
         type: "POST",
         data: { id_persona_domicilio: persona_domicilio },
         url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/verdomicilio.php",
         success: function (response) {
           modalverdomiciliobody.innerHTML = response;
           modalverdomicilio.show();
         },
       });
     }
   })

   //modal para ver la escritura constitutiva
   const modalverescrituraconstitutiva = new bootstrap.Modal(document.getElementById("modalverescrituraconstitutiva"));
   const modalverescrituraconstitutivabody = document.getElementById("modalverescrituraconstitutivabody");

   document.body.addEventListener("click", function (event) {
     if (event.target.classList.contains("btnverescrituraconstitutiva")) {
       persona_escrituraconstitutiva = event.target.getAttribute("data-id");
       $.ajax({
         type: "POST",
         data: { id_persona_escrituraconstitutiva: persona_escrituraconstitutiva },
         url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/verescrituraconstitutiva.php",
         success: function (response) {
           modalverescrituraconstitutivabody.innerHTML = response;
           modalverescrituraconstitutiva.show();
         },
       });
     }
   })

   //modal para ver el estatus sociales
   const modalverestatusosciales = new bootstrap.Modal(document.getElementById("modalverestatusosciales"));
   const modalverestatusoscialesbody = document.getElementById("modalverestatusoscialesbody");

   document.body.addEventListener("click", function (event) {
     if (event.target.classList.contains("btnverestatusociales")) {
       persona_estatusociales = event.target.getAttribute("data-id");
       $.ajax({
         type: "POST",
         data: { id_persona_estatusociales: persona_estatusociales },
         url: "../../Servidor/solicitudes/solicitud_ver_personas_morales/verestatusociales.php",
         success: function (response) {
           modalverestatusoscialesbody.innerHTML = response;
           modalverestatusosciales.show();
         },
       });
     }
   })




});