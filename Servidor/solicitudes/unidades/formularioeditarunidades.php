<div class="row">
    <!--------------------------------------------------Edicion de unidades---------------------------------------------------->
    <?php
    include("../../conexion.php");

    if (isset($_POST['idunidad'])) {
        $idunidad = $_POST['idunidad'];

        //vamos a obtener los valores de la unidad modelos y marcas
        $queryobtenerunidad = "SELECT u.id_unidad,
                                u.id_modelo,
                                u.id_estado_unidad,
                                u.id_estatus_unidad,
                                u.id_tipo_unidad,
                                u.id_tipo_adquisicion,
                                u.id_sede,
                                u.vin,
                                u.kilometraje,
                                u.placa,
                                u.tarjeta_circulacion,
                                u.color,
                                u.img_unidad,
                                u.fecha_adquisicion,
                                u.detalles_adquisicion,
                                marc.id_marca
                                FROM unidades AS u 
                                INNER JOIN modelos AS mode
                                ON u.id_modelo = mode.id_modelo
                                INNER JOIN marcas AS marc
                                ON mode.id_marca = marc.id_marca
                                WHERE u.id_unidad = '$idunidad'";

        $ejecutarobtenervalorunidad = $conectar->query($queryobtenerunidad);
        if (mysqli_num_rows($ejecutarobtenervalorunidad) > 0) {
            $data = mysqli_fetch_array($ejecutarobtenervalorunidad);
            $id_marca_unidad = $data['id_marca']; // Obtener id_marca de la marca
            $id_modelo_unidad = $data['id_modelo']; // Obtener id_modelo de la marca
        }
        //---------------------------------------------------------------editar marca------------------------------------------------
        // Realizar la consulta para obtener las marcas
        $sql = "SELECT id_marca, nombre_marca FROM marcas";
        $result = $conectar->query($sql);
        // Verificar si hay resultados
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-4">
        <div class="form-floating">
            <select class="form-control" id="marcaeditarunidad" placeholder="marcaeditarunidad" name="marcaeditarunidad">
                <option value="">Seleccione una marca</option>'; // Opción predeterminada

            while ($row = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                $selected = ($row['id_marca'] == $id_marca_unidad) ? 'selected' : '';
                echo '<option value="' . $row['id_marca'] . '" ' . $selected . '>' . $row['nombre_marca'] . '</option>';
            }

            echo '</select>
        <label for="marcaunidadldr">Marca</label>
    </div>
    <label class="" style="color: white;">*Campo obligatorio</label>
</div>';
            //---------------------------------------------------------------editar modelo------------------------------------------------
           
            // Realizar la consulta para obtener los modelos
            $sqlmodelos = "SELECT id_modelo, nombre_modelo FROM modelos";
            $result = $conectar->query($sqlmodelos);
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="modeloeditarunidad" placeholder="modeloeditarunidad" name="modeloeditarunidad">
                    <option value="">Seleccione un modelo</option>'; // Opción predeterminada
            while ($rowmodelos = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                $selected = ($rowmodelos['id_modelo'] == $id_modelo_unidad) ? 'selected' : '';
                echo '<option value="' . $rowmodelos['id_modelo'] . '" ' . $selected . '>' . $rowmodelos['nombre_modelo'] . '</option>';
            }

            echo '</select>
            <label for="modelounidadldr">Modelo</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
            //---------------------------------------------------------------editar vin------------------------------------------------
            echo '<div class="col-md-4">
        <div class="form-floating">
            <input type="text" class="form-control" id="editarVIN" placeholder="editarVIN" name="editarVIN" value="' . $data['vin'] . '">
            <label for="vinunidadldr">VIN</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
</div>';

            //---------------------------------------------------------------editar placa------------------------------------------------
            echo '<div class="row">
        <div class="col-md-4">
            <div class="form-floating">
                <input type="text" class="form-control" id="editarPlaca" placeholder="editarPlaca" name="editarPlaca" value="' . $data['placa'] . '">
                <label for="kilometrajeunidadldr">Placa</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>
            <!-----------------------------------------------------------------editar kilometraje-------------------------------------------------->
        <div class="col-md-4">
            <div class="form-floating">
                <input type="text" class="form-control" id="editarKilometraje" placeholder="editarKilometraje" name="editarKilometraje" value="' . $data['kilometraje'] . '">
                <label for="kilometrajeunidadldr">Kilometraje</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>
            <!-----------------------------------------------------------------editar color-------------------------------------------------->
        <div class="col-md-4">
            <div class="form-floating">
                <input type="text" class="form-control" id="editarColor" placeholder="editarColor" name="editarColor" value="' . $data['color'] . '">
                <label for="colorunidadldr">Color</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>
    </div>';
            //---------------------------------------------------------------editar tarjeta de circulación------------------------------------------------
            echo '<div class="row">
        <div class="col-md-4">
            <div class="form-floating">
                <input type="text" class="form-control" id="editarTarjetaCirculacion" placeholder="editarTarjetaCirculacion" name="editarTarjetaCirculacion" value="' . $data['tarjeta_circulacion'] . '">
                <label for="tarjetacirculacionunidadesldr">Tarjeta de circulación</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>';
            //---------------------------------------------------------------editar estado de la unidad------------------------------------------------
            // Realizar la consulta para obtener el estado de la unidad
            $sqlestadounidad = "SELECT id_estado_unidad, estado FROM estado_unidad";
            $result = $conectar->query($sqlestadounidad);
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="editarEstadoUnidad" placeholder="editarEstadoUnidad" name="editarEstadoUnidad">
                    <option value="">Seleccione un estado</option>'; // Opción predeterminada

            while ($rowestadounidad = $result->fetch_assoc()) {
                // Mostrar cada estado como una opcion
                $selected = ($data['id_estado_unidad'] == $rowestadounidad['id_estado_unidad']) ? 'selected' : '';
                echo '<option value="' . $rowestadounidad['id_estado_unidad'] . '" ' . $selected . '>' . $rowestadounidad['estado'] . '</option>';
            }
            echo '</select>
            <label for="estadounidadldr">Estado de la unidad</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';

        //---------------------------------------------------------------editar estatus de la unidad------------------------------------------------
            // Realizar la consulta para obtener el estatus de la unidad
            $sqlestadounidad = "SELECT id_estatus_unidad, estatus FROM estatus_unidades";
            $result = $conectar->query($sqlestadounidad);
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="editarEstatusUnidad" placeholder="editarEstatusUnidad" name="editarEstatusUnidad">
                    <option value="">Seleccione un estatus</option>'; // Opción predeterminada

            while ($rowestatusunidad = $result->fetch_assoc()) {
                // Mostrar cada estado como una opcion
                $selected = ($data['id_estatus_unidad'] == $rowestatusunidad['id_estatus_unidad']) ? 'selected' : '';
                echo '<option value="' . $rowestatusunidad['id_estatus_unidad'] . '" ' . $selected . '>' . $rowestatusunidad['estatus'] . '</option>';
            }
            echo '</select>
            <label for="estatusunidadldr">Estatus de la unidad</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';

            //---------------------------------------------------------------editar tipo de unidad------------------------------------------------
            // Realizar la consulta para obtener el tipo de unidad
            $sqltipounidad = "SELECT id_tipo_unidad, tipo_unidad FROM tipo_unidad";
            $result = $conectar->query($sqltipounidad);
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="editarTipoUnidad" placeholder="editarTipoUnidad" name="editarTipoUnidad">
                    <option value="">Seleccione un tipo</option>'; // Opción predeterminada

            while ($rowtipounidad = $result->fetch_assoc()) {
                // Mostrar cada estado como una opcion
                $selected = ($data['id_tipo_unidad'] == $rowtipounidad['id_tipo_unidad']) ? 'selected' : '';
                echo '<option value="' . $rowtipounidad['id_tipo_unidad'] . '" ' . $selected . '>' . $rowtipounidad['tipo_unidad'] . '</option>';
            }
            echo '</select>
            <label for="tipounidadldr">Tipo de unidad</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';

    //---------------------------------------------------------------editar sede de la unidad------------------------------------------------
            // Realizar la consulta para obtener la sede de la unidad
            $sqlsedeunidad = "SELECT id_sede, ubicacion FROM sedes";
            $result = $conectar->query($sqlsedeunidad);
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="editsedeunidad" placeholder="editsedeunidad" name="editsedeunidad">
                    <option value="">Seleccione una sede</option>'; // Opción predeterminada

            while ($rowsedeunidad = $result->fetch_assoc()) {
                // Mostrar cada estado como una opcion
                $selected = ($data['id_sede'] == $rowsedeunidad['id_sede']) ? 'selected' : '';
                echo '<option value="' . $rowsedeunidad['id_sede'] . '" ' . $selected . '>' . $rowsedeunidad['ubicacion'] . '</option>';
            }
            echo '</select>
            <label for="sedeunidadldr">Sede de la unidad</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';

            //---------------------------------------------------------------editar fecha de adquisicion de la unidad------------------------------------------------
            echo '<div class="col-md-4">
            <div class="form-floating">
                <input type="date" class="form-control" id="editarfechaadquisicionunidad" placeholder="editarfechaadquisicionunidad" name="editarfechaadquisicionunidad" value="' . $data['fecha_adquisicion'] . '">
                <label for="fechaadquisicionunidadldr">Fecha de adquisicion de la unidad</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>';

        //---------------------------------------------------------------editar tipo de adquisicion de la unidad------------------------------------------------
        //realizar la consulta para obtener el tipo de adquisicion de la unidad
        $sqltipoadquisicionunidad = "SELECT id_tipo_adquisicion, nombre_tipo_adquisicion FROM tipo_adquisicion";
        $result = $conectar->query($sqltipoadquisicionunidad);
        echo '<div class="col-md-4">
        <div class="form-floating">
            <select class="form-control" id="editartipoadquisicionunidad" placeholder="editartipoadquisicionunidad" name="editartipoadquisicionunidad">
                <option value="">Seleccione un tipo</option>'; // Opción predeterminada

        while ($rowtipoadquisicionunidad = $result->fetch_assoc()) {
            // Mostrar cada estado como una opcion
            $selected = ($data['id_tipo_adquisicion'] == $rowtipoadquisicionunidad['id_tipo_adquisicion']) ? 'selected' : '';
            echo '<option value="' . $rowtipoadquisicionunidad['id_tipo_adquisicion'] . '" ' . $selected . '>' . $rowtipoadquisicionunidad['nombre_tipo_adquisicion'] . '</option>';
        }
        echo '</select>
        <label for="tipoadquisicionunidadldr">Tipo de adquisicion de la unidad</label>
    </div>
    <label class="" style="color: white;">*Campo obligatorio</label>
</div>';
        //---------------------------------------------------------------editar detalles de la adquisicion------------------------------------------------
        echo '<div class="col-md-4">
        <div class="form-floating">
            <input type="text" class="form-control" id="editardetalleadquisicion" placeholder="editardetalleadquisicion" name="editardetalleadquisicion" value="' . $data['detalles_adquisicion'] . '">
            <label for="detalleadquisicionldr">Detalles de la adquisicion</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
        
//---------------------------------------------------------------editar imagen de la unidad------------------------------------------------
        echo '<div class="col-md-4">
        <div class="form-floating">
            <div class="form-label">
                <input type="file" class="form-control" id="imagen_unidad" name="imagen_unidad" accept="image/*">
                <label class="input-group-text" for="imagen_unidad">
                    <i class="fas fa-upload"></i> Cargar Imagen
                </label>
            </div>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>';
    } else {
        echo "No hay tipos de unidad disponibles.";
    }
        } else {
            echo "No hay marcas disponibles.";
    }

    $conectar->close();

    ?>