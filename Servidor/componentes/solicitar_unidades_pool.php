<div class="contenedorsolicitudunidadpool">
    <div class="row">
        <!------------------------------------------------------------------------ color --------------------------------------------------------------------->
        <?php
        include("../../Servidor/conexion.php");

        // Realizar la consulta para obtener las sedes
        $sql = "SELECT id_sede, ubicacion FROM sedes";
        $result = $conectar->query($sql);
        // Verificar si hay resultados
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="sederecoleccionpool" placeholder="sederecoleccionpool" name="sederecoleccionunidades">
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
        <div class="col-md-4">
            <div class="form-floating">
                <input type="date" class="form-control" id="fechasolicitudunidadpool" name="fechasolicitudunidadpool" placeholder="fechasolicitudunidadpool">
                <label for="fechasolicitudunidadpool">Fecha de solicutud</label>
            </div>
            <label class="" style="color: white;"> </label>
        </div>
        <div class="col-md-2">
            <div class="form-floating">
                <input type="time" class="form-control" id="horasolicitudunidadpool" name="horasolicitudunidadpool" placeholder="horasolicitudunidadpool">
                <label for="horasolicitudunidadpool">Hora de solicitud</label>
            </div>
            <label class="" style="color: white;"> </label>
        </div>
    </div>

    <div class="row">
        <!------------------------------------------------------------------------ color --------------------------------------------------------------------->
        <?php
        include("../../Servidor/conexion.php");

        // Realizar la consulta para obtener las sedes
        $sql = "SELECT id_sede, ubicacion FROM sedes";
        $result = $conectar->query($sql);
        // Verificar si hay resultados
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-4">
            <div class="form-floating">
                <select class="form-control" id="sededevolucionunidadpool" placeholder="sededevolucionunidadpool" name="colorunidades">
                    <option value="">Seleccionar</option>'; // Opción predeterminada

            while ($row = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                echo '<option value="' . $row['id_sede'] . '">' . $row['ubicacion'] . '</option>';
            }

            echo '</select>
            <label for="sededevolucionunidadpooldr">Ubicación de devolución</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>';
        } else {
            echo "No hay marcas disponibles.";
        }

        $conectar->close();
        ?>
        <div class="col-md-4">
            <div class="form-floating">
                <input type="date" class="form-control" id="fechadevolucionunidadpool" name="fechadevolucionunidadpool" placeholder="fechadevolucionunidadpool">
                <label for="fechadevolucionunidadpool">Fecha de devolución</label>
            </div>
            <label class="" style="color: white;"> </label>
        </div>
        <div class="col-md-2">
            <div class="form-floating">
                <input type="time" class="form-control" id="horadevolucionunidadpool" name="horadevolucionunidadpool" placeholder="horadevolucionunidadpool">
                <label for="horadevolucionunidadpool">Hora de devolución</label>
            </div>
            <label class="" style="color: white;"> </label>
        </div>
            <div class="col-md-2">
                <button class="btn btn-primary btnsolicitudunidadpool" id="btnsolicitudunidadpool">Verificar unidades</button>
            </div>
            
    </div>


</div>