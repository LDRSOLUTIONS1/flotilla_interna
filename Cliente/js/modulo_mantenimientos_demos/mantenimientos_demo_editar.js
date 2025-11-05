// =========================
// Editar Mantenimiento DEMO (con archivo)
// =========================
document.addEventListener("DOMContentLoaded", () => {
  const editForm = document.getElementById("editMaintenanceForm");
  const tipoSelect = document.getElementById("editTipoInput");
  const estatusSelect = document.getElementById("editEstatus");
  const endpointTipos = "../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/tipo_mantenimiento.php";
  const endpointGuardar = "../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/editar_mantenimiento.php";

  if (!editForm) return;

  // Cargar tipos de mantenimiento al iniciar
  async function cargarTipos() {
    try {
      const res = await fetch(endpointTipos);
      if (!res.ok) throw new Error("Error al obtener tipos de mantenimiento");

      const data = await res.json();
      tipoSelect.innerHTML = '<option value="">-- Seleccionar tipo --</option>';

      data.forEach(tipo => {
        const opt = document.createElement("option");
        opt.value = tipo.id_tipo_mantenimiento;
        opt.textContent = tipo.tipo || tipo.nombre_tipo_mantenimiento;
        tipoSelect.appendChild(opt);
      });
    } catch (err) {
      console.error("Error cargando tipos:", err);
    }
  }

  // Llenar modal con datos
  window.openEditModal = mantenimiento => {
    document.getElementById("editUnidadIdInput").value = mantenimiento.id_unidad;
    document.getElementById("editUnidadInput").value = `${mantenimiento.modelo} (${mantenimiento.vin})`;
    tipoSelect.value = mantenimiento.id_tipo_mantenimiento || "";
    document.getElementById("editKmInput").value = mantenimiento.km_manual || "";
    document.getElementById("editFechaIngreso").value = mantenimiento.fecha_ingreso || "";
    document.getElementById("editFechaSalida").value = mantenimiento.fecha_salida !== "0000-00-00" ? mantenimiento.fecha_salida : "";
    document.getElementById("editTallerInput").value = mantenimiento.taller || "";
    document.getElementById("editCostoInput").value = mantenimiento.costo_estimado || "";
    document.getElementById("editDescInput").value = mantenimiento.descripcion_trabajo || "";
    document.getElementById("editProximoKm").value = mantenimiento.proximo_km || "";
    document.getElementById("editProximoFecha").value = mantenimiento.proximo_fecha || "";
    estatusSelect.value = mantenimiento.estatus || "";

    // Nota: los inputs file no se pueden rellenar por seguridad, se deja vacío
    document.getElementById("editFacturaFile").value = "";

    const modal = new bootstrap.Modal(document.getElementById("editMaintenanceModal"));
    modal.show();
  };

  // Guardar cambios
  editForm.addEventListener("submit", async e => {
    e.preventDefault();
    const formData = new FormData(editForm);

    try {
      const res = await fetch(endpointGuardar, { method: "POST", body: formData });
      const result = await res.json();

      if (result.success) {
        alert("Mantenimiento actualizado correctamente");
        const modal = bootstrap.Modal.getInstance(document.getElementById("editMaintenanceModal"));
        modal.hide();
        if (window.loadMantenimientos) window.loadMantenimientos();
      } else {
        alert("Error al actualizar: " + (result.message || "Error desconocido"));
      }
    } catch (error) {
      console.error("Error al actualizar mantenimiento:", error);
      alert("Error al actualizar mantenimiento. Revisa la consola.");
    }
  });

  // Cargar tipos al abrir
  cargarTipos();
});
