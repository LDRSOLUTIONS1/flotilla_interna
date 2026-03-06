<div class="">
    <div class="container mt-4">

    <!-- PANEL DE SOLICITUD DE UNIDADES -->
    <div class="panel-acciones-final p-4 mb-4">

        <!-- Título del panel -->
        <p class="panel-texto fw-bold mb-3">
            🔹 Complete las fechas y acciones para verificar unidades disponibles
        </p>

        <!-- Formulario de fechas -->
        <div class="row g-3 align-items-end mb-3">
            <!-- Fecha de solicitud -->
            <div class="col-md-6">
                <label for="fechasolicitudunidademo" class="form-label fw-bold">Fecha de solicitud</label>
                <input type="date" class="form-control" id="fechasolicitudunidademo" name="fechasolicitudunidademo" placeholder="Fecha de solicitud">
            </div>

            <!-- Fecha de devolución -->
            <div class="col-md-6">
                <label for="fechadevolucionunidademo" class="form-label fw-bold">Fecha de devolución</label>
                <input type="date" class="form-control" id="fechadevolucionunidademo" name="fechadevolucionunidademo" placeholder="Fecha de devolución">
            </div>
        </div>

        <!-- Barra de acciones -->
        <div class="d-flex flex-wrap align-items-center gap-2 mb-3">
            <!-- Botón filtros avanzados -->
            <button class="btn btn-outline-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasFiltros" aria-controls="offcanvasFiltros">
                Mostrar filtros avanzados
            </button>

            <!-- Botón verificar unidades -->
            <button class="btn btn-success" id="btnsolicitudunidademo">Verificar unidades</button>

            <!-- Botón limpiar campos -->
            <button class="btn btn-outline-danger" type="button" onclick="limpiarCamposPrincipales()">
                <i class="fas fa-trash-alt"></i>
            </button>

            <!-- Input de búsqueda -->
            <input type="text" class="form-control flex-grow-1 ms-2" id="busqueda_global" name="busqueda_global" placeholder="Buscar unidad">
        </div>

    </div>
</div>


    <!-- Panel lateral de filtros -->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasFiltros" aria-labelledby="offcanvasFiltrosLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasFiltrosLabel">Filtros avanzados</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Cerrar"></button>
        </div>
        <div class="offcanvas-body" style="box-shadow: 0 6px 16px rgba(90, 139, 231, 0.767);">
            <div class="row g-3">
                <!-- -----------------------------------------------------------Aquí pegas todos los campos desde capacidad_carga hasta sensores de reversa -->
                <!-- Modelos de las unidades para filtrar-->
                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de combustibles
                $sql = "SELECT id_modelo, nombre_modelo FROM modelos left join marcas on modelos.id_marca = marcas.id_marca where marcas.id_marca = 1";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    // Tipo de combustible -->
                    echo '<div class="col-md-12">
                        <div class="form-floating">
                            <select class="form-select" id="nombre_modelo" name="nombre_modelo">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_modelo'] . '">' . $row['nombre_modelo'] . '</option>';
                    }
                    echo '</select>
                            <label for="nombre_modelo" style="font-size: 1.0rem;">Unidad modelo</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>
                <!-- Capacidad de carga -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="number" class="form-control" id="capacidad_carga" name="capacidad_carga" placeholder="Capacidad de carga (kg)">
                        <label for="capacidad_carga" style="font-size: 0.8rem;">Capacidad de carga (kg)</label>
                    </div>
                </div>

                <!-- Capacidad de pasajeros -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="number" class="form-control" id="capacidad_pasajeros" name="capacidad_pasajeros" placeholder="Capacidad de pasajeros">
                        <label for="capacidad_pasajeros" style="font-size: 0.8rem;">Capacidad de pasajeros</label>
                    </div>
                </div>

                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de combustibles
                $sql = "SELECT id_tipo_combustible, combustible FROM tipos_combustibles";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    // Tipo de combustible -->
                    echo '<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="tipo_combustible" name="tipo_combustible">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_tipo_combustible'] . '">' . $row['combustible'] . '</option>';
                    }
                    echo '</select>
                            <label for="tipo_combustible" style="font-size: 0.9rem;">Tipo de combustible</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>
                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de combustibles
                $sql = "SELECT id_traccion, traccion FROM tracciones";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    // Tracción -->
                    echo '<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="traccion" name="traccion">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_traccion'] . '">' . $row['traccion'] . '</option>';
                    }
                    echo '</select>
                            <label for="traccion" style="font-size: 0.9rem;">Tracción unidad</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>

                <!-- Tipo de carrocería -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="tipo_carroceria" name="tipo_carroceria" placeholder="Tipo de carrocería">
                        <label for="tipo_carroceria" style="font-size: 0.8rem;">Tipo de carrocería</label>
                    </div>
                </div>

                <!-- Número de puertas -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="number" class="form-control" id="numero_puertas" name="numero_puertas" placeholder="Número de puertas">
                        <label for="numero_puertas" style="font-size: 0.8rem;">Número de puertas</label>
                    </div>
                </div>

                <!-- Número de asientos -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="number" class="form-control" id="numero_asientos" name="numero_asientos" placeholder="Número de puertas">
                        <label for="numero_asientos" style="font-size: 0.8rem;">Número de asientos</label>
                    </div>
                </div>
                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de cajas
                $sql = "SELECT id_tipo_caja , tipo_caja FROM tipos_cajas";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    //-- Caja -->
                    echo '<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="tipo_caja" name="tipo_caja">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_tipo_caja'] . '">' . $row['tipo_caja'] . '</option>';
                    }
                    echo '</select>
                            <label for="tipo_caja" style="font-size: 1.0rem;">Tipo de caja</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>

                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de frenos
                $sql = "SELECT id_tipo_freno , tipo_freno FROM tipos_frenos";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    //-- Tipo de frenos -->
                    echo '<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="tipo_frenos" name="tipo_frenos">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_tipo_freno'] . '">' . $row['tipo_freno'] . '</option>';
                    }
                    echo '</select>
                            <label for="tipo_frenos" style="font-size: 0.9rem;">Tipo de frenos</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>

                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de suspenciones
                $sql = "SELECT id_tipo_suspencion , tipo_suspencion FROM tipos_suspenciones";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    //-- Suspensión -->
                    echo '<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="suspension" name="suspension">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_tipo_suspencion'] . '">' . $row['tipo_suspencion'] . '</option>';
                    }
                    echo '</select>
                            <label for="suspension" style="font-size: 0.9rem;">Suspensión</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>

                <!-- Número de ejes -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="number" class="form-control" id="numero_ejes" name="numero_ejes" placeholder="Número de ejes">
                        <label for="numero_ejes" style="font-size: 0.8rem;">Número de ejes</label>
                    </div>
                </div>

                <?php
                include("../../Servidor/conexion.php");

                // Realizar la consulta para obtener los tipos de usos
                $sql = "SELECT id_tipo_uso , tipo_uso FROM tipos_usos";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    //-- Uso permitido -->
                    echo '<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="uso_permitido" name="uso_permitido">
                                <option value=""></option>';
                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada tipo de adquisicion como una opción
                        echo '<option value="' . $row['id_tipo_uso'] . '">' . $row['tipo_uso'] . '</option>';
                    }
                    echo '</select>
                            <label for="uso_permitido" style="font-size: 0.9rem;">Uso permitido</label>
                        </div>
                    </div>';
                } else {
                    echo "No hay tipos de adquisicion disponibles.";
                }
                $conexion->close();
                ?>

                <!-- Último campo: aplicar filtros -->
                <div class="col-md-12">
                    <button class="btn btn-primary w-100" type="button" onclick="aplicarFiltros()">Aplicar filtros y verificar</button>
                </div>
                <button class="btn btn-outline-danger" type="button" onclick="limpiarFiltrosAvanzados()">
                    Limpiar filtros
                </button>
            </div>
        </div>
    </div>
</div>

<!-- JS para activar boton desde el panel lateral -->
<script>
    function aplicarFiltros() {
        const btnVerificar = document.getElementById("btnsolicitudunidademo");
        if (btnVerificar) btnVerificar.click();
        const offcanvas = bootstrap.Offcanvas.getInstance(document.getElementById('offcanvasFiltros'));
        if (offcanvas) offcanvas.hide();
    }

    function limpiarFiltrosAvanzados() {
        const container = document.getElementById('offcanvasFiltros');
        const inputs = container.querySelectorAll('input');
        const selects = container.querySelectorAll('select');

        inputs.forEach(input => {
            if (input.type === 'checkbox' || input.type === 'radio') {
                input.checked = false;
            } else {
                input.value = '';
            }
        });

        selects.forEach(select => {
            select.selectedIndex = 0;
        });
    }

    function limpiarCamposPrincipales() {
        document.getElementById('fechasolicitudunidademo').value = '';
        document.getElementById('fechadevolucionunidademo').value = '';
    }

    //----------------------------------funcion para bloquear los dias del input date
    const fechaInputSolicitud = document.getElementById('fechasolicitudunidademo');
    const fechaInputDevolucion = document.getElementById('fechadevolucionunidademo');

    // Establecer fecha mínima como hoy
    const hoy = new Date();
    const yyyy = hoy.getFullYear();
    const mm = String(hoy.getMonth() + 1).padStart(2, '0'); // Mes en formato 2 dígitos
    const dd = String(hoy.getDate()).padStart(2, '0'); // Día en formato 2 dígitos
    fechaInputSolicitud.min = `${yyyy}-${mm}-${dd}`;
    fechaInputDevolucion.min = `${yyyy}-${mm}-${dd}`;


    // Evitar sábados y domingos
    fechaInputSolicitud.addEventListener('input', function() {
        const fechaSeleccionada = new Date(this.value);
        const diaSemana = fechaSeleccionada.getDay(); // 0=Domingo, 6=Sábado
        if (diaSemana === 5 || diaSemana === 6) {
            Swal.fire({
                icon: 'warning',
                title: 'No se pueden seleccionar sábados o domingos',
                text: 'Por favor, seleccione otro día',
            });
            this.value = ''; // Limpia la selección
        }
    });
    // Evitar sábados y domingos en devolución también
    fechaInputDevolucion.addEventListener('input', function() {
        const fechaSeleccionada = new Date(this.value);
        const diaSemana = fechaSeleccionada.getDay();
        if (diaSemana === 5 || diaSemana === 6) {
            Swal.fire({
                icon: 'warning',
                title: 'No se pueden seleccionar sábados o domingos',
                text: 'Por favor, seleccione otro día',
            });
            this.value = '';
        }
    });


    // Bloquear los días seleccionados en el input de solicitud en el input de devolución
    fechaInputSolicitud.addEventListener('change', function() {
        const fechaSeleccionada = new Date(this.value);
        fechaInputDevolucion.min = this.value;
    });
</script>