<div class="row">
    <!-- ------------------------------------------------------------------------polizas ------------------------------------------------------------------->
    <?php
    include("../../Servidor/conexion.php");
    
        $sql = "SELECT id_tipo_poliza, nombre_tipo FROM tipo_polizas";
        $result = $conectar->query($sql);
        if ($result->num_rows > 0) {
            // Recorrer los resultados y mostrar las opciones
            echo '<div class="col-md-4">
                <div class="form-floating">
                    <select class="form-control" id="polizas" placeholder="polizas" name="polizas">
                        <option value="">Seleccione una póliza</option>'; // Opción predeterminada

            while ($row = $result->fetch_assoc()) {
                // Mostrar cada marca como una opción
                echo '<option value="' . $row['id_tipo_poliza'] . '">' . $row['nombre_tipo'] . '</option>';
            }

            echo '</select>
                <label for="polizasunidadldr">Polizas</label>
            </div>
            <label class="" style="color: white;">*Campo obligatorio</label>
        </div>';
        } else {
            echo "No hay polizas disponibles.";
        }
        
    
    ?>
    </div>
    
    
    <div class="row">
    <!-----------------------------------------------------------------------Identificador de polizas de unidades -------------------------------------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <input type="text" class="form-control" id="identificadorpoliza" value="" placeholder="identificadorpoliza" name="identificadorpoliza">
            <label for="identificadorpolizaunidadesldr">Identificador de la póliza</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
    <!---------------------------------------------------------------- Fecha de adquisicion de poliza ---------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <input type="date" class="form-control" id="fecharegistropoliza" value="" placeholder="fecharegistropoliza" name="fecharegistropoliza">
            <label for="fecharegistropolizaldr">Fecha de inicio de la póliza</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>


</div>
<div class="row">   
    <!---------------------------------------------------------------- Fecha de vencimiento de poliza ---------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <input type="date" class="form-control" id="fechavencimientopoliza" value="" placeholder="fechavencimientopoliza" name="fechavencimientopoliza">
            <label for="fechavencimientopolizaldr">Fecha de vencimiento de la póliza</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
    <!-----------------------------------------------------------------------Documento de polizas de unidades -------------------------------------------------------------------->
    <div class="col-md-4">
        <div class="form-floating">
            <div class="form-label">
                <input type="file" class="form-control" id="documento_poliza" name="documento_poliza" accept="*" value="">
                <label class="input-group-text" for="documento_poliza">
                    <i class="fas fa-upload"> </i> Cargar póliza
                </label>
            </div>
        </div>
    </div>
</div>




