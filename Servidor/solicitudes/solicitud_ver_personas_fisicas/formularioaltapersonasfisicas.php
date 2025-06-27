
<div class="row">
    <h3>Datos personales</h3>
    <!-- Nombre -->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control nombrepersonafisica1" id="nombrepersonafisica1" placeholder="nombrepersonafisica1" name="nombrepersonafisica1">
            <label for="nombre1unidadldr">Nombre</label>
        </div>
        <label class="" style="color: white;"> </label>
    </div>
    <!-- Nombre 2 -->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control nombrepersonafisica2" id="nombrepersonafisica2" placeholder="nombrepersonafisica2" name="nombrepersonafisica2">
            <label for="nombre2unidadldr">Segundo nombre</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
    <!-- apellido paterno -->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control apaternopersonafisica" id="apaternopersonafisica" placeholder="apaternopersonafisica" name="apaternopersonafisica">
            <label for="apaternounidadldr">Apellido paterno</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
    <!-- apellido materno -->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control amaternopersonafisica" id="amaternopersonafisica" placeholder="amaterno" name="amaterno">
            <label for="amaternounidadldr">Apellido materno</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
    <!-- genero -->
    <div class="col-md-4">
        <div class="form-floating">
            <select class="form-control generopersonafisica" id="generopersonafisica" placeholder="generopersonafisica" name="generopersonafisica">
                <option value="">Selecciona Género</option>
                <option value="M">Masculino</option>
                <option value="F">Femenino</option>
            </select>
            <label for="generounidadldr">Género</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
</div>

<div class="row">
    <!---------------------------------identificacion oficial----------------------->
    <h3>Identificacion oficial (INE)</h3>
    <!-- identificacion oficial -->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="number" class="form-control inepersonafisica" id="inepersonafisica" placeholder="inepersonafisica" name="inepersonafisica" min="0" max="4">
            <label for="domicilioldr">Sección</label>
        </div>
        <label class="float-end" style="color: black;">Ejemplo: 1727</label>
    </div>
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control vigenciainepersonafisica" id="vigenciainepersonafisica" placeholder="vigenciainepersonafisica" name="vigenciainepersonafisica">
            <label for="domicilioldr">Vigencia</label>
        </div>
        <label class="float-end" style="color: black;">Ejemplo: 2020-2030</label>
    </div>
    <!--archivo INE-->
    <h5><b>•	Archivo INE</b></h5>
    <div class="col-md-8">
        <div class="form-floating">
            <input type="file" class="form-control archivoINEpersonafisica" id="archivoINEpersonafisica" placeholder="archivoINEpersonafisica" name="archivoINEpersonafisica" accept=".pdf">
            <label for="archivoINEldr">Archivo INE</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>

</div>

<div class="row">
    <h3>CURP</h3>
    <!--curp-->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control curppersonafisica" id="curppersonafisica" placeholder="curppersonafisica" name="curppersonafisica">
            <label for="curpunidadldr">CURP</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
    <!--archivo comprobande curp-->
    <h5><b>•	Archivo CURP</b></h5>
    <div class="col-md-8">
        <div class="form-floating">
            <input type="file" class="form-control archivoCURPpersonafisica" id="archivoCURPpersonafisica" placeholder="archivoCURPpersonafisica" name="archivoCURPpersonafisica" accept=".pdf">
            <label for="archivodomicilioldr">Archivo CURP</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
</div>
<div class="row">
    <h3>RFC</h3>
    <!--curp-->
    <div class="col-md-6">
        <div class="form-floating">
            <input type="text" class="form-control rfcpersonafisica" id="rfcpersonafisica" placeholder="rfcpersonafisica" name="rfcpersonafisica">
            <label for="curpunidadldr">RFC</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
    <!--archivo comprobande curp-->
    <h5><b>•	Archivo RFC</b></h5>
    <div class="col-md-8">
        <div class="form-floating">
            <input type="file" class="form-control archivoRFCpersonafisica" id="archivoRFCpersonafisica" placeholder="archivoRFCpersonafisica" name="archivoRFCpersonafisica" accept=".pdf">
            <label for="archivodomicilioldr">Archivo RFC</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
</div>

<div class="row">
    <h3>Domicilio</h3>
    <!-- domicilio -->
    <div class="col-md-8">
        <div class="form-floating">
            <input type="text" class="form-control domiciliodomiciliopersonafisica" id="domiciliodomiciliopersonafisica" placeholder="domiciliodomiciliopersonafisica" name="domiciliodomiciliopersonafisica">
            <label for="domiciliounidadldr">Domicilio</label>
        </div>
        <label class="" style="color: black;"> </label>
    </div>
    <!--archivo comprobande de domicilio-->
    <h5><b>•	Archivo comprobande de domicilio</b></h5>
    <div class="col-md-8">
        <div class="form-floating">
            <input type="file" class="form-control archivodomicilio" id="archivodomicilio" placeholder="archivodomicilio" name="archivodomicilio" accept=".pdf">
            <label for="archivodomicilioldr">Archivo domicilio</label>
        </div>
        <label class="" style="color: white;">*Campo obligatorio</label>
    </div>
</div>