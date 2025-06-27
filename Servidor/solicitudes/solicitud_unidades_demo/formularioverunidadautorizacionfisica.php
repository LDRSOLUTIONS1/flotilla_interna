<?php
include("../../conexion.php");

if (
    isset($_POST['idunidad']) &&
    isset($_POST['idasignaciondemo']) &&
    isset($_POST['idpersonafisica'])
) {
    $idunidad = $_POST['idunidad'];
    $idasignaciondemo = $_POST['idasignaciondemo'];
    $idpersonafisica = $_POST['idpersonafisica'];

    // Inicializar variables por si no se obtienen datos
    $img_unidad = '';
    $nombre_modelo = '';
    $nombre_marca = '';
    $fecha_prestamo = '';
    $tipo_unidad = '';
    $ubicacion = '';
    $vin = '';
    $numero_motor = '';
    $placa = '';
    $tarjeta_circulacion = '';
    $color = '';
    $archivo_comodato_sin_firmar = ''; // También deberías revisar dónde se asigna

    $queryobtenerinfounidadcartaresponsiva = "SELECT u.id_unidad,
                                            u.id_modelo,
                                            u.id_estado_unidad,
                                            u.id_estatus_unidad,
                                            u.id_tipo_unidad,
                                            u.id_tipo_adquisicion,
                                            u.id_sede,
                                            u.vin,
                                            u.numero_motor,
                                            u.placa,
                                            u.costo_neto,
                                            u.id_color,
                                            u.img_unidad,
                                            col.id_colaborador,
                                            col.nombre_1,
                                            col.nombre_2,
                                            col.apellido_paterno,
                                            col.apellido_materno,
                                            marc.id_marca,
                                            marc.nombre_marca,
                                            mode.nombre_modelo,
                                            tipunidad.id_tipo_unidad,
                                            tipunidad.tipo_unidad,
                                            sed.id_sede,
                                            sed.ubicacion,
                                            asigun.fecha_prestamo,
                                            unidcolor.id_color,
                                            unidcolor.color_unidad
                                        FROM asignacion_unidad_demo AS asigun
                                        INNER JOIN unidades AS u
                                            ON asigun.id_unidad = u.id_unidad
                                        INNER JOIN modelos AS mode
                                            ON u.id_modelo = mode.id_modelo
                                        INNER JOIN marcas AS marc
                                            ON mode.id_marca = marc.id_marca
                                        INNER JOIN estado_unidad AS estado
                                            ON u.id_estado_unidad = estado.id_estado_unidad
                                        INNER JOIN estatus_unidades AS estat
                                            ON u.id_estatus_unidad = estat.id_estatus_unidad
                                        INNER JOIN tipo_unidad AS tipunidad
                                            ON u.id_tipo_unidad = tipunidad.id_tipo_unidad
                                        INNER JOIN sedes AS sed
                                            ON u.id_sede = sed.id_sede
                                        INNER JOIN tipo_adquisicion AS tipadquisicion
                                            ON u.id_tipo_adquisicion = tipadquisicion.id_tipo_adquisicion
                                        INNER JOIN unidad_color AS unidcolor
                                            ON u.id_color = unidcolor.id_color
                                        INNER JOIN colaboradores AS col
                                            ON asigun.id_colaborador_que_asigna = col.id_colaborador
                                        WHERE asigun.id_asignacion_unidad_demo = '$idasignaciondemo'
";

    $resultadoinfounidadcartaresponsiva = $conexion->query($queryobtenerinfounidadcartaresponsiva);

    if ($fila = $resultadoinfounidadcartaresponsiva->fetch_assoc()) {
        $img_unidad = $fila['img_unidad'];
        $colaboradorqueasigna = $fila['nombre_1'] . '' . $fila['nombre_2'] . ' ' . $fila['apellido_paterno'] . ' ' . $fila['apellido_materno'];
        $nombre_modelo = $fila['nombre_modelo'];
        $nombre_marca = $fila['nombre_marca'];
        $fecha_prestamo = $fila['fecha_prestamo'];
        $tipo_unidad = $fila['tipo_unidad'];
        $ubicacion = $fila['ubicacion'];
        $vin = $fila['vin'];
        $numero_motor = $fila['numero_motor'];
        $placa = $fila['placa'];
        $tarjeta_circulacion = $fila['costo_neto'];
        $color = $fila['color_unidad'];
    }

    echo '<div class="row">
    <div class="col-6">
        <img src="../../Servidor/archivos/imagenes/imagenes_unidades/' . htmlspecialchars($img_unidad) . '" class="card-img-top img-fluid imgcardverificarcomodato" onerror="this.src=\'../../../Cliente/img/unidades/carro_desconocido.png\'" alt="Unidad">
        </div>
    <div class="col-6">
        <div class="card-body ">

        <h5 class="card-title"><strong>' . htmlspecialchars($nombre_modelo) . ' ' . htmlspecialchars($nombre_marca) . '</strong></h5>
        <h6 class="card-title"><strong>Colaborador que asigna: </strong>' . htmlspecialchars($colaboradorqueasigna) . '</h6>
        <h6 class="card-text"><strong>Fecha de asignación: </strong>' . htmlspecialchars($fecha_prestamo) . '</h6>
        <h6 class="card-text"><strong>Tipo de unidad: </strong>' . htmlspecialchars($tipo_unidad) . '</h6>
        <h6 class="card-text"><strong>Sede: </strong>' . htmlspecialchars($ubicacion) . '</h6>
        <h6 class="card-text"><strong>VIN: </strong>' . htmlspecialchars($vin) . '</h6>
        <h6 class="card-text"><strong>N° Motor: </strong>' . htmlspecialchars($numero_motor) . '</h6>
        <h6 class="card-text"><strong>Placa: </strong>' . htmlspecialchars($placa) . '</h6>
        <h6 class="card-text"><strong>Costo neto: </strong>' . htmlspecialchars($tarjeta_circulacion) . '</h6>
        <h6 class="card-text"><strong>Color: </strong>' . htmlspecialchars($color) . '</h6>
        </div>
    </div>';
    }
?>