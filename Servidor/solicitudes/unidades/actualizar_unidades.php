<?php 
include("../../conexion.php");

if (isset($_POST['id_unidad']) && isset($_POST['marcaeditarunidad'])  && isset($_POST['modeloeditarunidad']) && isset($_POST['editarVIN']) && isset($_POST['editarPlaca']) && isset($_POST['editarKilometraje']) && isset($_POST['editarColor']) && isset($_POST['editarTarjetaCirculacion']) && isset($_POST['editarEstadoUnidad']) && isset($_POST['editarEstatusUnidad']) && isset($_POST['editarTipoUnidad']) && isset($_POST['editsedeunidad']) && isset($_POST['editarfechaadquisicionunidad']) && isset($_POST['editartipoadquisicionunidad']) && isset($_POST['editardetalleadquisicion']) && isset($_FILES['imagen_unidad'])) {

    $valorid_unidad = $_POST['id_unidad'];
    $valormarcaeditarunidad = $_POST['marcaeditarunidad'];
    $valormodeloeditarunidad = $_POST['modeloeditarunidad'];
    $valorVINeditar = $_POST['editarVIN'];
    $valorPlacaeditar = $_POST['editarPlaca'];
    $valorKilometrajeeditar = $_POST['editarKilometraje'];
    $valorColoreditar = $_POST['editarColor'];
    $valorTarjetaCirculacioneditar = $_POST['editarTarjetaCirculacion'];
    $valorEstadoUnidadeditar = $_POST['editarEstadoUnidad'];
    $valorEstatusUnidadeditar = $_POST['editarEstatusUnidad'];
    $valorTipoUnidadeditar = $_POST['editarTipoUnidad'];
    $valorsedeunidadeditar = $_POST['editsedeunidad'];
    $valorfechaadquisicionunidadeditar = $_POST['editarfechaadquisicionunidad'];
    $valortipoadquisicionunidadeditar = $_POST['editartipoadquisicionunidad'];
    $valordetalleadquisicioneditar = $_POST['editardetalleadquisicion'];

    $nombrearchivoimagenunidad = 'img_' . $valorPlacaeditar . '_' . basename($_FILES['imagen_unidad']['name']);
    $rutaarchivoimagenunidad  = "../../archivos/imagenes/imagenes_unidades/";

    echo "id_unidad: " . $valorid_unidad . " ";
    echo "marcaeditarunidad: " . $valormarcaeditarunidad . " ";
    echo "modeloeditarunidad: " . $valormodeloeditarunidad . " ";
    echo "editarVIN: " . $valorVINeditar . " ";
    echo "editarPlaca: " . $valorPlacaeditar . " ";
    echo "editarKilometraje: " . $valorKilometrajeeditar . " ";
    echo "editarColor: " . $valorColoreditar . " ";
    echo "editarTarjetaCirculacion: " . $valorTarjetaCirculacioneditar . " ";
    echo "editarEstadoUnidad: " . $valorEstadoUnidadeditar . " ";
    echo "editarEstatusUnidad: " . $valorEstatusUnidadeditar . " ";
    echo "editarTipoUnidad: " . $valorTipoUnidadeditar . " ";
    echo "editsedeunidad: " . $valorsedeunidadeditar . " ";
    echo "editarfechaadquisicionunidad: " . $valorfechaadquisicionunidadeditar . " ";
    echo "editartipoadquisicionunidad: " . $valortipoadquisicionunidadeditar . " ";
    echo "editardetalleadquisicion: " . $valordetalleadquisicioneditar . " ";
    echo "imagen_unidad: " . $nombrearchivoimagenunidad . " ";

    if (move_uploaded_file($_FILES['imagen_unidad']['tmp_name'], $rutaarchivoimagenunidad . $nombrearchivoimagenunidad)) {
        $sql = "UPDATE unidades SET 
            id_modelo = '$valormodeloeditarunidad',
            vin = '$valorVINeditar',
            placa = '$valorPlacaeditar',
            kilometraje = '$valorKilometrajeeditar',
            color = '$valorColoreditar',
            tarjeta_circulacion = '$valorTarjetaCirculacioneditar',
            id_estado_unidad = '$valorEstadoUnidadeditar',
            id_estatus_unidad = '$valorEstatusUnidadeditar',
            id_tipo_unidad = '$valorTipoUnidadeditar',
            id_sede = '$valorsedeunidadeditar',
            fecha_adquisicion = '$valorfechaadquisicionunidadeditar',
            id_tipo_adquisicion = '$valortipoadquisicionunidadeditar',
            detalles_adquisicion = '$valordetalleadquisicioneditar',
            img_unidad = '$nombrearchivoimagenunidad' 
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
    echo "Faltan datos";
}
?>
