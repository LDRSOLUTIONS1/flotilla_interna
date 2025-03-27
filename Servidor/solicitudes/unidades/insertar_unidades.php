<?php 

include("../../conexion.php");

if (isset($_FILES['imagen_unidad'])  
    && isset($_POST['marcaunidad']) && isset($_POST['modelounidad']) && isset($_POST['VIN']) 
    && isset($_POST['placaunidad']) && isset($_POST['kilometrajeunidad']) && isset($_POST['colorunidad']) 
    && isset($_POST['tarjetacirculacionunidad']) && isset($_POST['estadounidad']) && isset($_POST['estatusunidad']) 
    && isset($_POST['tipounidad']) && isset($_POST['sedeunidad']) && isset($_POST['tipoadquisicionunidad']) 
    && isset($_POST['detalleadquisicion']) && isset($_POST['fechaadquisicionunidad'])){
    

    $valormarcaunidad = $_POST['marcaunidad'];
    $valormodelounidad = $_POST['modelounidad'];
    $valorVIN = $_POST['VIN'];
    $valorplacaunidad = $_POST['placaunidad'];
    $valorkilometrajeunidad = $_POST['kilometrajeunidad'];
    $valorcolorunidad = $_POST['colorunidad'];
    $valortarjetacirculacionunidad = $_POST['tarjetacirculacionunidad'];
    $valorestadounidad = $_POST['estadounidad'];
    $valorestatusunidad = $_POST['estatusunidad'];
    $valortipounidad = $_POST['tipounidad'];
    $valorsedeunidad = $_POST['sedeunidad'];
    $valortipoadquisicionunidad = $_POST['tipoadquisicionunidad'];
    $valordetalleadquisicion = $_POST['detalleadquisicion'];
    $valorfechaadquisicionunidad = $_POST['fechaadquisicionunidad'];

    echo "marcaunidad: " . $valormarcaunidad . " ";
    echo "modelounidad: " . $valormodelounidad . " ";
    echo "VIN: " . $valorVIN . " ";
    echo "placaunidad: " . $valorplacaunidad . " ";
    echo "kilometrajeunidad: " . $valorkilometrajeunidad . " ";
    echo "colorunidad: " . $valorcolorunidad . " ";
    echo "tarjetacirculacionunidad: " . $valortarjetacirculacionunidad . " ";
    echo "estadounidad: " . $valorestadounidad . " ";
    echo "estatusunidad: " . $valorestatusunidad . " ";
    echo "tipounidad: " . $valortipounidad . " ";
    echo "sedeunidad: " . $valorsedeunidad . " ";
    echo "tipoadquisicionunidad: " . $valortipoadquisicionunidad . " ";
    echo "detalleadquisicion: " . $valordetalleadquisicion . " ";
    echo "fechaadquisicionunidad: " . $valorfechaadquisicionunidad . " ";



    //obtener documentos de la unidad  
    $nombrearchivoimagenunidad = 'img_' . $valorplacaunidad . '_' . basename($_FILES['imagen_unidad']['name']);

    $rutaarchivoimagenunidad = "../../archivos/imagenes/imagenes_unidades/";

    move_uploaded_file($_FILES['imagen_unidad']['tmp_name'], $rutaarchivoimagenunidad . $nombrearchivoimagenunidad);  


    //insertar la unidad

    $query = "INSERT INTO unidades (id_modelo, id_estado_unidad, id_estatus_unidad, id_tipo_unidad, id_tipo_adquisicion, id_sede, vin, kilometraje, placa, tarjeta_circulacion, color, img_unidad, fecha_adquisicion, detalles_adquisicion) VALUES ('$valormodelounidad', '$valorestadounidad', '$valorestatusunidad', '$valortipounidad', '$valortipoadquisicionunidad', '$valorsedeunidad', '$valorVIN', '$valorkilometrajeunidad', '$valorplacaunidad', '$valortarjetacirculacionunidad', '$valorcolorunidad', '$nombrearchivoimagenunidad', '$valorfechaadquisicionunidad', '$valordetalleadquisicion')";

    $ejecutar = mysqli_query($conexion, $query);

    if ($ejecutar) {
        echo "Unidad insertada correctamente";
    }
} else {
    echo "Faltan datos";
}
?>