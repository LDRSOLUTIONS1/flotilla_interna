<?php 
include("../../Servidor/conexion.php");
if (!isset($_SESSION)) {
    session_start();
}
//aud = Asignacion Unidad Demo
//pf = Persona Fisica
//ca = Colaborador que Asigna
$sqlobtenerunidadpersonafisicaautorizacion = "SELECT unid.img_unidad,
    aud.id_asignacion_unidad_demo,
    aud.id_unidad,
    aud.id_colaborador_que_asigna,
    aud.id_persona_fisica,
    aud.autorizacion,
    pf.id_persona_fisica,
    pf.nombre_1,
    pf.nombre_2,
    pf.apellido_paterno,
    pf.apellido_materno,
    model.nombre_modelo,
    unid.placa,
    aud.fecha_prestamo,
    aud.fecha_devolucion,
    aud.id_colaborador_que_asigna,
    ca.nombre_1 AS nombre1colaborador,
    ca.nombre_2 AS nombre2colaborador,
    ca.apellido_paterno AS apellidopcolaborador,
    ca.apellido_materno AS apellidomcolaborador,
    usr.avatar AS avatar_colaborador
FROM asignacion_unidad_demo AS aud
LEFT JOIN unidades AS unid 
ON aud.id_unidad = unid.id_unidad
LEFT JOIN modelos AS model 
ON unid.id_modelo = model.id_modelo 
LEFT JOIN personas_fisicas AS pf 
ON aud.id_persona_fisica = pf.id_persona_fisica
INNER JOIN colaboradores AS ca
ON aud.id_colaborador_que_asigna = ca.id_colaborador
INNER JOIN usuarios AS usr 
ON usr.id_colaborador = ca.id_colaborador";

$resultado = $conexion->query($sqlobtenerunidadpersonafisicaautorizacion);

echo '<div id="vistaCards">';
while ($fila = $resultado->fetch_assoc()) {
    if ($fila['id_persona_fisica'] && $fila['autorizacion'] != 'APROVADO') {
        echo '<div class="card mb-3">';
        echo '<div class="cardheader">
            <img src="../../Servidor/archivos/imagenes/imagenes_unidades/' . $fila['img_unidad'] . '" onerror="this.src=\'../../Cliente/img/unidades/carro_desconocido.png\'" class="card-img-top img-fluid imgcard" alt="...">
        </div>
        <div class="card-body">
            <h6 class="card-title txteatlevalidacioncomodato"><b>' . 
                $fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'] .
            '</b></h6>
            <h6 class="card-title txteatlevalidacioncomodato"><b>' . $fila['nombre_modelo'] . '</b></h6>
            <h6 class="card-text txtvalidacioncomodato"><b>Solicitante: </b><br><img src="' . (empty($fila["avatar_colaborador"]) ? "../../Cliente/img/iconos/default_avatar.png" : "https://ldrhsys.ldrhumanresources.com/Cliente/img/avatars/" . $fila["avatar_colaborador"]) . '.png"
            class="rounded-circle me-2" style="margin-top: 5px; width: 30px; height: 30px; object-fit: cover;" alt="avatar">
            ' . $fila['nombre1colaborador'] . ' ' . $fila['nombre2colaborador'] . ' ' . $fila['apellidopcolaborador'] . ' ' . $fila['apellidomcolaborador'] . '</h6>
            <h6 class="card-text txtvalidacioncomodato"><i class="fas fa-car me-2"></i><b>Placa: </b>' . $fila['placa'] . '</h6>
            <h6 class="card-text txtvalidacioncomodato"><i class="fas fa-calendar-check me-2"></i><b>Asignación: </b>' . $fila['fecha_prestamo'] . '</h6>
            <h6 class="card-text txtvalidacioncomodato"><i class="fas fa-undo-alt me-2"></i><b>Devolución: </b>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . 
            '</h6>
            <button type="button" id="btnmosrarmodalunidadfisica" data-idunidad="' . $fila['id_unidad'] . '" data-id_asignacion_demo="' . $fila['id_asignacion_unidad_demo'] . '" data-idpersonafisica="' . $fila['id_persona_fisica'] . '" class="btn btn-sm mt-3 btn-verunidad_autorizar_fisicas btnmosrarmodalunidadfisica">Verificar</button>
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
                    <th>Nombre del colaborador</th>
                    <th>Modelo</th>
                    <th>Placa</th>
                    <th>Asignación</th>
                    <th>Devolución</th>
                    <th>Ver</th>
                </tr>
            </thead>
            <tbody>';

while ($fila = $resultado->fetch_assoc()) {
    if ($fila['id_persona_fisica'] && $fila['autorizacion'] != 'APROVADO') {
        $nombre = $fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'];
        echo '<tr>
            <td>' . $nombre . '</td>
            <td>' . $fila['nombre_modelo'] . '</td>
            <td>' . $fila['placa'] . '</td>
            <td>' . $fila['fecha_prestamo'] . '</td>
            <td>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . '</td>
            <td><button type="button" class="btn btn-sm btn-verunidad_autorizar_fisicas btnmosrarmodalunidadfisica" data-idunidad="' . $fila['id_unidad'] . '" data-id_asignacion_demo="' . $fila['id_asignacion_unidad_demo'] . '" data-id_persona_fisica="' . $fila['id_persona_fisica'] . '"> Verificar</button></td>
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

