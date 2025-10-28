document.addEventListener("DOMContentLoaded", function () {
  const unidadInput = document.getElementById("unidadInput");
  const unidadList = document.getElementById("unidadList");
  const tipoSelect = document.getElementById("tipoInput");
  const maintTableBody = document.getElementById("maintBody");
  const maintenanceForm = document.getElementById("maintenanceForm");

  let selectedUnidadId = null;
  let editId = null;

  // 🔍 Buscar unidades demo
  unidadInput.addEventListener("input", () => {
    const query = unidadInput.value.trim();
    if (query.length < 2) {
      unidadList.innerHTML = "";
      return;
    }

    fetch(
      `../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/obtener_unidades_mantenimiento_demo.php?q=${encodeURIComponent(
        query
      )}`
    )
      .then((res) => res.json())
      .then((data) => {
        unidadList.innerHTML = "";
        data.forEach((u) => {
          const item = document.createElement("button");
          item.type = "button";
          item.className = "list-group-item list-group-item-action";
          item.textContent = `${u.vin || ""} - ${u.nombre_modelo || ""} - ${
            u.nombre_marca || ""
          } - ${u.placa || ""}`;
          item.addEventListener("click", () => {
            unidadInput.value = item.textContent;
            selectedUnidadId = u.id_unidad;
            document.getElementById("unidadIdInput").value = selectedUnidadId; // <--- Aquí
            unidadList.innerHTML = "";
          });
          unidadList.appendChild(item);
        });
      })
      .catch((err) => console.error("Error al cargar unidades:", err));
  });

  // 📋 Cargar tipos de mantenimiento
  fetch(
    "../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/tipo_mantenimiento.php"
  )
    .then((res) => res.json())
    .then((data) => {
      data.forEach((tm) => {
        const opt = document.createElement("option");
        opt.value = tm.id_tipo_mantenimiento;
        opt.textContent = tm.nombre_tipo_mantenimiento;
        tipoSelect.appendChild(opt);
      });
    })
    .catch((err) =>
      console.error("Error al cargar tipos de mantenimiento:", err)
    );

  // 📄 Cargar mantenimientos existentes
  function loadMantenimientos() {
    fetch(
      "../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/obtener_mantenimientos.php"
    )
      .then((res) => res.json())
      .then((data) => {
        maintTableBody.innerHTML = "";
        const counts = { preventivo: 0, correctivo: 0, mixto: 0 };

        data.forEach((m) => {
          const tr = document.createElement("tr");
          tr.innerHTML = `
            <td class="txtmantenimientos">${m.id_unidad}</td>
            <td class="txtmantenimientos">${m.tipo}</td>
            <td class="txtmantenimientos">${m.fecha_ingreso}</td>
            <td class="txtmantenimientos">${m.fecha_salida || "-"}</td>
            <td class="txtmantenimientos">${m.km_actual}</td>
            <td class="txtmantenimientos">${m.taller}</td>
            <td class="txtmantenimientos">${m.estatus}</td>
            <td class="txtmantenimientos">$${m.costo_estimado || 0}</td>
            <td class="txtmantenimientos">
              <button class="btn btn-sm btn-outline-primary" onclick="editM(${
                m.id_mantenimiento
              })">
                <i class="bi bi-pencil"></i>
              </button>
            </td>
          `;
          maintTableBody.appendChild(tr);
          counts[m.tipo.toLowerCase()] =
            (counts[m.tipo.toLowerCase()] || 0) + 1;
        });

        // 🥧 Gráfica tipo mantenimiento
        const ctx = document.getElementById("chartTypes");

        // ✅ Si ya existe una gráfica previa, destruirla antes de crear otra
        if (window.chartTypesInstance) {
          window.chartTypesInstance.destroy();
        }

        // Crear nueva gráfica y guardarla globalmente
        window.chartTypesInstance = new Chart(ctx, {
          type: "doughnut",
          data: {
            labels: ["Preventivo", "Correctivo", "Mixto"],
            datasets: [
              { data: [counts.preventivo, counts.correctivo, counts.mixto] },
            ],
          },
          options: { plugins: { legend: { position: "bottom" } } },
        });
      })
      .catch((err) => console.error("Error al cargar mantenimientos:", err));
  }
  loadMantenimientos();

  // Guardar / Editar mantenimiento
  maintenanceForm.addEventListener("submit", function (e) {
    e.preventDefault();

    if (!selectedUnidadId) {
      alert("Por favor selecciona una unidad de la lista.");
      return;
    }

    const formData = new FormData(maintenanceForm);

    // Añadir el ID de la unidad seleccionada
    formData.append("id_unidad", selectedUnidadId);

    let url =
      "../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/guardar_mantenimiento.php";
    if (editId) {
      url =
        "../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/editar_mantenimiento.php";
      formData.append("id_mantenimiento", editId);
    }

    fetch(url, {
      method: "POST",
      body: formData,
      credentials: "same-origin", // <- Esto envía la cookie de sesión a PHP
    })
      .then((res) => res.json())
      .then((resp) => {
        if (resp.success) {
          alert(resp.message);
          maintenanceForm.reset();
          selectedUnidadId = null;
          editId = null;
          unidadList.innerHTML = "";
          loadMantenimientos();

          // ✅ Cerrar correctamente la modal (sin dejar el fondo oscuro)
          const modalEl = document.getElementById("maintenanceModal");
          const modalInstance =
            bootstrap.Modal.getInstance(modalEl) ||
            new bootstrap.Modal(modalEl);
          modalInstance.hide();

          // ✅ Remover el fondo oscuro manualmente si queda colgado
          document.body.classList.remove("modal-open");
          document
            .querySelectorAll(".modal-backdrop")
            .forEach((el) => el.remove());
        } else {
          alert("Error al guardar el mantenimiento: " + resp.message);
        }
      })
      .catch((err) => {
        console.error("Error al guardar el mantenimiento:", err);
        alert("Error al guardar el mantenimiento.");
      });
  });

  // ✏️ Editar mantenimiento existente
  window.editM = function (id) {
    editId = id;
    fetch(
      `../../Servidor/solicitudes/unidades/mantenimientos_unidades_demo/obtener_mantenimientos.php?id_mantenimiento=${id}`
    )
      .then((res) => res.json())
      .then((data) => {
        if (data.length > 0) {
          const m = data[0];
          selectedUnidadId = m.id_unidad;
          unidadInput.value = `${m.vin} - ${m.modelo} - ${m.marca}`;
          tipoSelect.value = m.id_tipo_mantenimiento;
          document.getElementById("kmInput").value = m.km_actual;
          document.getElementById("fechaIngreso").value = m.fecha_ingreso;
          document.getElementById("fechaSalida").value = m.fecha_salida || "";
          document.getElementById("tallerInput").value = m.taller;
          document.getElementById("costoInput").value = m.costo_estimado || "";
          document.getElementById("descInput").value =
            m.descripcion_trabajo || "";
          document.getElementById("proximoKm").value = m.proximo_km || "";
          document.getElementById("proximoFecha").value = m.proximo_fecha || "";
          new bootstrap.Modal(
            document.getElementById("maintenanceModal")
          ).show();
        }
      })
      .catch((err) =>
        console.error("Error al cargar mantenimiento para editar:", err)
      );
  };

  // 📤 Exportar CSV
  document.getElementById("exportCsv").addEventListener("click", () => {
    let rows = [
      [
        "Unidad",
        "Tipo",
        "Ingreso",
        "Salida",
        "Km",
        "Taller",
        "Estatus",
        "Costo",
      ],
    ];
    maintTableBody.querySelectorAll("tr").forEach((tr) => {
      const cols = Array.from(tr.querySelectorAll("td"))
        .slice(0, 8)
        .map((td) => td.textContent);
      rows.push(cols);
    });
    const csv = rows
      .map((r) => r.map((c) => `"${c.replace(/"/g, '""')}"`).join(","))
      .join("\n");
    const blob = new Blob([csv], { type: "text/csv" });
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = "mantenimientos.csv";
    a.click();
  });
});
