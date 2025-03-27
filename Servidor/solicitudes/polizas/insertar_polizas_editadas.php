<?php 
include("../../conexion.php");
if ( isset($_POST['id_poliza']) && isset($_POST['editartipopolizas']) && isset($_POST['identificadoreditarpoliza']) && isset($_POST['fecharegistroeditarpoliza']) && isset($_POST['fechavencimientoeditarpoliza']) && isset($_FILES['editar_documento_poliza']) ) {

    $valorid_poliza = $_POST['id_poliza'];
    $valordocumento_editar_poliza = $_FILES['editar_documento_poliza']['name'];
    $valoreditartipopolizas = $_POST['editartipopolizas'];
    $valoreditarfecharegistropoliza = $_POST['fecharegistroeditarpoliza'];
    $valoreditarfechavencimientopoliza = $_POST['fechavencimientoeditarpoliza'];
    $valoreditaridentificadorpoliza = $_POST['identificadoreditarpoliza'];

    echo "id_poliza: " . $valorid_poliza . " ";
    echo "documento_poliza: " . $valordocumento_editar_poliza . " ";
    echo "editartipopolizas: " . $valoreditartipopolizas . " ";
    echo "identificadoreditarpoliza: " . $valoreditaridentificadorpoliza . " ";
    echo "fechavencimientoeditarpoliza: " . $valoreditarfechavencimientopoliza . " ";
    echo "fecharegistroeditarpoliza: " . $valoreditarfecharegistropoliza . " ";

    if ($valoreditartipopolizas == 1) {
        $rutaarchivo = "../../archivos/files/files_unidades/polizas_seguros/";
    } else if ($valoreditartipopolizas == 2) {
        $rutaarchivo = "../../archivos/files/files_unidades/polizas_tenencias/";
    }

    //obtener dcumento poliza
    $documento_poliza = $_FILES['editar_documento_poliza']['tmp_name'];

    //verificar si se movio el archivo
    if (move_uploaded_file($documento_poliza, $rutaarchivo . $valordocumento_editar_poliza)) {

        //insertar la poliza
        $sql = "UPDATE polizas SET id_tipo_poliza = $valoreditartipopolizas,
                        identificador_poliza = '$valoreditaridentificadorpoliza', 
                        fecha_registro_poliza = '$valoreditarfecharegistropoliza', 
                        fecha_vencimiento_poliza = '$valoreditarfechavencimientopoliza', 
                        documento_poliza = '$valordocumento_editar_poliza' WHERE id_polizas= $valorid_poliza";

        $ejecutar = mysqli_query($conexion, $sql);

        if ($ejecutar) {
            echo "Poliza insertada correctamente";
        } else {
            echo "Error al insertar la poliza";
        }
    } else {
        echo "no se movio el archivo";
    }
} else {
    echo "faltan datos";
}

?>