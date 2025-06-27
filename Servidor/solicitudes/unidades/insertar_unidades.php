<?php 

include("../../conexion.php");
//------------------------------------------------------------------CODIGO PPARA OBTENER EL ID DEL USUARIO QUE ESTA HACIENDO EL REGISTRO
if (!isset($_SESSION)) {
    session_start();
}

$creador_unidad = $_SESSION['id_colaborador'];

//------------------------------------------------------------------REALIZAMOS LA INSERCION DE LA UNIDAD OBENIENDO LOS PARAMETROS DEL JS 
if (isset($_POST['marcaunidad']) && isset($_POST['modelounidad']) && isset($_POST['VIN']) 
    && isset($_POST['placaunidad']) && isset($_POST['foliofactura'])&& isset($_POST['motorunidad']) && isset($_POST['colorunidad']) 
    && isset($_POST['tarjetacirculacionunidad']) && isset($_POST['estadounidad']) && isset($_POST['estatusunidad']) 
    && isset($_POST['tipounidad']) && isset($_POST['sedeunidad']) && isset($_POST['tipoadquisicionunidad']) && isset($_POST['fechaadquisicionunidad']) && isset($_POST['añounidad']) && isset($_POST['arrendadora'])) {
    

    $valormarcaunidad = $_POST['marcaunidad'];
    $valormodelounidad = $_POST['modelounidad'];
    $valorVIN = $_POST['VIN'];
    $valorplacaunidad = $_POST['placaunidad'];
    $valormotorunidad = $_POST['motorunidad'];
    $valorañounidad = $_POST['añounidad'];
    $valorcolorunidad = $_POST['colorunidad'];
    $valortarjetacirculacionunidad = $_POST['tarjetacirculacionunidad'];
    $valorestadounidad = $_POST['estadounidad'];
    $valorestatusunidad = $_POST['estatusunidad'];
    $valortipounidad = $_POST['tipounidad'];
    $valorsedeunidad = $_POST['sedeunidad'];
    $valortipoadquisicionunidad = $_POST['tipoadquisicionunidad'];
    $valorfechaadquisicionunidad = $_POST['fechaadquisicionunidad'];
    $valorfoliofactura = $_POST['foliofactura'];
    $valorarrendadora = $_POST['arrendadora'];

    //valores de unidades demos
    $valorcapacidad_carga = $_POST['capacidad_carga'];
    $valorcapacidad_pasajeros = $_POST['capacidad_pasajeros'];
    $valortipo_combustible = $_POST['tipo_combustible'];
    $valortraccion = $_POST['traccion'];
    $valortipo_carroceria = $_POST['tipo_carroceria'];
    $valornumero_puertas = $_POST['numero_puertas'];
    $valornumero_asientos = $_POST['numero_asientos'];
    $valortipo_caja = $_POST['tipo_caja'];
    $valortipo_frenos = $_POST['tipo_frenos'];
    $valorsuspension = $_POST['suspension'];
    $valornumero_ejes = $_POST['numero_ejes'];
    $valoruso_permitido = $_POST['uso_permitido'];
    $valorcamara_reversa = $_POST['camara_reversa'];
    $valorsensores_reversa = $_POST['sensores_reversa'];

    echo "marcaunidad: " . $valormarcaunidad . " ";
    echo "modelounidad: " . $valormodelounidad . " ";
    echo "VIN: " . $valorVIN . " ";
    echo "placaunidad: " . $valorplacaunidad . " ";
    echo "motorunidad: " . $valormotorunidad . " ";
    echo "añounidad: " . $valorañounidad . " ";
    echo "colorunidad: " . $valorcolorunidad . " ";
    echo "tarjetacirculacionunidad: " . $valortarjetacirculacionunidad . " ";
    echo "estadounidad: " . $valorestadounidad . " ";
    echo "estatusunidad: " . $valorestatusunidad . " ";
    echo "tipounidad: " . $valortipounidad . " ";
    echo "sedeunidad: " . $valorsedeunidad . " ";
    echo "tipoadquisicionunidad: " . $valortipoadquisicionunidad . " ";
    echo "fechaadquisicionunidad: " . $valorfechaadquisicionunidad . " ";
    echo "foliofactura: " . $valorfoliofactura . " ";
    echo "arrendadora: " . $valorarrendadora . " ";

    echo "capacidad_carga: " . $valorcapacidad_carga . " ";
    echo "capacidad_pasajeros: " . $valorcapacidad_pasajeros . " ";
    echo "tipo_combustible: " . $valortipo_combustible . " ";
    echo "traccion: " . $valortraccion . " ";
    echo "tipo_carroceria: " . $valortipo_carroceria . " ";
    echo "numero_puertas: " . $valornumero_puertas . " ";
    echo "numero_asientos: " . $valornumero_asientos . " ";
    echo "tipo_caja: " . $valortipo_caja . " ";
    echo "tipo_frenos: " . $valortipo_frenos . " ";
    echo "suspension: " . $valorsuspension . " ";
    echo "numero_ejes: " . $valornumero_ejes . " ";
    echo "uso_permitido: " . $valoruso_permitido . " ";
    echo "camara_reversa: " . $valorcamara_reversa . " ";
    echo "sensores_reversa: " . $valorsensores_reversa . " ";



    //obtener documentos de la unidad  
    $nombrearchivoimagenunidad = 'img_' . $valorplacaunidad . '_' . basename($_FILES['imagen_unidad']['name']);

    $rutaarchivoimagenunidad = "../../archivos/imagenes/imagenes_unidades/";

    move_uploaded_file($_FILES['imagen_unidad']['tmp_name'], $rutaarchivoimagenunidad . $nombrearchivoimagenunidad);  


    //insertar la unidad

    $query = "INSERT INTO unidades (
                                    id_creador_unidad,
                                    id_modelo, 
                                    id_estado_unidad, 
                                    id_estatus_unidad, 
                                    id_tipo_unidad, 
                                    id_tipo_adquisicion, 
                                    id_sede, 
                                    vin,
                                    numero_motor, 
                                    placa, 
                                    costo_neto, 
                                    id_color, 
                                    img_unidad, 
                                    fecha_adquisicion, 
                                    año_unidad,
                                    id_arrendadora,
                                    folio_factura,
                                    capacidad_carga,
                                    capacidad_pasajeros,
                                    id_tipo_combustible,
                                    id_traccion,
                                    tipo_carrceria,
                                    numero_puertas,
                                    numero_asientos,
                                    id_tipo_caja,
                                    id_tipo_freno,
                                    id_tipo_suspencion,
                                    numero_ejes,
                                    id_tipo_uso,
                                    camara_reversa,
                                    sensores_reversa) 
                VALUES ('$creador_unidad',
                        '$valormodelounidad', 
                        '$valorestadounidad', 
                        '$valorestatusunidad', 
                        '$valortipounidad', 
                        '$valortipoadquisicionunidad', 
                        '$valorsedeunidad', 
                        '$valorVIN', 
                        '$valormotorunidad', 
                        '$valorplacaunidad', 
                        '$valortarjetacirculacionunidad', 
                        '$valorcolorunidad', 
                        '$nombrearchivoimagenunidad', 
                        '$valorfechaadquisicionunidad', 
                        '$valorañounidad',
                        '$valorarrendadora',
                        '$valorfoliofactura',
                        '$valorcapacidad_carga',
                        '$valorcapacidad_pasajeros',
                        '$valortipo_combustible',
                        '$valortraccion',
                        '$valortipo_carroceria',
                        '$valornumero_puertas',
                        '$valornumero_asientos',
                        '$valortipo_caja',
                        '$valortipo_frenos',
                        '$valorsuspension',
                        '$valornumero_ejes',
                        '$valoruso_permitido',
                        '$valorcamara_reversa',
                        '$valorsensores_reversa')";

    $ejecutar = mysqli_query($conexion, $query);

    if ($ejecutar) {
        echo "Unidad insertada correctamente";
    }
} else {
    echo "Faltan datos";
}
?>