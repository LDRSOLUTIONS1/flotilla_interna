document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll(".opcion-filtro-solicitante").forEach(opcion => {
    opcion.addEventListener("click", function (e) {
      e.preventDefault();
      const filtro = this.getAttribute("data-filtro");

      // Actualiza el texto del botón dropdown
      document.getElementById("dropdownFiltroSolicitante").innerText = "Filtrar: " + this.innerText;

      // Filtra las cards
      document.querySelectorAll(".card-solicitante").forEach(card => {
        if (filtro === "todos" || card.classList.contains("tipo-" + filtro)) {
          card.style.display = "block";
        } else {
          card.style.display = "none";
        }
      });

      // Filtra las filas de la tabla
      document.querySelectorAll(".fila-solicitante").forEach(row => {
        if (filtro === "todos" || row.classList.contains("tipo-" + filtro)) {
          row.style.display = "table-row";
        } else {
          row.style.display = "none";
        }
      });
    });
  });
});

//aqui usams este codigo para realizar el cambio de interfaz cards a tabla 
function toggleVista() {
    const button = document.getElementById("botonCambiarVista");
    const cards = document.getElementById("vistaCards");
    const tabla = document.getElementById("vistaTabla");
    const boton = event.target;

    if (cards.style.display === "none") {
        cards.style.display = "flex";
        tabla.style.display = "none";
        boton.textContent = "Cambiar a vista de tabla";
    } else {
        cards.style.display = "none";
        tabla.style.display = "block";
        boton.textContent = "Cambiar a vista de cards";
    }
}
