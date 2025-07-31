document.addEventListener("DOMContentLoaded", function () {

    //abrimos la modal para realizar la prorroga de la unidad
    const modalprorrogaunidaddemo = new bootstrap.Modal(
        document.getElementById("modalprorrogaunidaddemo")
    );
    const modalprorrogaunidaddemobody = document.getElementById(
        "modalprorrogaunidaddemobody"
    );  
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
})