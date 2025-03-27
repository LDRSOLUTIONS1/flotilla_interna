<?php
//activar debug php sirve para pruebas y produccion 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("../../conexion.php");

if (isset($_POST['polizas']) && isset($_POST['identificadorpoliza']) && isset($_POST['fecharegistropoliza']) && isset($_POST['fechavencimientopoliza']) && isset($_FILES['documento_poliza']) && isset($_POST['id_unidad'])) {

    $valor_idunidad = $_POST['id_unidad'];
    $valordocumento_poliza = $_FILES['documento_poliza']['name'];
    $valortipopolizas = $_POST['polizas'];
    $valorfecharegistropoliza = $_POST['fecharegistropoliza'];
    $valorfechavencimientopoliza = $_POST['fechavencimientopoliza'];
    $valoridentificadorpoliza = $_POST['identificadorpoliza'];

    echo "id_unidad: " . $valor_idunidad . " ";
    echo "documento_poliza: " . $valordocumento_poliza . " ";
    echo "polizas: " . $valortipopolizas . " ";
    echo "identificadorpoliza: " . $valoridentificadorpoliza . " ";
    echo "fechavencimientopoliza: " . $valorfechavencimientopoliza . " ";
    echo "fecharegistropoliza: " . $valorfecharegistropoliza . " ";

    if ($valortipopolizas == 1) {
        $rutaarchivo = "../../archivos/files/files_unidades/polizas_seguros/";
    } else if ($valortipopolizas == 2) {
        $rutaarchivo = "../../archivos/files/files_unidades/polizas_tenencias/";
    }

    //obtener dcumento poliza
    $documento_poliza = $_FILES['documento_poliza']['tmp_name'];

    //verificar si se movio el archivo
    if (move_uploaded_file($documento_poliza, $rutaarchivo . $valordocumento_poliza)) {

        //insertar la poliza
        $sql = "INSERT INTO polizas (id_tipo_poliza, id_unidad, identificador_poliza, fecha_registro_poliza, fecha_vencimiento_poliza, documento_poliza) VALUES ($valortipopolizas, $valor_idunidad, '$valoridentificadorpoliza','$valorfecharegistropoliza','$valorfechavencimientopoliza', '$valordocumento_poliza')";

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
