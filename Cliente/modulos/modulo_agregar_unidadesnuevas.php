<div class="contenedoropcionesunidades">
    <h2 class="titulosletrasunidades text-nowrap">Registra nuevas unidades</h2>
    <div class="contenedorformularioregistrounidades">
        <div class="row">
            <!-- ------------------------------------------------------------------------Marca ------------------------------------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener las marcas
            $sql = "SELECT id_marca, nombre_marca FROM marcas";
            $result = $conectar->query($sql);
            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="marcaunidad" placeholder="marcaunidad" name="marcaunidades">
                    <option value="">Seleccione una marca</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada marca como una opción
                    echo '<option value="' . $row['id_marca'] . '">' . $row['nombre_marca'] . '</option>';
                }

                echo '</select>
            <label for="marcaunidadldr">Marca</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
            } else {
                echo "No hay marcas disponibles.";
            }

            $conectar->close();
            ?>

            <!------------------------------------------------------------------------ Modelo --------------------------------------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener las marcas
            $sql = "SELECT id_modelo, nombre_modelo FROM modelos";
            $result = $conectar->query($sql);
            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="modelounidad" placeholder="modelounidad" name="modelounidades">
                    <option value="">Seleccione un modelo</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada marca como una opción
                    echo '<option value="' . $row['id_modelo'] . '">' . $row['nombre_modelo'] . '</option>';
                }

                echo '</select>
            <label for="modelounidadldr">Modelo</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
            } else {
                echo "No hay marcas disponibles.";
            }

            $conectar->close();
            ?>
            <!------------------------------------------------------------------------ VIN ----------------------------------------------------------------------->
            <div class="col-md-4">
                <div class="form-floating">
                    <input type="text" class="form-control" id="VIN" placeholder="VIN" name="VINunidades">
                    <label for="vinunidadldr">VIN</label>
                </div>
                <label class="" style="color: white;">*Campo obligatorio</label>
            </div>
        </div>
        <div class="row" style="padding-top: 20px;">
            <!------------------------------------------------------------------------ Placa ---------------------------------------------------------->
            <div class="col-md-4">
                <div class="form-floating">
                    <input type="text" class="form-control" id="placaunidad" placeholder="placaunidad" name="placaunidades">
                    <label for="placaunidadldr">Placa</label>
                </div>
                <label class="" style="color: white;">*Campo obligatorio</label>
            </div>
            <!---------------------------------------------------------------- Kilometraje ------------------------------------------------------>
            <div class="col-md-4">
                <div class="form-floating">
                    <input type="number" class="form-control" id="kilometrajeunidad" placeholder="kilometrajeunidad" name="kilometrajeunidades">
                    <label for="kilometrajeunidadldr">Kilometraje</label>
                </div>
                <label class="" style="color: white;">*Campo obligatorio</label>
            </div>
            <!---------------------------------------------------------------- Color ---------------------------------------------------->
            <div class="col-md-4">
                <div class="form-floating">
                    <input type="text" class="form-control" id="colorunidad" placeholder="colorunidad" name="colorunidades">
                    <label for="colorunidadesldr">Color</label>
                </div>
                <label class="" style="color: white;">*Campo obligatorio</label>
            </div>
        </div>
        <div class="row" style="padding-top: 20px;">
            <!---------------------------------------------------------------- Tarjeta de circulacion ---------------------------------------->
            <div class="col-md-4">
                <div class="form-floating">
                    <input type="text" class="form-control" id="tarjetacirculacionunidad" placeholder="tarjetacirculacionunidad" name="tarjetacirculacionunidades">
                    <label for="tarjetacirculacionunidadesldr">Tarjeta de circulación</label>
                </div>
                <label class="" style="color: white;">*Campo obligatorio</label>
            </div>
            <!---------------------------------------------------------------- Estado unidad ---------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_estado_unidad, estado FROM estado_unidad";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-4">
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
        <label class="" style="color: white;">*Campo obligatorio</label>
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
                echo '<div class="col-md-4">
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
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
            } else {
                echo "No hay estados disponibles.";
            }
            $conexion->close();
            ?>
        </div>
        <div class="row" style="padding-top: 20px;">
            <!---------------------------------------------------------------- Tipo de unidad ------------------------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_tipo_unidad, tipo_unidad FROM tipo_unidad";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-4">
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
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
            } else {
                echo "No hay estados disponibles.";
            }
            $conexion->close();
            ?>
            <!---------------------------------------------------------------- Sede ------------------------------------------------------>
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener las marcas
            $sql = "SELECT id_sede, ubicacion FROM sedes";
            $result = $conectar->query($sql);
            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-4">
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
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
            } else {
                echo "No hay sedes disponibles.";
            }

            $conectar->close();
            ?>
            <!---------------------------------------------------------------- Fecha de adquisicion ---------------------------------------->
            <div class="col-md-4">
                <div class="form-floating">
                    <input type="date" class="form-control" id="fechaadquisicionunidad" placeholder="fechaadquisicionunidad" name="fechaadquisicionunidades">
                    <label for="fechaadquisicionunidadldr">Fecha de adquisicion</label>
                </div>
                <label class="" style="color: white;">*Campo obligatorio</label>
            </div>
        </div>
        <div class="row" style="padding-top: 20px;">
            <!---------------------------------------------------------------- Tipo de adquisición -------------------------------------->
            <?php
            include("../../Servidor/conexion.php");

            // Realizar la consulta para obtener los estados de la unidad
            $sql = "SELECT id_tipo_adquisicion, nombre_tipo_adquisicion FROM tipo_adquisicion";
            $result = $conexion->query($sql);

            // Verificar si hay resultados
            if ($result->num_rows > 0) {
                // Recorrer los resultados y mostrar las opciones
                echo '<div class="col-md-4">
        <div class="form-floating">
            <select class="form-control" id="tipoadquisicionunidad" placeholder="tipoadquisicionunidad" name="tipoadquisicionunidades" onchange="mostrarCampoAdicional()">
                <option value="">Seleccione el tipo de adquisicion</option>'; // Opción predeterminada

                while ($row = $result->fetch_assoc()) {
                    // Mostrar cada tipo de adquisicion como una opción
                    echo '<option value="' . $row['id_tipo_adquisicion'] . '">' . $row['nombre_tipo_adquisicion'] . '</option>';
                }

                echo '</select>
        <label for="tipounidadldr">Tipo de adquisicion</label>
    </div>
    <label class="" style="color: white;">*Campo obligatorio</label>
</div>';
            } else {
                echo "No hay tipos de adquisicion disponibles.";
            }
            $conexion->close();
            ?>



            <!-- Campo adicional para Compra Directa -->
            <div class="col-md-4" id="campoCompraDirecta" style="display: none;">
                <div class="form-floating">
                    <input type="text" class="form-control" id="detalleadquisicion" name="detalleadquisicion" placeholder="Ingrese detalles de la compra">
                    <label for="detalleAdquisicion">Detalles de la adquisicion</label>
                </div>
            </div>

            <script>
                function mostrarCampoAdicional() {
                    // Obtener el valor seleccionado en el select
                    var seleccion = document.getElementById("tipoadquisicionunidad").value;

                    // Mostrar el campo correspondiente según la selección
                    if (seleccion === "1") { // Compra directa
                        document.getElementById("campoCompraDirecta").style.display = "block";
                    } else if (seleccion === "2") { // Arrendamiento
                        document.getElementById("campoCompraDirecta").style.display = "block";
                    } else {
                        document.getElementById("campoCompraDirecta").style.display = "none";
                    }
                }
            </script>
            <!---------------------------------------------------------------- Subir imagen de la unidad ---------------------------------------->
            <div class="col-md-4">
                <div class="form-floating">
                    <div class="form-label">
                        <input type="file" class="form-control" id="imagen_unidad" name="imagen_unidad" accept="image/*">
                        <label class="input-group-text" for="imagen_unidad">
                            <i class="fas fa-upload"></i> Cargar Imagen
                        </label>
                    </div>
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