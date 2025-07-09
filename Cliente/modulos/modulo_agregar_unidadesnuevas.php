<!----------------------------------------------Lineas de codigo para obtener al usuario que esta haciendo el alta de la unidad------------------------->
<?php
include("../../Servidor/conexion.php");

//obtenemos los datos del colaborador para saber quien es el que agrega la unidad
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$id_usuario = $resultado->fetch_assoc()['id_usuario'];

// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$id_tipo_usuario = $resultado->fetch_assoc()['id_tipo_usuario'];
?>

<!--------------------------------------------------------------inicio de contenedor para dar de alta las unidades--------------------------------------->

<div class="contenedoropcionesunidades">
    <?php if ($id_tipo_usuario == 1): // Administrador 
    ?>
        <h2 class="titulosletrasunidades text-nowrap">Registra nuevas unidades</h2>
    <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS 
    ?>
        <h2 class="titulosletrasunidades text-nowrap">Registra nuevas unidades demo</h2>
    <?php endif; ?>
    <div class="contenedorformularioregistrounidades">
        <div class="row contenedormarcmodelo">
            <h2 class="tituloletraunidadmarmodel text-nowrap">Marca y modelo</h2>
            <!-- Marca -->
            <div class="col-md-6">
                <div class="form-floating">
                    <select class="form-control" id="marcaunidad" name="marcaunidades">
                        <option value="">Seleccionar</option>
                        <?php
                        include("../../Servidor/conexion.php");
                        $sql = "SELECT id_marca, nombre_marca FROM marcas";
                        $result = $conectar->query($sql);
                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="' . $row['id_marca'] . '">' . $row['nombre_marca'] . '</option>';
                        }
                        $conectar->close();
                        ?>
                    </select>
                    <label for="marcaunidad">Marca</label>
                </div>
                    <label for="marcaunidad"></label>

            </div>

            <!-- Modelo (vacío inicialmente) -->
            <div class="col-md-6">
                <div class="form-floating">
                    <select class="form-control" id="modelounidad" name="modelounidades">
                        <option value="">Seleccionar</option>
                    </select>
                    <label for="modelounidad">Modelo</label>
                </div>
            </div>

            <script>
                document.getElementById('marcaunidad').addEventListener('change', function() {
                    const marcaId = this.value;

                    fetch('../../Servidor/solicitudes/unidades/obtener_modelos.php?marca_id=' + marcaId)
                        .then(response => response.json())
                        .then(data => {
                            const modeloSelect = document.getElementById('modelounidad');
                            modeloSelect.innerHTML = '<option value="">Seleccionar</option>'; // limpia anteriores

                            data.forEach(modelo => {
                                const option = document.createElement('option');
                                option.value = modelo.id_modelo;
                                option.text = modelo.nombre_modelo;
                                modeloSelect.appendChild(option);
                            });
                        })
                        .catch(error => {
                            console.error('Error al cargar modelos:', error);
                        });
                });
            </script>

        </div>
        <div class="row contenedormarcmodelo" style="padding-top: 40px;">
            <h2 class="tituloletraunidadmarmodel text-nowrap">Datos generales</h2>
            <!---------------------------------------------------------------- costo neto ---------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="number" class="form-control" id="tarjetacirculacionunidad" placeholder="tarjetacirculacionunidad" name="tarjetacirculacionunidades" oninput="document.getElementById('costoNetoLabel').innerText = this.value ? parseFloat(this.value).toLocaleString('es-MX', { style: 'currency', currency: 'MXN' }) + ' MXN' : '';">
                    <label for="tarjetacirculacionunidadesldr">Costo neto</label>
                </div>
                <label id="costoNetoLabel" style="color: black;"></label>
            </div>
            <!------------------------------------------------------------------------ color --------------------------------------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener las marcas
            $sql = "SELECT id_color, color_unidad FROM unidad_color";
            $result = $conectar->query($sql);
            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="colorunidad" placeholder="colorunidad" name="colorunidades">
                    <option value="">Seleccionar</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada marca como una opción
                    echo '<option value="' . $row['id_color'] . '">' . $row['color_unidad'] . '</option>';
                }

                echo '</select>
            <label for="colorunidadldr">Color</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
            } else {
                echo "No hay marcas disponibles.";
            }

            $conectar->close();
            ?>

            <!------------------------------------------------------------------------ Placa ---------------------------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control" id="placaunidad" placeholder="placaunidad" name="placaunidades">
                    <label for="placaunidadldr">Placa</label>
                </div>
                <label class="" style="color: white;"> </label>
            </div>
            <!------------------------------------------------------------------------ VIN ----------------------------------------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control" id="VIN" placeholder="VIN" name="VINunidades">
                    <label for="vinunidadldr">VIN</label>
                </div>
                <label class="" style="color: white;"> </label>
            </div>

            <!---------------------------------------------------------------- Numero de motor ---------------------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control" id="motorunidad" placeholder="motorunidad" name="motorunidades">
                    <label for="motorunidadesldr">Número de motor</label>
                </div>
                <label class="" style="color: white;"> </label>
            </div>
            <!---------------------------------------------------------------- Año unidad ---------------------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="number" class="form-control" id="añounidad" placeholder="añounidad" name="añounidades">
                    <label for="motorunidadesldr">Año de la unidad</label>
                </div>
                <label class="" style="color: white;"> </label>
            </div>
        </div>
        <div class="row contenedormarcmodelo" style="padding-top: 40px;">
            <h2 class="tituloletraunidadmarmodel text-nowrap">Estado y estatus</h2>
            <!---------------------------------------------------------------- Estado unidad ---------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_estado_unidad, estado FROM estado_unidad";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="estadounidad" placeholder="estadounidad" name="estadounidades">
                    <option value="">Seleccione un estado</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada estado como una opción
                    echo '<option value="' . $row['id_estado_unidad'] . '">' . $row['estado'] . '</option>';
                }

                echo '</select>
            <label for="estadounidadldr">Estado de la unidad</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
            } else {
                echo "No hay estados disponibles.";
            }
            $conexion->close();
            ?>


            <!---------------------------------------------------------------- Estatus de unidad ---------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_estatus_unidad, estatus FROM estatus_unidades";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="estatusunidad" placeholder="estatusunidad" name="estatusunidades">
                    <option value="">Seleccione un estatus</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada estado como una opción
                    echo '<option value="' . $row['id_estatus_unidad'] . '">' . $row['estatus'] . '</option>';
                }

                echo '</select>
            <label for="estatusunidadldr">Estatus de la unidad</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
            } else {
                echo "No hay estados disponibles.";
            }
            $conexion->close();
            ?>
            <!---------------------------------------------------------------- Tipo de unidad ------------------------------------------------------->
            <?php
            include("../../Servidor/conexion.php");
            if ($id_tipo_usuario == 1): // Administrador 
                // Realizar la consulta para obtener los estados de la unidad
                $sql = "SELECT id_tipo_unidad, tipo_unidad FROM tipo_unidad WHERE id_tipo_unidad != 3";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    // Recorrer los resultados y mostrar las opciones
                    echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="tipounidad" placeholder="tipounidad" name="tipounidades">
                    <option value="">Seleccione el tipo de unidad</option>'; // Opción predeterminada

                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada estado como una opción
                        echo '<option value="' . $row['id_tipo_unidad'] . '">' . $row['tipo_unidad'] . '</option>';
                    }

                    echo '</select>
            <label for="tipounidadldr">Tipo de unidad</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
                } else {
                    echo "No hay estados disponibles.";
                }
                $conexion->close();

            elseif ($id_tipo_usuario == 4): // Administrador DEMOS
                // Realizar la consulta para obtener los estados de la unidad
                $sql = "SELECT id_tipo_unidad, tipo_unidad FROM tipo_unidad WHERE id_tipo_unidad = 3";
                $result = $conexion->query($sql);

                // Verificar si hay resultados
                if ($result->num_rows > 0) {
                    // Recorrer los resultados y mostrar las opciones
                    echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="tipounidad" placeholder="tipounidad" name="tipounidades">
                    <option value="">Seleccione el tipo de unidad</option>'; // Opción predeterminada

                    while ($row = $result->fetch_assoc()) {
                        // Mostrar cada estado como una opción
                        echo '<option value="' . $row['id_tipo_unidad'] . '">' . $row['tipo_unidad'] . '</option>';
                    }

                    echo '</select>
            <label for="tipounidadldr">Tipo de unidad</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
                } else {
                    echo "No hay estados disponibles.";
                }
                $conexion->close();
            endif;
            ?>
            <!---------------------------------------------------------------- folio factura ---------------------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="number" class="form-control" id="foliofactura" placeholder="foliofactura" name="foliofacturaunidades">
                    <label for="motorunidadesldr">Folio de factura</label>
                </div>
                <label class="" style="color: white;"> </label>
            </div>
        </div>
        <div class="row contenedormarcmodelo" style="padding-top: 20px;">
            <h2 class="tituloletraunidadmarmodel text-nowrap">Ubicación y adquisición</h2>
            <!---------------------------------------------------------------- Sede ------------------------------------------------------>
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener las marcas
            $sql = "SELECT id_sede, ubicacion FROM sedes";
            $result = $conectar->query($sql);
            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-6">
            <div class="form-floating">
                <select class="form-control" id="sedeunidad" placeholder="sedeunidad" name="sedeunidades">
                    <option value="">Seleccione la sede</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada marca como una opción
                    echo '<option value="' . $row['id_sede'] . '">' . $row['ubicacion'] . '</option>';
                }

                echo '</select>
            <label for="sedeunidadldr">Sedes</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
            } else {
                echo "No hay sedes disponibles.";
            }

            $conectar->close();
            ?>
            <!---------------------------------------------------------------- Fecha de adquisicion ---------------------------------------->
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="date" class="form-control" id="fechaadquisicionunidad" placeholder="fechaadquisicionunidad" name="fechaadquisicionunidades">
                    <label for="fechaadquisicionunidadldr">Fecha de adquisición</label>
                </div>
                <label class="" style="color: white;"> </label>
            </div>
            <!---------------------------------------------------------------- Tipo de adquisición -------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_tipo_adquisicion, nombre_tipo_adquisicion FROM tipo_adquisicion";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-6">
        <div class="form-floating">
            <select class="form-control" id="tipoadquisicionunidad" placeholder="tipoadquisicionunidad" name="tipoadquisicionunidades" onchange="mostrarCampoAdicional()">
                <option value="">Seleccione el tipo de adquisicion</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_adquisicion'] . '">' . $row['nombre_tipo_adquisicion'] . '</option>';
                }

                echo '</select>
        <label for="tipounidadldr">Tipo de adquisición</label>
    </div>
    <label class="" style="color: white;"> </label>
</div>';
            } else {
                echo "No hay tipos de adquisicion disponibles.";
            }
            $conexion->close();
            ?>

            <!---------------------------------------------------------------- arrendadora---------------------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_arrendadora, arrendadora FROM arrendadora";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-6">
        <div class="form-floating">
            <select class="form-control" id="arrendadora" placeholder="arrendadora" name="arrendadoraes" onchange="mostrarCampoAdicional()">
                <option value="">Seleccione la arrendadora</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_arrendadora'] . '">' . $row['arrendadora'] . '</option>';
                }

                echo '</select>
        <label for="tipounidadldr">Arrendadoras</label>
    </div>
    <label class="" style="color: white;"> </label>
</div>';
            } else {
                echo "No hay tipos de adquisicion disponibles.";
            }
            $conexion->close();
            ?>
            <!---------------------------------------------------------------- caracteisticas funcionales de la unidad---------------------------------------------------->
            <?php if ($id_tipo_usuario == 4): ?>
                <div class="row contenedormarcmodelo" style="padding-top: 30px;">
                    <h2 class="tituloletraunidadmarmodel text-nowrap">Características funcionales</h2>

                    <!-- Capacidad de carga -->
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="number" class="form-control" id="capacidad_carga" name="capacidad_carga" placeholder="Capacidad de carga (kg)">
                            <label for="capacidad_carga">Capacidad de carga (kg)</label>
                        </div>
                        <label class="" style="color: white;"> </label>
                    </div>

                    <!-- Capacidad de pasajeros -->
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="number" class="form-control" id="capacidad_pasajeros" name="capacidad_pasajeros" placeholder="Capacidad de pasajeros">
                            <label for="capacidad_pasajeros">Capacidad de pasajeros</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                                <option value="">Selecciona...</option>';
                                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_combustible'] . '">' . $row['combustible'] . '</option>';
                }
                            echo '</select>
                            <label for="tipo_combustible">Tipo de combustible</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                                <option value="">Selecciona...</option>';
                                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_traccion'] . '">' . $row['traccion'] . '</option>';
                                }
                            echo '</select>
                            <label for="traccion">Tracción</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                            <label for="tipo_carroceria">Tipo de carrocería</label>
                        </div>
                        <label class="" style="color: white;"> </label>
                    </div>

                    <!-- Número de puertas -->
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="number" class="form-control" id="numero_puertas" name="numero_puertas" placeholder="Número de puertas">
                            <label for="numero_puertas">Número de puertas</label>
                        </div>
                        <label class="" style="color: white;"> </label>
                    </div>

                    <!-- Número de asientos -->
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="number" class="form-control" id="numero_asientos" name="numero_asientos" placeholder="Número de puertas">
                            <label for="numero_asientos">Número de asientos</label>
                        </div>
                        <label class="" style="color: white;"> </label>
                    </div>
                    <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los tipos de cajas
            $sql = "SELECT id_tipo_caja , tipo_caja FROM tipos_cajas";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                    //-- Caja -->
                    echo'<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="tipo_caja" name="tipo_caja">
                                <option value="">Selecciona...</option>';
                                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_caja'] . '">' . $row['tipo_caja'] . '</option>';
                                }
                            echo'</select>
                            <label for="tipo_caja">Tipo de caja</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                                <option value="">Selecciona...</option>';
                                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_freno'] . '">' . $row['tipo_freno'] . '</option>';
                                }
                            echo'</select>
                            <label for="tipo_frenos">Tipo de frenos</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                    echo'<div class="col-md-6">
                        <div class="form-floating">
                            <select class="form-select" id="suspension" name="suspension">
                                <option value="">Selecciona...</option>';
                                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_suspencion'] . '">' . $row['tipo_suspencion'] . '</option>';
                                }
                            echo '</select>
                            <label for="suspension">Suspensión</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                            <label for="numero_ejes">Número de ejes</label>
                        </div>
                        <label class="" style="color: white;"> </label>
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
                                <option value="">Selecciona...</option>';
                                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_uso'] . '">' . $row['tipo_uso'] . '</option>';
                                }
                            echo'</select>
                            <label for="uso_permitido">Uso permitido</label>
                        </div>
                        <label class="" style="color: white;"> </label>
                    </div>';} else {
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

                </div>
            <?php endif; ?>
        </div>
        <div class="row contenedormarcmodelo" style="padding-top: 30px;">
                <h2 class="tituloletraunidadmarmodel text-nowrap">Imagen de la unidad</h2>
                <!---------------------------------------------------------------- Subir imagen de la unidad ---------------------------------------->
                <div class="col-md-6">
                    <div class="form-floating">
                        <div class="form-label">
                            <input type="file" class="form-control" id="imagen_unidad" name="imagen_unidad" accept="image/*">
                            <label class="input-group-text" for="imagen_unidad">
                                <i class="fas fa-upload"></i> Cargar Imagen
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding-top: 30px;">
                <!-- Botón de envío -->
                <div class="col-md-4">

                </div>

                <!-- Botón de envío -->
                <div class="col-md-4">
                    <button class="btn btn-primary w-100" id="btnregistrarunidad" style="border-radius: 13px;">Registrar Unidad</button>
                </div>
            </div>
            </div>
    </div>
</div>

<script src="../js/unidades/agregar_nuevas_unidades.js"></script>