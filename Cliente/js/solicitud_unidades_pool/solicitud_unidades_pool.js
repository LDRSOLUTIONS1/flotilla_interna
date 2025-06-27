document.addEventListener("DOMContentLoaded", function () {
  //abrimos la modal para vizualisar la informacion general de la unidad y solicitarla
  const modalinfoformacionunidadpool = new bootstrap.Modal(
    document.getElementById("modalinfoformacionunidadpool")
  );
  const modalinfoformacionunidadpoolbody = document.getElementById(
    "modalinfoformacionunidadpoolbody"
  );

  const btnsolicitudunidadpool = document.getElementById(
    "btnsolicitudunidadpool"
  );
  btnsolicitudunidadpool.addEventListener("click", function () {
    const sederecoleccionpool = document.getElementById("sederecoleccionpool");
    const fechasolicitudunidadpool = document.getElementById(
      "fechasolicitudunidadpool"
    );
    const horasolicitudunidadpool = document.getElementById(
      "horasolicitudunidadpool"
    );
    const sededevolucionunidadpool = document.getElementById(
      "sededevolucionunidadpool"
    );
    const fechadevolucionunidadpool = document.getElementById(
      "fechadevolucionunidadpool"
    );
    const horadevolucionunidadpool = document.getElementById(
      "horadevolucionunidadpool"
    );
    let idunidad = 0;

    let valorsederecoleccionpool;
    let valorfechasolicitudunidadpool;
    let valorhorasolicitudunidadpool;
    let valorsededevolucionunidadpool;
    let valorfechadevolucionunidadpool;
    let valorhoradevolucionunidadpool;

    contenedorspinner.style.display = "flex";

    obtenervalores();
    if (validarllenado()) {
      consultar();
    } else {
      contenedorspinner.style.display = "none";
    }

    function obtenervalores() {
      valorsederecoleccionpool = sederecoleccionpool.value;
      valorfechasolicitudunidadpool = fechasolicitudunidadpool.value;
      valorhorasolicitudunidadpool = horasolicitudunidadpool.value;
      valorsededevolucionunidadpool = sededevolucionunidadpool.value;
      valorfechadevolucionunidadpool = fechadevolucionunidadpool.value;
      valorhoradevolucionunidadpool = horadevolucionunidadpool.value;

      console.log(valorsederecoleccionpool);
      console.log(valorfechasolicitudunidadpool);
      console.log(valorhorasolicitudunidadpool);
      console.log(valorsededevolucionunidadpool);
      console.log(valorfechadevolucionunidadpool);
      console.log(valorhoradevolucionunidadpool);
    }

    function validarllenado() {
      const campos = [
        {
          campo: valorsederecoleccionpool,
          nombre: "sederecoleccionpool",
          atributo: "Ubicación de recolección",
        },
        {
          campo: valorfechasolicitudunidadpool,
          nombre: "fechasolicitudunidadpool",
          atributo: "Fecha de solicitud",
        },
        {
          campo: valorhorasolicitudunidadpool,
          nombre: "horasolicitudunidadpool",
          atributo: "Hora de solicitud",
        },
        {
          campo: valorsededevolucionunidadpool,
          nombre: "sededevolucionunidadpool",
          atributo: "Ubicación de devolución",
        },
        {
          campo: valorfechadevolucionunidadpool,
          nombre: "fechadevolucionunidadpool",
          atributo: "Fecha de devolución",
        },
        {
          campo: valorhoradevolucionunidadpool,
          nombre: "horadevolucionunidadpool",
          atributo: "Hora de devolución",
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
      caja.append("sederecoleccionpool", valorsederecoleccionpool);
      caja.append("fechasolicitudunidadpool", valorfechasolicitudunidadpool);
      caja.append("horasolicitudunidadpool", valorhorasolicitudunidadpool);
      caja.append("sededevolucionunidadpool", valorsededevolucionunidadpool);
      caja.append("fechadevolucionunidadpool", valorfechadevolucionunidadpool);
      caja.append("horadevolucionunidadpool", valorhoradevolucionunidadpool);

      console.log(caja);

      $.ajax({
        type: "POST",
        data: caja,
        url: "../../Servidor/solicitudes/solicitud_unidades_pool/consultar_unidades_disponibles.php",
        contentType: false,
        processData: false,
        success: function (response) {
          contenedorspinner.style.display = "none";
          document.getElementById(
            "contenedorunidadesdisponiblespool"
          ).innerHTML = response;
        },
      });

      document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnmostrarunidadpool")) {
          id_unidad = event.target.getAttribute("data-id");
          id_usuario_pool = event.target.getAttribute("data-id-usuario-pool");
          console.log(id_unidad);
          console.log(id_usuario_pool);
          $.ajax({
            type: "POST",
            url: "../../Servidor/solicitudes/solicitud_unidades_pool/formularioinfounidadpool.php",
            data: { id_unidad: id_unidad, id_usuario_pool: id_usuario_pool },
            success: function (response) {
              modalinfoformacionunidadpoolbody.innerHTML = response;
              modalinfoformacionunidadpool.show();
            },
          });
        }
      });
    }
    //------------------------------------------------------------enviamos la solicitud del boton para realizar la insercion
    const btnsolicitaruniadpool = document.getElementById("btnsolicitaruniadpool");

    btnsolicitaruniadpool.addEventListener("click", function () {
      const id_usuario_pool = document.getElementById("id_usuario_pool");

      let valorid_usuario_pool;
      let valoridunidad;

      contenedorspinner.style.display = "flex";
      obtenervalores1();
      insertardatos();

      function obtenervalores1() {
        valorid_usuario_pool = id_usuario_pool.value;
        valoridunidad = id_unidad;
        valorsederecoleccionpool = sederecoleccionpool.value;
        valorfechasolicitudunidadpool = fechasolicitudunidadpool.value;
        valorhorasolicitudunidadpool = horasolicitudunidadpool.value;
        valorsededevolucionunidadpool = sededevolucionunidadpool.value;
        valorfechadevolucionunidadpool = fechadevolucionunidadpool.value;
        valorhoradevolucionunidadpool = horadevolucionunidadpool.value;

        console.log(valorsederecoleccionpool);
        console.log(valorfechasolicitudunidadpool);
        console.log(valorhorasolicitudunidadpool);
        console.log(valorsededevolucionunidadpool);
        console.log(valorfechadevolucionunidadpool);
        console.log(valorhoradevolucionunidadpool);

        console.log(valorid_usuario_pool);
        console.log(valoridunidad);
      }

      function insertardatos() {
        console.log("entro a insertardatos");
        //meter en un formdata en este se puede meter informacion de todo tipo fyle, varchar etc etc
        const caja1 = new FormData();

        //metemos todo a la caja
        caja1.append("id_usuario_pool", valorid_usuario_pool);
        caja1.append("id_unidad", valoridunidad);
        caja1.append("sederecoleccionpool", valorsederecoleccionpool);
        caja1.append("fechasolicitudunidadpool", valorfechasolicitudunidadpool);
        caja1.append("horasolicitudunidadpool", valorhorasolicitudunidadpool);
        caja1.append("sededevolucionunidadpool", valorsededevolucionunidadpool);
        caja1.append("fechadevolucionunidadpool", valorfechadevolucionunidadpool );
        caja1.append("horadevolucionunidadpool", valorhoradevolucionunidadpool);

        console.log(caja1);
        console.log(caja1 + "caja1");

        $.ajax({
          type: "POST",
          data: caja1,
          url: "../../Servidor/solicitudes/solicitud_unidades_pool/insertar_solicitud_unidad_pool.php",
          contentType: false,
          processData: false,
          success: function (response) {
            contenedorspinner.style.display = "none";
            modalinfoformacionunidadpool.hide();
            console.log(response);
            window.location.href = "./solicitud_unidades_pool.php?resultado=Solicitudunidadpool";
          },
        });
      }
    });
  });
});
