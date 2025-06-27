<div class="contenedorsolicitudemo">
    <div class="row">
        <!------------------------------------------------------------------------ sedes de la unidad --------------------------------------------------------------------->
        <?php
        include("../../Servidor/conexion.php");

        // Realizar la consulta para obtener las sedes
        $sql = "SELECT id_sede, ubicacion FROM sedes";
        $result = $conectar->query($sql);
        // Verificar si hay resultados
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="sederecolecciondemo" placeholder="sederecolecciondemo" name="sederecoleccionunidades">
                    <option value="">Seleccionar</option>'; // Opción predeterminada

            while ($row = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                echo '<option value="' . $row['id_sede'] . '">' . $row['ubicacion'] . '</option>';
            }

            echo '</select>
            <label for="colorunidadldr">Ubicación de recolección</label>
        </div>
        <label class="" style="sederecoleccionldr: white;"> </label>
    </div>';
        } else {
            echo "No hay marcas disponibles.";
        }

        $conectar->close();
        ?>
        <div class="col-md-6">
            <div class="form-floating">
                <input type="date" class="form-control" id="fechasolicitudunidademo" name="fechasolicitudunidademo" placeholder="fechasolicitudunidademo">
                <label for="fechasolicitudunidademo">Fecha de solicitud</label>
            </div>
            <label class="" style="color: white;"> </label>
        </div>
    </div>

    <div class="row">
        <!------------------------------------------------------------------------ SEDES DE ENTREGA --------------------------------------------------------------------->
        <?php
        include("../../Servidor/conexion.php");

        // Realizar la consulta para obtener las sedes
        $sql = "SELECT id_sede, ubicacion FROM sedes";
        $result = $conectar->query($sql);
        // Verificar si hay resultados
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="sededevolucionunidademo" placeholder="sededevolucionunidademo" name="colorunidades">
                    <option value="">Seleccionar</option>'; // Opción predeterminada

            while ($row = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                echo '<option value="' . $row['id_sede'] . '">' . $row['ubicacion'] . '</option>';
            }

            echo '</select>
            <label for="sededevolucionunidademodr">Ubicación de devolución</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
        } else {
            echo "No hay marcas disponibles.";
        }

        $conectar->close();
        ?>
        <div class="col-md-6">
            <div class="form-floating">
                <input type="date" class="form-control" id="fechadevolucionunidademo" name="fechadevolucionunidademo" placeholder="fechadevolucionunidademo">
                <label for="fechadevolucionunidademo">Fecha de devolución</label>
            </div>
            <label class="" style="color: white;"> </label>
        </div>

    </div>
    <!-- Botón para abrir filtros avanzados en panel lateral -->
    <div class="d-flex justify-content-start mb-3">
        <button class="btn btn-outline-secondary me-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasFiltros" aria-controls="offcanvasFiltros">
            Mostrar filtros avanzados
        </button>
    <!--boton para limpiar los campos principales-->
        <button class="btn btn-outline-danger me-3 fas fa-trash-alt" type="button" onclick="limpiarCamposPrincipales()">
        </button>
        <!-- Botón para verificar por fuera -->
        <button class="btn btn-verificar" id="btnsolicitudunidademo">Verificar unidades</button>
    </div>

    <!-- Panel lateral de filtros -->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasFiltros" aria-labelledby="offcanvasFiltrosLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasFiltrosLabel">Filtros avanzados</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Cerrar"></button>
      </div>
      <div class="offcanvas-body">
        <div class="row g-3">
            <!-- -----------------------------------------------------------Aquí pegas todos los campos desde capacidad_carga hasta sensores de reversa -->
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

            <!-- Extras tecnológicos -->
            <div class="col-md-6">

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="camara_reversa" id="camara_reversa" value="1">
                    <label class="form-check-label" for="camara_reversa">Cámara de reversa</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="sensores_reversa" id="sensores_reversa" value="1">
                    <label class="form-check-label" for="sensores_reversa">Sensores de reversa</label>
                </div>
            </div>

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
    document.getElementById('sederecolecciondemo').selectedIndex = 0;
    document.getElementById('fechasolicitudunidademo').value = '';
    document.getElementById('sededevolucionunidademo').selectedIndex = 0;
    document.getElementById('fechadevolucionunidademo').value = '';
}
</script>
