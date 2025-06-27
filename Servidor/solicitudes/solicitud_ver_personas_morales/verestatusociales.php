<?php
include "../../conexion.php";

if (isset($_POST['id_persona_estatusociales'])) {
    $id_persona_moral = $_POST['id_persona_estatusociales'];

    $sqlobtenerinepersomoral = "SELECT archivo_escrituras_estatus_sociales 
                                    FROM personas_morales
                                    WHERE id_persona_moral = '$id_persona_moral'";

    $result = $conexion->query($sqlobtenerinepersomoral);
    $row = $result->fetch_assoc();

    echo '<div class="col archivodocumentopersonafisica">';
    if (!empty($row['archivo_escrituras_estatus_sociales'])) {
        $archivo_escrituras_estatus_sociales = $row['archivo_escrituras_estatus_sociales'];
        echo '<p class="card-text">Descarga el archivo:
        <a href="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_estatusociales/' . $archivo_escrituras_estatus_sociales . '" target="_blank" class="btn btn-warning">Abrir</a>
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_estatusociales/' . $archivo_escrituras_estatus_sociales . '#toolbar=0&navpanes=0&scrollbar=0" frameborder="0" style="width:100%;height:500px;"></iframe>
        </div>
      </p>';
    }
    echo '</div>';
}
