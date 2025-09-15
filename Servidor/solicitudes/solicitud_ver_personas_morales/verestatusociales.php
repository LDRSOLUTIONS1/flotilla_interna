<?php
include "../../conexion.php";

if (isset($_POST['id_persona_estatusociales'])) {
    $id_persona_moral = $_POST['id_persona_estatusociales'];

    $sqlobtenerinepersomoral = "SELECT nombre_archivo_estatus_sociales 
                                FROM archivos_escritura_estatus_sociales
                                WHERE id_persona_moral = '$id_persona_moral'";

    $result = $conexion->query($sqlobtenerinepersomoral);

    echo '<div class="row">';
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $nombre_archivo_estatus_sociales = $row['nombre_archivo_estatus_sociales'];

            echo '<div class="col-md-6 mb-4">'; // 2 columnas por fila
            echo '  <div class="card shadow-sm">';
            echo '    <div class="card-body">';
            echo '      <p class="card-text">Descarga el archivo: 
                          <a href="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_estatusociales/' 
                          . $nombre_archivo_estatus_sociales . '" target="_blank" class="btn btn-warning btn-sm">Abrir</a>
                        </p>';
            echo '      <div class="ratio ratio-16x9">'; // Bootstrap 5 reemplazo de embed-responsive
            echo '        <iframe src="../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_estatusociales/' 
                          . $nombre_archivo_estatus_sociales . '#toolbar=0&navpanes=0&scrollbar=0" 
                          frameborder="0"></iframe>';
            echo '      </div>';
            echo '    </div>';
            echo '  </div>';
            echo '</div>';
        }
    } else {
        echo '<p>No hay archivos de estatus sociales para esta persona moral.</p>';
    }
    echo '</div>';
}
?>
