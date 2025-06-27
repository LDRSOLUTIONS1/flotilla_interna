<?php


include("../../conexion.php");

//OBTENEMOS LOS USUSARIOS TIPO ADMIN DEMOS
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$id_usuario = $resultado->fetch_assoc()['id_usuario'];

// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$id_tipo_usuario = $resultado->fetch_assoc()['id_tipo_usuario'];

// Query base
if (isset($_POST['id_unidad'])) {
    $id_unidad = $_POST['id_unidad']; //obtenemos el id de la unidad

    $query = "SELECT 
                veri.id_verificaciones,
                veri.id_unidad,
                veri.folio,
                veri.monto,
                veri.año,
                veri.fecha_verificacion,
                veri.fecha_siguiente_verificacion,
                verisemestre.nombre_semestre,
                estatusveri.estatus
                FROM verificaciones AS veri
                INNER JOIN estatus_verificacion AS estatusveri
                ON veri.id_estatus_verificacion = estatusveri.id_estatus_verificacion
                INNER JOIN verificacion_semestre AS verisemestre
                ON veri.id_semestre = verisemestre.id_semestre
                WHERE veri.id_unidad = '$id_unidad'"; //obtenemos las tenencias de la unidad"
    $ejecutar = mysqli_query($conexion, $query);

    //Hacemos el titulo de la tabla
    if ($id_tipo_usuario == 1): // Administrador 
    echo '<table class="table table-striped  ">
    <thead style="background-color:rgba(119, 120, 121, 0.68); color: white;">
        <tr titulostablaunidades>
            <th scope="col"></th>
            <th scope="col">Unidad</th>
            <th scope="col">Folio</th>
            <th scope="col">Monto</th>
            <th scope="col">Año</th>
            <th scope="col">Semestre</th>
            <th scope="col">Fecha verificación</th>
            <th scope="col">Proxima verificación</th>
            <th scope="col">Estatus</th>
        </tr>
    </thead>
    <tbody>';
    
    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditarverificaciones" data-id="' . $data['id_verificaciones'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['folio'] . '</td>
            <td>$' . number_format($data['monto'], 2, '.', ',') . ' MXN</td>
            <td>' . $data['año'] . '</td>
            <td>' . $data['nombre_semestre'] . '</td>
            <td>' . $data['fecha_verificacion'] . '</td>
            <td>' . $data['fecha_siguiente_verificacion'] . '</td>
            <td>' . $data['estatus'] . '</td>
        </tr>';
        }
    } else {
        echo '<tr>
            <td colspan="7">No se encontraron pólizas</td>
        </tr>';
    }
    elseif ($id_tipo_usuario == 4): // Administrador DEMOS 
        echo '<table class="table table-striped  ">
    <thead style="background-color:rgba(119, 120, 121, 0.68); color: white;">
        <tr titulostablaunidades>
            <th scope="col"></th>
            <th scope="col">Unidad</th>
            <th scope="col">Folio</th>
            <th scope="col">Monto</th>
            <th scope="col">Año</th>
            <th scope="col">Semestre</th>
            <th scope="col">Fecha verificación</th>
            <th scope="col">Proxima verificación</th>
            <th scope="col">Estatus</th>
        </tr>
    </thead>
    <tbody>';
    
    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditarverificaciones" data-id="' . $data['id_verificaciones'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['folio'] . '</td>
            <td>$' . number_format($data['monto'], 2, '.', ',') . ' MXN</td>
            <td>' . $data['año'] . '</td>
            <td>' . $data['nombre_semestre'] . '</td>
            <td>' . $data['fecha_verificacion'] . '</td>
            <td>' . $data['fecha_siguiente_verificacion'] . '</td>
            <td>' . $data['estatus'] . '</td>
        </tr>';
        }
    } else {
        echo '<tr>
            <td colspan="7">No se encontraron pólizas</td>
        </tr>';
    }
    endif;
} else {
    echo "No se recibio el id de la unidad";
}
