<?php
include "../../conexion.php";

if (isset($_POST['id_persona_escrituraconstitutiva'])) {
    $id_persona_moral = $_POST['id_persona_escrituraconstitutiva'];

    $sqlobtenerinepersomoral = "SELECT nombre_archivo 
                                FROM archivos_escritura_constitutiva
                                WHERE id_persona_moral = '$id_persona_moral'";

    $result = $conexion->query($sqlobtenerinepersomoral);

    echo '<div class="row">';
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $nombre_archivo = $row['nombre_archivo'];
            echo '<div class="col archivodocumentopersonafisica mb-3">';
            echo '<p class="card-text">Descarga el archivo:
                    <a href="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_escrituraconstitutiva/' 
                    . $nombre_archivo . '" target="_blank" class="btn btn-warning">Abrir</a>
                  </p>';
            echo '<div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_escrituraconstitutiva/' 
                    . $nombre_archivo . '#toolbar=0&navpanes=0&scrollbar=0" frameborder="0" style="width:100%;height:500px;"></iframe>
                  </div>';
            echo '</div>';
        }
    } else {
        echo '<p>No hay archivos de escritura constitutiva para esta persona moral.</p>';
    }
    echo '</div>';
}
?>
