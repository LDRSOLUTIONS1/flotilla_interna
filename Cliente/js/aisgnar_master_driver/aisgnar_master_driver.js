document.addEventListener("DOMContentLoaded", function () {
    //abrimos la modal para poder asignar el master driver a la unidad
    const modalasugnarrmasterdriver = new bootstrap.Modal(document.getElementById("modalasugnarrmasterdriver"))
    const modalasugnarrmasterdriverbody = document.getElementById("modalasugnarrmasterdriverbody")

    const contenedorspinner = document.getElementById("contenedorspinner");


    document.body.addEventListener("click", function (event) {
        if (event.target.classList.contains("btasignarmasterdriver")) {
            $.ajax({
                type: "POST",
                url: "#",
                data: { id_unidad: event.target.getAttribute("data-id") },
                success: function (response) {
                    modalasugnarrmasterdriverbody.innerHTML = response
                    modalasugnarrmasterdriver.show()
                }
            })
        }
    })
});