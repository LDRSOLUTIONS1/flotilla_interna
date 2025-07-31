document.addEventListener("DOMContentLoaded", function () {

    //abrimos la modal para realizar la prorroga de la unidad
    const modalprorrogaunidaddemo = new bootstrap.Modal(document.getElementById("modalprorrogaunidaddemo"));
    const modalprorrogaunidaddemobody = document.getElementById("modalprorrogaunidaddemobody");  
    let id_asignacion_demo = 0;

    document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnsolicitarprorrogademo")) {
            id_asignacion_demo = event.target.getAttribute("data-id_asignacion_demo");
            $.ajax({
                type: "POST",
                data: {id_asignacion : id_asignacion_demo},
                url: "../../Servidor/solicitudes/unidades_demo_autorizadas/formulario_prorrogaunidaddemo.php",
                success: function (response) {
                    modalprorrogaunidaddemobody.innerHTML = response;
                    modalprorrogaunidaddemo.show();
                },
            });
        }
    });

    //notificacion de finalizacion de la unidad demo
    document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btnfinalizarpruebaunidademo")) {
            id_asignacion_demo = event.target.getAttribute("data-id_asignacion_demo");
            Swal.fire({
                title: "¿Estás seguro de finalizar la prueba demo?",
                html: "<p>Se notificará a telematics la baja de la unidad.</p>"
                    + "<p>Una vez finalizada, no podrás revertir el proceso.</p>",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Sí, finalizar",
                cancelButtonText: "Cancelar"
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        type: "POST",
                        data: {id_asignacion: id_asignacion_demo},
                        url: "../../Servidor/solicitudes/unidades_demo_autorizadas/formulario_finalizarunidaddemo.php",
                        success: function (response) {
                            console.log("entro a success");
                            console.log(response);
                            if (response.includes("correctamente")) {
                                contenedorspinner.style.display = "none";
                                window.location.href = "./asignaciones_unidades_demo.php?resultado=pruebaterminada";
                            }
                        },
                    });
                }
            });
        }
    });
})