<?php
include("../../conexion.php");

if (isset($_POST['id_unidad']) && isset($_POST['marcaeditarunidad'])  && isset($_POST['modeloeditarunidad']) && isset($_POST['editarVIN'])) {

    $valorid_unidad = $_POST['id_unidad'];
    $valormarcaeditarunidad = $_POST['marcaeditarunidad'];
    $valormodeloeditarunidad = $_POST['modeloeditarunidad'];
    $valorVINeditar = $_POST['editarVIN'];
    $valorPlacaeditar = $_POST['editarPlaca'];
    $valorNumeroMotoreditar = $_POST['editarNumeroMotor'];
    $valorColoreditar = $_POST['editarColor'];
    $valorTarjetaCirculacioneditar = $_POST['editarTarjetaCirculacion'];
    $valoreditarañounidad = $_POST['editarañounidad'];
    $valorEstadoUnidadeditar = $_POST['editarEstadoUnidad'];
    $valorEstatusUnidadeditar = $_POST['editarEstatusUnidad'];
    $valorTipoUnidadeditar = $_POST['editarTipoUnidad'];
    $valorsedeunidadeditar = $_POST['editsedeunidad'];
    $valorfechaadquisicionunidadeditar = $_POST['editarfechaadquisicionunidad'];
    $valortipoadquisicionunidadeditar = $_POST['editartipoadquisicionunidad'];
    $valoreditartipoarrendadoraunidad = $_POST['editartipoarrendadoraunidad'];
    $valoreditarfoliofacturaunidad = $_POST['editarfoliofacturaunidad'];

    $valoreditarCarga = $_POST['editarCarga'];
    $valoreditarPasajeros = $_POST['editarPasajeros'];
    $valoreditarCombustible = $_POST['editarCombustible'];
    $valoreditarTraccion = $_POST['editarTraccion'];
    $valoreditarCarroceria = $_POST['editarCarroceria'];
    $valoreditarPuertas = $_POST['editarPuertas'];
    $valoreditarAsientos = $_POST['editarAsientos'];
    $valoreditarCaja = $_POST['editarCaja'];
    $valoreditarFreno = $_POST['editarFreno'];
    $valoreditarSuspencion = $_POST['editarSuspencion'];
    $valoreditarEjes = $_POST['editarEjes'];
    $valoreditarUso = $_POST['editarUso'];

    if (isset($_FILES['imagen_unidad']['tmp_name'])) {
        $nombrearchivoimagenunidad = 'img_' . $valorPlacaeditar . '_' . basename($_FILES['imagen_unidad']['name']);
        $rutaarchivoimagenunidad  = "../../archivos/imagenes/imagenes_unidades/";

        if (move_uploaded_file($_FILES['imagen_unidad']['tmp_name'], $rutaarchivoimagenunidad . $nombrearchivoimagenunidad)) {
            $sql = "UPDATE unidades SET 
                id_modelo = '$valormodeloeditarunidad',
                vin = '$valorVINeditar',
                placa = '$valorPlacaeditar',
                numero_motor = '$valorNumeroMotoreditar',
                id_color = '$valorColoreditar',
                costo_neto = '$valorTarjetaCirculacioneditar',
                año_unidad = '$valoreditarañounidad',
                id_estado_unidad = '$valorEstadoUnidadeditar',
                id_estatus_unidad = '$valorEstatusUnidadeditar',
                id_tipo_unidad = '$valorTipoUnidadeditar',
                id_sede = '$valorsedeunidadeditar',
                fecha_adquisicion = '$valorfechaadquisicionunidadeditar',
                id_tipo_adquisicion = '$valortipoadquisicionunidadeditar',
                id_arrendadora = '$valoreditartipoarrendadoraunidad',
                folio_factura = '$valoreditarfoliofacturaunidad',
                img_unidad = '$nombrearchivoimagenunidad' ,
                capacidad_carga = '$valoreditarCarga',
                capacidad_pasajeros = '$valoreditarPasajeros',
                id_tipo_combustible = '$valoreditarCombustible',
                id_traccion = '$valoreditarTraccion',
                tipo_carrceria = '$valoreditarCarroceria',
                numero_puertas = '$valoreditarPuertas',
                numero_asientos = '$valoreditarAsientos',
                id_tipo_caja = '$valoreditarCaja',
                id_tipo_freno = '$valoreditarFreno',
                id_tipo_suspencion = '$valoreditarSuspencion',
                numero_ejes = '$valoreditarEjes',
                id_tipo_uso = '$valoreditarUso'
                WHERE id_unidad = '$valorid_unidad'";

            $ejecutar = mysqli_query($conexion, $sql);

            if ($ejecutar) {
                echo "Unidad actualizada correctamente";
            } else {
                echo "Error al actualizar la unidad";
            }
        } else {
            echo "Error al subir la imagen";
        }
    } else {
        $sql = "UPDATE unidades SET 
            id_modelo = '$valormodeloeditarunidad',
            vin = '$valorVINeditar',
            placa = '$valorPlacaeditar',
            numero_motor = '$valorNumeroMotoreditar',
            id_color = '$valorColoreditar',
            costo_neto = '$valorTarjetaCirculacioneditar',
            año_unidad = '$valoreditarañounidad',
            id_estado_unidad = '$valorEstadoUnidadeditar',
            id_estatus_unidad = '$valorEstatusUnidadeditar',
            id_tipo_unidad = 3,
            id_sede = '$valorsedeunidadeditar',
            fecha_adquisicion = '$valorfechaadquisicionunidadeditar',
            id_tipo_adquisicion = '$valortipoadquisicionunidadeditar',
            id_arrendadora = '$valoreditartipoarrendadoraunidad',
            folio_factura = '$valoreditarfoliofacturaunidad',
            capacidad_carga = '$valoreditarCarga',
            capacidad_pasajeros = '$valoreditarPasajeros',
            id_tipo_combustible = '$valoreditarCombustible',
            id_traccion = '$valoreditarTraccion',
            tipo_carrceria = '$valoreditarCarroceria',
            numero_puertas = '$valoreditarPuertas',
            numero_asientos = '$valoreditarAsientos',
            id_tipo_caja = '$valoreditarCaja',
            id_tipo_freno = '$valoreditarFreno',
            id_tipo_suspencion = '$valoreditarSuspencion',
            numero_ejes = '$valoreditarEjes',
            id_tipo_uso = '$valoreditarUso'
            WHERE id_unidad = '$valorid_unidad'";

        $ejecutar = mysqli_query($conexion, $sql);

        if ($ejecutar) {
            echo "Unidad actualizada correctamente";
        } else {
            echo "Error al actualizar la unidad";
        }
    }
    
} else {
    echo "Faltan datos";
}
?>

