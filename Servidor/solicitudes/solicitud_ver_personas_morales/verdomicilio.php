<?php
include "../../conexion.php";

if (isset($_POST['id_persona_domicilio'])) {
    $id_persona_moral = $_POST['id_persona_domicilio'];

    $sqlobtenerinepersomoral = "SELECT archivo_domiclio_moral 
                                    FROM personas_morales
                                    WHERE id_persona_moral = '$id_persona_moral'";

    $result = $conexion->query($sqlobtenerinepersomoral);
    $row = $result->fetch_assoc();

    echo '<div class="col archivodocumentopersonafisica">';
    if (!empty($row['archivo_domiclio_moral'])) {
        $archivo_domiclio_moral = $row['archivo_domiclio_moral'];
        echo '<p class="card-text">Descarga el archivo:
        <a href="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_domicilio/' . $archivo_domiclio_moral . '" target="_blank" class="btn btn-warning">Abrir</a>
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_domicilio/' . $archivo_domiclio_moral . '#toolbar=0&navpanes=0&scrollbar=0" frameborder="0" style="width:100%;height:500px;"></iframe>
        </div>
      </p>';
    }
    echo '</div>';
}
