document.addEventListener("DOMContentLoaded", function () {
  //abrimos la modal para poder asignar el master driver a la unidad
  const modalasugnarrmasterdriver = new bootstrap.Modal(
    document.getElementById("modalasugnarrmasterdriver")
  );
  const modalasugnarrmasterdriverbody = document.getElementById(
    "modalasugnarrmasterdriverbody"
  );

  const contenedorspinner = document.getElementById("contenedorspinner");

  //formulario de asignar master driver
  document.body.addEventListener("click", function (event) {
    if (event.target.classList.contains("btasignarmasterdriver")) {
      id_asignacion_demo = event.target.getAttribute("id-asignacion_demo");
      $.ajax({
        type: "POST",
        url: "../../Servidor/solicitudes/unidades/asignacion_unidades_demo/formulario_asignar_master_driver.php",
        data: { id_asignacion: id_asignacion_demo },
        success: function (response) {
          modalasugnarrmasterdriverbody.innerHTML = response;
          modalasugnarrmasterdriver.show();
        },
      });
    }
  });

  let valor_id_master_driver;
  let valor_id_asignacion;

  //asignar master driver
  document.body.addEventListener("click", function (event) {
    if (event.target.id === "btnasignarmasterdriver") {
      console.log("click en el boton de asignar master driver");

      const id_master_driver = document.getElementById("id_master_driver");
      const id_asignacion = document.getElementById("id_asignacion");

      obtenervalores();

      if (validarllenado()) {
        Swal.fire({
          title: "¿Estás seguro?",
          text: "Esta acción asignará al Máster Driver seleccionado.",
          icon: "warning",
          showCancelButton: true,
          confirmButtonColor: "#3085d6",
          cancelButtonColor: "#d33",
          confirmButtonText: "Sí, asignar",
          cancelButtonText: "Cancelar",
        }).then((result) => {
          if (result.isConfirmed) {
            contenedorspinner.style.display = "flex";
            insertardatos();
          }
        });
      }
    }
  });

  function obtenervalores() {
    valor_id_master_driver = id_master_driver.value;
    valor_id_asignacion = id_asignacion.value;

    console.log(valor_id_master_driver);
    console.log(valor_id_asignacion);
  }

  function validarllenado() {
    let valido = true;
    const campos = [
      {
        campo: valor_id_master_driver,
        nombre: "Master driver",
      },
      {
        campo: valor_id_asignacion,
        nombre: "id_asignacion",
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
            background: "linear-gradient(to right, #b00000ff, #c93d3dff)",
          },
        }).showToast();
        valido = false;
      }
    }
    return valido;
  }

  function insertardatos() {
    const formData = new FormData();
    formData.append("id_master_driver", valor_id_master_driver);
    formData.append("id_asignacion", valor_id_asignacion);
    $.ajax({
      type: "POST",
      url: "../../Servidor/solicitudes/unidades/asignacion_unidades_demo/asignar_master_driver.php",
      data: formData,
      contentType: false,
      processData: false,
      success: function (response) {
        console.log("entro a success");
        console.log(response);
        contenedorspinner.style.display = "none";
        window.location.href =
          "./asignar_master_driver.php?resultado=MasterDriverAsignado";
      },
    });
  }
});
