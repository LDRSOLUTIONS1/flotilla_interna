<?php 
include("../../Servidor/conexion.php");
if (!isset($_SESSION)) {
    session_start();
}

$sqlobtenerunidadpersonamoralautorizacion = "SELECT unid.img_unidad,
    aud.id_asignacion_unidad_demo,
    aud.id_unidad,
    aud.id_colaborador_que_asigna,
    aud.id_persona_moral,
    aud.autorizacion,
    pm.organizacion_institucion,
    model.nombre_modelo,
    unid.placa,
    aud.fecha_prestamo,
    aud.fecha_devolucion,
    aud.autorizacion
FROM asignacion_unidad_demo AS aud
LEFT JOIN unidades AS unid 
ON aud.id_unidad = unid.id_unidad
LEFT JOIN modelos AS model 
ON unid.id_modelo = model.id_modelo 
LEFT JOIN personas_morales AS pm 
ON aud.id_persona_moral = pm.id_persona_moral";

$resultado = $conexion->query($sqlobtenerunidadpersonamoralautorizacion);

echo '<div id="vistaCards">';
while ($fila = $resultado->fetch_assoc()) {
    if ($fila['id_persona_moral'] && $fila['autorizacion'] != 'APROVADO') {
        echo '<div class="card mb-3">';
        echo '<div class="cardheader">
            <img src="../../Servidor/archivos/imagenes/imagenes_unidades/' . $fila['img_unidad'] . '" onerror="this.src=\'../../Cliente/img/unidades/carro_desconocido.png\'" class="card-img-top img-fluid imgcard" alt="...">
        </div>
        <div class="card-body">
            <h6 class="card-title"><b>' . 
                $fila['organizacion_institucion'] .
            '</b></h6>
            <h6 class="card-title"><b>' . $fila['nombre_modelo'] . '</b></h6>
            <h6 class="card-text"><i class="fas fa-car me-2"></i><b>Placa: </b>' . $fila['placa'] . '</h6>
            <h6 class="card-text"><i class="fas fa-calendar-check me-2"></i><b>Asignación: </b>' . $fila['fecha_prestamo'] . '</h6>
            <h6 class="card-text"><i class="fas fa-undo-alt me-2"></i><b>Devolución: </b>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . 
            '</h6>
            <button type="button" id="btnmosrarmodalunidadmoral" data-idunidad="' . $fila['id_unidad'] . '" data-id_asignacion_demo="' . $fila['id_asignacion_unidad_demo'] . '" data-idpersonamoral="' . $fila['id_persona_moral'] . '" class="btn btn-sm mt-3 btn-verunidad_autorizar_morales btnmosrarmodalunidadmoral">Verificar</button>
        </div>
        </div>';
    }
}
echo '</div>';

$resultado->data_seek(0);

echo '<div id="vistaTabla" style="display: none;">
    <div class="table-responsive">
        <table class="table table-hover tablaunidades" id="tablaUnidades">
            <thead class="table-light">
                <tr>
                    <th>Nombre de la empresa o institución</th>
                    <th>Modelo</th>
                    <th>Placa</th>
                    <th>Asignación</th>
                    <th>Devolución</th>
                    <th>Ver</th>
                </tr>
            </thead>
            <tbody>';

while ($fila = $resultado->fetch_assoc()) {
    if ($fila['id_persona_moral'] && $fila['autorizacion'] != 'APROVADO') {
        echo '<tr>
            <td>' . $fila['organizacion_institucion'] . '</td>
            <td>' . $fila['nombre_modelo'] . '</td>
            <td>' . $fila['placa'] . '</td>
            <td>' . $fila['fecha_prestamo'] . '</td>
            <td>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . '</td>
            <td><button type="button" class="btn btn-sm btn-verunidad_autorizar_morales btnmosrarmodalunidadmoral" data-idunidad="' . $fila['id_unidad'] . '" data-id_asignacion_demo="' . $fila['id_asignacion_unidad_demo'] . '" data-id_persona_moral="' . $fila['id_persona_moral'] . '"> Verificar</button></td>
            <td>';
                echo '<?php';
                ?>
            </td>
        </tr>
        <?php
    }
}
?>
            </tbody>
        </table>
    </div>

