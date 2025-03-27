

document.addEventListener("DOMContentLoaded", function () {
    //obtenemos modal
    const modalEditarUnidades = new bootstrap.Modal(document.getElementById("modalEditarUnidades"));
    const modalEditarUnidadesBody = document.getElementById("modalEditarUnidadesBody");//se obtener el cuerpo del modal para imprimir despues en el formulario

    document.body.addEventListener("click", function (event) {
      if (event.target.classList.contains("btneditarunidades")) {
        let id_unidad = event.target.getAttribute("data-id");
        console.log(id_unidad);
        //mando la solicitud al servidor
        $.ajax({
          type: "POST",
          url: "../../Servidor/solicitudes/unidades/formularioeditarunidades.php",
          data: {
            idunidad: id_unidad
          },
          success: function (response) {
            console.log(response);
            modalEditarUnidadesBody.innerHTML = response;
            
            modalEditarUnidades.show();
          }
        });
      }
    });
  });