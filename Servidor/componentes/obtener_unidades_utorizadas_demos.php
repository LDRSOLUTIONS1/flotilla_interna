<?php
include("../../Servidor/conexion.php");
if (!isset($_SESSION)) {
    session_start();
}
//uda = Unidad Demo Autorizada
//pf = Persona Fisica
//pm = Persona Moral
//ca = Colaborador que Asigna
$sqlobtenerunidadesdemoautorizadas = "SELECT unid.img_unidad,
                uda.id_asignacion_unidad_demo,
                uda.id_unidad,
                uda.id_colaborador_que_asigna,
                uda.id_persona_fisica,
                uda.autorizacion,
                pf.id_persona_fisica,
                pf.nombre_1,
                pf.nombre_2,
                pf.apellido_paterno,
                pf.apellido_materno,
                pm.id_persona_moral,
                pm.organizacion_institucion,
                model.nombre_modelo,
                unid.placa,
                uda.fecha_prestamo,
                uda.fecha_devolucion,
                uda.id_colaborador_que_asigna,
                ca.nombre_1 AS nombre1colaborador,
                ca.nombre_2 AS nombre2colaborador,
                ca.apellido_paterno AS apellidopcolaborador,
                ca.apellido_materno AS apellidomcolaborador,
                aud.nombre_1 AS nombre1autorizador,
                aud.nombre_2 AS nombre2autorizador,
                aud.apellido_paterno AS apellidopautorizador,
                aud.apellido_materno AS apellidomautorizador
            FROM asignacion_unidad_demo AS uda
            LEFT JOIN unidades AS unid 
            ON uda.id_unidad = unid.id_unidad
            LEFT JOIN modelos AS model 
            ON unid.id_modelo = model.id_modelo 
            LEFT JOIN personas_fisicas AS pf 
            ON uda.id_persona_fisica = pf.id_persona_fisica
            LEFT JOIN personas_morales AS pm 
            ON uda.id_persona_moral = pm.id_persona_moral
            LEFT JOIN colaboradores AS aud
            ON uda.id_autorizador = aud.id_colaborador
            INNER JOIN colaboradores AS ca
            ON uda.id_colaborador_que_asigna = ca.id_colaborador
            WHERE uda.autorizacion = 'APROVADO'";

$resultado = $conexion->query($sqlobtenerunidadesdemoautorizadas);


echo '<div id="vistaCards">';
while ($fila = $resultado->fetch_assoc()) {
    if (($fila['id_persona_fisica'] || $fila['id_persona_moral']) && $fila['autorizacion'] === 'APROVADO') {
        $tipo_solicitante = isset($fila['id_persona_fisica']) && $fila['id_persona_fisica'] ? 'fisica' : 'moral';
        echo '<div class="card mb-3 card-solicitante tipo-' . $tipo_solicitante . '">';
        echo '<div class="cardheader">
            <img src="../../Servidor/archivos/imagenes/imagenes_unidades/' . $fila['img_unidad'] . '" onerror="this.src=\'../../Cliente/img/unidades/carro_desconocido.png\'" class="card-img-top img-fluid imgcard" alt="...">
        </div>
        <div class="card-body">';
        if (isset($fila['id_persona_fisica']) && $fila['id_persona_fisica']) {
            echo '<h6 class="card-title"><b>' .
                $fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'] .
                '</b></h6>';
        } elseif (isset($fila['organizacion_institucion'])) {
            echo '<h6 class="card-title"><b>' . $fila['organizacion_institucion'] . '</b></h6>';
        } else {
            echo '<h6 class="card-title text-danger"><b>Sin datos del solicitante</b></h6>';
        }

        echo '<h6 class="card-title"><b>' . $fila['nombre_modelo'] . '</b></h6>
            <h6 class="card-text" style="font-size: 0.9rem;"><i class="fas fa-user me-2"></i><b>Colaborador que autoriza: </b>' . $fila['nombre1autorizador'] . ' ' . $fila['nombre2autorizador'] . ' ' . $fila['apellidopautorizador'] . ' ' . $fila['apellidomautorizador'] . '</h6>
            <h6 class="card-text"><i class="fas fa-car me-2"></i><b>Placa: </b>' . $fila['placa'] . '</h6>
            <h6 class="card-text"><i class="fas fa-calendar-check me-2"></i><b>Asignación: </b>' . $fila['fecha_prestamo'] . '</h6>
            <h6 class="card-text"><i class="fas fa-undo-alt me-2"></i><b>Devolución: </b>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') .
            '</h6>
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
                    <th>Nombre del usuario/empresa</th>
                    <th>Modelo</th>
                    <th>Placa</th>
                    <th>Asignación</th>
                    <th>Devolución</th>
                </tr>
            </thead>
            <tbody>';

while ($fila = $resultado->fetch_assoc()) {
    if (($fila['id_persona_fisica'] || $fila['id_persona_moral']) && $fila['autorizacion'] === 'APROVADO') {
        $nombre = $fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'] . ' ' . $fila['organizacion_institucion'];
        $tipo_solicitante = isset($fila['id_persona_fisica']) && $fila['id_persona_fisica'] ? 'fisica' : 'moral';
        echo '<tr class="fila-solicitante tipo-' . $tipo_solicitante . '">';
        echo '
            <td>' . $nombre . '</td>
            <td>' . $fila['nombre_modelo'] . '</td>
            <td>' . $fila['placa'] . '</td>
            <td>' . $fila['fecha_prestamo'] . '</td>
            <td>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . '</td>';
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