
document.addEventListener("DOMContentLoaded", function () {
    //obtenemos modal
    const modaleditarpolizasUnidades = new bootstrap.Modal(document.getElementById("modaleditarpolizasUnidades"));
    const modalEditarPolizasUnidadesBody = document.getElementById("modalEditarPolizasUnidadesBody");//se obtener el cuerpo del modal para imorimir despues en el
  
    document.body.addEventListener("click", function (event) {
      if (event.target.classList.contains("btneditarpolizas")) {
        let id_poliza = event.target.getAttribute("data-id");
        console.log(id_poliza);
        //mando la solicitud al servidor
        $.ajax({
          type: "POST",
          url: "../../Servidor/solicitudes/polizas/formularioEditarPolizas.php",
          data: {
            idpoliza: id_poliza
          },
          success: function (response) {
            console.log(response);
            modalEditarPolizasUnidadesBody.innerHTML = response;
            
            modaleditarpolizasUnidades.show();
          }
        });
      }
    });
  });