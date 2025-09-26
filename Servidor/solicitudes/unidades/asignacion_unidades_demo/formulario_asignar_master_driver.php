<?php
include("../../../conexion.php");

//realizar consulta a la base de datos para obtener los colaboradores
$sqltipodirectivos = "SELECT 
    colaboradores.id_colaborador, 
    colaboradores.id_puesto, 
    pues.nombre_puesto, 
    colaboradores.nombre_1, 
    colaboradores.nombre_2, 
    colaboradores.apellido_paterno, 
    colaboradores.apellido_materno, 
    colaboradores.numero_colaborador,
    usu.id_tipo_usuario
FROM usuarios as usu
INNER JOIN colaboradores ON colaboradores.id_colaborador = usu.id_colaborador
INNER JOIN puestos AS pues ON pues.id_puesto = colaboradores.id_puesto
WHERE usu.id_tipo_usuario = 9
ORDER BY colaboradores.numero_colaborador ASC";

$resultado = $conexion->query($sqltipodirectivos);

$id_asignacion = $_POST['id_asignacion'];
?>

<h3>Asignar Máster Driver</h3>

<div class="form-floating mb-3">
    <select class="form-control" id="id_master_driver" name="id_master_driver" required>
        <option value="" selected>Seleccione un Máster Driver</option>
        <?php while ($row = $resultado->fetch_assoc()) { ?>
            <option value="<?= $row['id_colaborador'] ?>">
                <?= $row['numero_colaborador'] ?> - <?= $row['nombre_1'] . ' ' . $row['nombre_2'] . ' ' . $row['apellido_paterno'] . ' ' . $row['apellido_materno'] ?>
            </option>
        <?php } ?>
    </select>
    <label for="id_master_driver">Máster Driver:</label>
</div>

<input type="hidden" name="id_asignacion" id="id_asignacion" value="<?= $id_asignacion ?>">

<!-- Campo de fechas oculto inicialmente -->
<div class="mb-3" id="fechasContainer" style="display:none;">
    <label class="form-label">Fechas de la prueba:</label>
    <div id="fechasInputs">
        <input type="date" name="fechas_prueba[]" class="form-control mb-2">
    </div>
    <button type="button" id="agregarFecha" class="btn btn-sm btn-outline-primary">Agregar otra fecha</button>
</div>

