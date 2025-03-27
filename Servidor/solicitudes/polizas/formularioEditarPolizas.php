<div class="row">
    <!---------------------------------------------------------------------------edicion de polizas ------------------------------------------------------------------->
    <?php
    include("../../conexion.php");

    if (isset($_POST['idpoliza'])) {
        $idpoliza = $_POST['idpoliza'];

        //vamos a obtener los valores de la poliza
        $queryobtenerpoliza = "SELECT * FROM polizas WHERE id_polizas = $idpoliza";

        $ejecutarobtenervalorpoliza = $conectar->query($queryobtenerpoliza);
        if (mysqli_num_rows($ejecutarobtenervalorpoliza) > 0) {
            $data = mysqli_fetch_array($ejecutarobtenervalorpoliza);
        }
            

        $sql = "SELECT id_tipo_poliza, nombre_tipo FROM tipo_polizas ";
        $result = $conectar->query($sql);
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-4">
            
                <div class="form-floating">
                    <select class="form-control" id="editartipopolizas" placeholder="editartipopolizas" name="editartipopolizas">
                        <option value="">Seleccione una póliza</option>'; // Opción predeterminada

            while ($row = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                if($data['id_tipo_poliza'] == $row['id_tipo_poliza']){
                    echo '<option value="' . $row['id_tipo_poliza'] . '" selected>' . $row['nombre_tipo'] . '</option>';
                } else {
                    echo '<option value="' . $row['id_tipo_poliza'] . '">' . $row['nombre_tipo'] . '</option>';
                }
            }

            echo '</select>
                <label for="editarpolizasunidadldr">Editar la poliza</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>';
        } else {
            echo "No hay tipopolizas disponibles.";
        }


    ?>
</div>


<div class="row">
    <!-----------------------------------------------------------------------Identificador edicion de polizas de unidades -------------------------------------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <input type="text" class="form-control" id="identificadoreditarpoliza" value="<?php echo $data['identificador_poliza']; ?>" placeholder="identificadoreditarpoliza" name="identificadoreditarpoliza">
            <label for="identificadorpolizaunidadesldr">Identificador de la póliza</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
    <!---------------------------------------------------------------- Fecha edicion  de adquisicion de poliza ---------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <input type="date" class="form-control" id="fecharegistroeditarpoliza" value="<?php echo $data['fecha_registro_poliza']; ?>" placeholder="fecharegistroeditarpoliza" name="fecharegistroeditarpoliza">
            <label for="fecharegistropolizaldr">Fecha de inicio de la póliza</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>


</div>
<div class="row">
    <!---------------------------------------------------------------- Fecha edicion de vencimiento de poliza ---------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <input type="date" class="form-control" id="fechavencimientoeditarpoliza" value="<?php echo $data['fecha_vencimiento_poliza']; ?>" placeholder="fechavencimientoeditarpoliza" name="fechavencimientoeditarpoliza">
            <label for="fechavencimientopolizaldr">Fecha de vencimiento de la póliza</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
    <!-----------------------------------------------------------------------Documento edicion de polizas de unidades -------------------------------------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <div class="form-label">
                <input type="file" class="form-control" id="editar_documento_poliza" name="editar_documento_poliza" accept="*" value="<?php echo $data['documento_poliza']; ?>">
                <label class="input-group-text" for="documento_poliza">
                    <i class="fas fa-upload"> </i> Cargar póliza
                </label>
            </div>
        </div>
    </div>
</div>
<?php
    }
?>