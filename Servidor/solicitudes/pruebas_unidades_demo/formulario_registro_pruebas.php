<div class="row">
    <div class="col-md-12">
        <h2>Registrar Pruebas Unidades Demo</h2>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control" id="nombre_conductor" placeholder="nombre_conductor" name="nombre_conductor">
            <label for="nombre_conductor">Nombre conductor</label>
        </div>
        <label id="costoNetoLabel" style="color: black;"></label>
    </div>

    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control" id="tipo_prueba" placeholder="tipo_prueba" name="tipo_prueba">
            <label for="tipo_prueba">Tipo de prueba</label>
        </div>
        <label id="costoNetoLabel" style="color: black;"></label>
    </div>

    <div class="col-md-3">
        <div class="form-floating">
            <input type="number" class="form-control" id="temperatura" placeholder="temperatura" name="temperatura">
            <label for="temperatura">Temperatura</label>
        </div>
        <label id="costoNetoLabel" style="color: black;"></label>
    </div>

    <div class="col-md-3">
        <div class="form-floating">
            <input type="number" class="form-control" id="revoluciones" placeholder="revoluciones" name="revoluciones">
            <label for="revoluciones">Revoluciones</label>
        </div>
        <label id="costoNetoLabel" style="color: black;"></label>
    </div>
    <div class="col-md-3">
        <div class="form-floating">
            <input type="number" class="form-control" id="velocidad" placeholder="velocidad" name="velocidad">
            <label for="velocidad">Velocidad</label>
        </div>
        <label id="costoNetoLabel" style="color: black;"></label>
    </div>
    <div class="col-md-3">
        <div class="form-floating">
            <input type="number" class="form-control" id="kilometraje" placeholder="kilometraje" name="kilometraje">
            <label for="kilometraje">Kilometraje</label>
        </div>
        <label id="costoNetoLabel" style="color: black;"></label>
    </div>

    <div class="col-md-4">
        <div class="form-floating">
            <div class="form-label">
                <label for="foto_tablero" class="form-label">Foto tablero</label>
                <input class="form-control" type="file" id="foto_tablero" name="foto_tablero" accept="image/*">
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="form-floating">
            <div class="form-label">
                <label for="foto_odometro" class="form-label">Foto odómetro</label>
                <input class="form-control" type="file" id="foto_odometro" name="foto_odometro" accept="image/*">
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="form-floating">
            <div class="form-label">
                <label for="foto_unidad_exterior" class="form-label">Foto unidad exterior</label>
                <input class="form-control" type="file" id="foto_unidad_exterior" name="foto_unidad_exterior" accept="image/*">
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="form-group">
            <p class="textmotivodenegacioncartaresponsiva">Describe el motivo por el cual se denego el COMODATO</p>
            <textarea class="form-control textareamotivodenegacioncartaresponsiva comentarios_pruebas_demo" id="comentarios_pruebas_demo" name="comentarios_pruebas_demo"></textarea>
        </div>
    </div>


</div>