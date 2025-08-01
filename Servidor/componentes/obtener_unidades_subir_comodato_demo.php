<?php
//query para obtener las unidades a las que se les va a subir el comodato del lado de juridico

include("../../Servidor/conexion.php");
if (!isset($_SESSION)) {
    session_start();
}

$sqlobtenerunidadsubircomodato = "SELECT unid.img_unidad,
                uda.id_asignacion_unidad_demo,
                uda.id_unidad,
                uda.id_colaborador_que_asigna,
                uda.id_autorizador,
                uda.id_persona_fisica,
                uda.autorizacion,
                uda.id_estatus_comodato_demo,
                pf.id_persona_fisica,
                pf.nombre_1,
                pf.nombre_2,
                pf.apellido_paterno,
                pf.apellido_materno,
                pm.id_persona_moral,
                pm.organizacion_institucion,
                model.nombre_modelo,
                unid.placa,
                estatuscomodato.estatus_comodato,
                uda.fecha_prestamo,
                uda.fecha_devolucion,
                uda.id_colaborador_que_asigna,
                ca.nombre_1 AS nombre1colaborador,
                ca.nombre_2 AS nombre2colaborador,
                ca.apellido_paterno AS apellidopcolaborador,
                ca.apellido_materno AS apellidomcolaborador,
                aud.nombre_1 AS nombre1autorizador,
                aud.nombre_2 AS nombre2autorizador,
                aud.apellido_paterno AS apellidopaternoautorizador,
                aud.apellido_materno AS apellidomaternoautorizador,
                usr.avatar AS avatar_colaborador,
                usr_aut.avatar AS avatar_autorizador
            FROM asignacion_unidad_demo AS uda
                LEFT JOIN unidades AS unid 
                ON uda.id_unidad = unid.id_unidad
                LEFT JOIN modelos AS model 
                ON unid.id_modelo = model.id_modelo 
                LEFT JOIN estatus_comodato AS estatuscomodato
                ON uda.id_estatus_comodato_demo = estatuscomodato.id_estatus_comodato
                LEFT JOIN personas_fisicas AS pf 
                ON uda.id_persona_fisica = pf.id_persona_fisica
                LEFT JOIN personas_morales AS pm 
                ON uda.id_persona_moral = pm.id_persona_moral
                INNER JOIN colaboradores AS ca
                ON uda.id_colaborador_que_asigna = ca.id_colaborador
                INNER JOIN colaboradores AS aud
                ON uda.id_autorizador = aud.id_colaborador
                INNER JOIN usuarios AS usr 
                ON usr.id_colaborador = ca.id_colaborador
                LEFT JOIN usuarios AS usr_aut
                ON usr_aut.id_colaborador = aud.id_colaborador
                WHERE uda.autorizacion = 'APROVADO'";
$resultado = $conexion->query($sqlobtenerunidadsubircomodato);


// Contenedor de Cards
echo '<div id="vistaCards">';
while ($fila = $resultado->fetch_assoc()) {
    if (($fila['id_persona_fisica'] || $fila['id_persona_moral']) && $fila['autorizacion'] === 'APROVADO') {
            $tipo_solicitante = isset($fila['id_persona_fisica']) && $fila['id_persona_fisica'] ? 'fisica' : 'moral';
        if ($fila['id_estatus_comodato_demo'] != 1 && $fila['id_estatus_comodato_demo'] != 4 && $fila['id_estatus_comodato_demo'] != 5) {
            echo '<div class="card mb-3  tipo-' . $tipo_solicitante . '">';
            if ($fila['id_estatus_comodato_demo'] == 3) {
                echo '<div class="alerta d-flex align-items-center"">
                <img src="../../Cliente/videos/succes-green.gif" class="me-2 imgalertasucces> 
                <h6 class="txtvalidacioncomodato"><b>Comodato subido</b></h6>
                </div>';
            } elseif ($fila['id_estatus_comodato_demo'] == 7) {
                echo '<div class="alerta d-flex align-items-center">
                <img src="../../Cliente/videos/warning-red.gif" class="me-2 imgalertasucces"> 
                <h6 class="txtvalidacioncomodato"><b>Comodato regresado</b></h6>
                </div>';
            }

            echo '<div class="cardheader">
                <img src="../../Servidor/archivos/imagenes/imagenes_unidades/' . $fila['img_unidad'] . '" onerror="this.src=\'../../Cliente/img/unidades/carro_desconocido.png\'" class="card-img-top img-fluid imgcard" alt="..." >
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
            
            echo '
                <h5 class="card-title txteatlevalidacioncomodato"><strong>' . $fila['nombre_modelo'] . '</strong></h5>
                <h6 class="card-text txtvalidacioncomodato"><b>Solicitante: </b><br>
                    <img src="' . (empty($fila["avatar_colaborador"]) ? "../../Cliente/img/iconos/default_avatar.png" : "https://ldrhsys.ldrhumanresources.com/Cliente/img/avatars/" . $fila["avatar_colaborador"]) . '.png"
                        class="rounded-circle me-2" style="margin-top: 5px; width: 30px; height: 30px; object-fit: cover;" alt="avatar">
                    ' . $fila['nombre1colaborador'] . ' ' . $fila['nombre2colaborador'] . ' ' . $fila['apellidopcolaborador'] . ' ' . $fila['apellidomcolaborador'] . '
                </h6>

                <h6 class="card-text txtvalidacioncomodato"><b>Autorizador: </b><br>
                    <img src="' . (empty($fila["avatar_autorizador"]) ? "../../Cliente/img/iconos/default_avatar.png" : "https://ldrhsys.ldrhumanresources.com/Cliente/img/avatars/" . $fila["avatar_autorizador"]) . '.png"
                        class="rounded-circle me-2" style="margin-top: 5px; width: 30px; height: 30px; object-fit: cover;" alt="avatar">
                    ' . $fila['nombre1autorizador'] . ' ' . $fila['nombre2autorizador'] . ' ' . $fila['apellidopaternoautorizador'] . ' ' . $fila['apellidomaternoautorizador'] . '
                </h6>

                <h6 class="card-text txtvalidacioncomodato"><i class="fas fa-car me-2"></i><strong>Placa: </strong>' . $fila['placa'] . '</h6>
                <h6 class="card-text txtvalidacioncomodato"><i class="fas fa-calendar-check me-2"></i><strong>Asignación: </strong>' . $fila['fecha_prestamo'] . '</h6>
                <h6 class="text txtvalidacioncomodato"><i class="fas fa-undo-alt me-2"></i><strong>Devolución: </strong>' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . '</h6>
                <button type="button" id="btnmosrarmodalunidadcomodato" 
                    data-idunidad="' . $fila['id_unidad'] . '" 
                    data-idasignacion="' . $fila['id_asignacion_unidad_demo'] . '" 
                    data-idcolaborador="' . $fila['id_colaborador_que_asigna'] . '"  
                class="btn mt-3 btnmosrarmodalunidadcomodatodemo">Subir COMODATO</button>
            </div>
        </div>';
        }
    }
}
echo '</div>'; // Fin contenedor de cards

// Reiniciar puntero y mostrar tabla
$resultado->data_seek(0);

echo '<div id="vistaTabla" style="display: none;">
    <div class="table-responsive">
        <table class="table table-hover tablaunidades" id="tablaUnidades">
            <thead class="table-light">
                <tr>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-user me-2"></i>Nombre del usuario/empresa</th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-car-side me-2"></i>Modelo</th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-car me-2"></i>Placa</th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-calendar-check me-2"></i>Asignación</th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-undo-alt me-2"></i>Devolución</th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-file-contract me-2"></i>Subir comodato</th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-user-tie me-2"></i>Solicitante</th>
                    <th class="titulostablaverificarcomodatodemo"></th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-user-check me-2"></i>Autorizador</th>
                    <th class="titulostablaverificarcomodatodemo"></th>
                    <th class="titulostablaverificarcomodatodemo"><i class="fas fa-file-signature me-2"></i>Estado</th>
                    <th class="titulostablaverificarcomodatodemo"></th>
                </tr>
            </thead>
            <tbody>';

while ($fila = $resultado->fetch_assoc()) {
    if (($fila['id_persona_fisica'] || $fila['id_persona_moral']) && $fila['autorizacion'] === 'APROVADO') {
        $nombre = $fila['nombre_1'] . ' ' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'] . ' ' . $fila['organizacion_institucion'];
        $tipo_solicitante = isset($fila['id_persona_fisica']) && $fila['id_persona_fisica'] ? 'fisica' : 'moral';
        echo '<tr class="fila-solicitante tipo-' . $tipo_solicitante . '">';
        echo '
            <td class="titulostablaverificarcomodatodemo">' . $nombre . '</td>
            <td class="titulostablaverificarcomodatodemo">' . $fila['nombre_modelo'] . '</td>
            <td class="titulostablaverificarcomodatodemo">' . $fila['placa'] . '</td>
            <td class="titulostablaverificarcomodatodemo">' . $fila['fecha_prestamo'] . '</td>
            <td class="titulostablaverificarcomodatodemo">' . ($fila['fecha_devolucion'] != '0000-00-00' ? $fila['fecha_devolucion'] : '') . '</td>
            <td style="text-align: center;">
                <button type="button" id="btnmosrarmodalunidadcomodatodemo" 
                data-idunidad="' . $fila['id_unidad'] . '" 
                data-idasignacion="' . $fila['id_asignacion_unidad_demo'] . '" 
                data-idcolaborador="' . $fila['id_colaborador_que_asigna'] . '" 
            class="fas fa-upload btn mt-3 btntablaverificarcomodatodemojuridico btnmosrarmodalunidadcomodatodemo">
                </button>
            </td>
        <td style="text-align: center;"><img src="' . (empty($fila["avatar_colaborador"]) ? "../../Cliente/img/default_avatar.png" : "https://ldrhsys.ldrhumanresources.com/Cliente/img/avatars/" . $fila["avatar_colaborador"]) . '.png"
                class="rounded-circle me-2" style="width: 25px; height: 25px; object-fit: cover;" alt="avatar">
        </td>
                
        <td class="titulostablaverificarcomodatodemo">
    ' . $fila['nombre1colaborador'] . ' ' . $fila['nombre2colaborador'] . ' ' . $fila['apellidopcolaborador'] . ' ' . $fila['apellidomcolaborador'] . '
        </td>

        <td style="text-align: center;"><img src="' . (empty($fila["avatar_autorizador"]) ? "../../Cliente/img/default_avatar.png" : "https://ldrhsys.ldrhumanresources.com/Cliente/img/avatars/" . $fila["avatar_autorizador"]) . '.png"
                class="rounded-circle me-2" style="width: 25px; height: 25px; object-fit: cover;" alt="avatar">
        </td>
        <td class="titulostablaverificarcomodatodemo">
    ' . $fila['nombre1autorizador'] . ' ' . $fila['nombre2autorizador'] . ' ' . $fila['apellidopaternoautorizador'] . ' ' . $fila['apellidomaternoautorizador'] . '
        </td>
        <td class="titulostablaverificarcomodatodemo">';
        echo '<?php';
        if ($fila['id_estatus_comodato_demo'] == 3) {
            echo '<div>
                    <div class="estadocomodato d-flex align-items-center">
    <img src="../../Cliente/videos/succes-green.gif" class="me-2 imgalertasuccestabla">
    <h6 class="txtvalidacioncomodato"><b>Comodato subido</b></h6>
</div>
</div>';
        } elseif ($fila['id_estatus_comodato_demo'] == 7) {
            echo '<div>
                    <div class="alerta d-flex align-items-center">
                            <img src="../../Cliente/videos/warning-red.gif" class="me-2 imgalertasuccestabla">
                            <h6 class="txtvalidacioncomodato"><b>Comodato regresado</b></h6>
                        </div>
                        </div>';
        } else {
            echo $fila['fecha_prestamo'];
        }

        echo '</td>';
                echo '</tr>';
            ?>
        
<?php
    }
}
?>
</tbody>
</table>
</div>
