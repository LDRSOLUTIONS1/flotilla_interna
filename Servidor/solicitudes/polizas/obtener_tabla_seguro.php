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

    $query = "SELECT aseg.numero_poliza_aseguradora,
                     aseg.id_asignacion_aseguradora,
                     aseg.fecha_alta,
                     aseg.fecha_vencimiento,
                     aseg.documento_aseguradora,
                    unid.id_unidad,
                    catlogo.id_aseguradora,
                    catlogo.aseguradora,
                    estat_aseg.estatus,
                    estad_aseg.estado_aseguradora
                FROM asignacion_aseguradora_unidad AS aseg
                INNER JOIN unidades AS unid
                ON aseg.id_unidad = unid.id_unidad
                INNER JOIN aseguradoras AS catlogo
                ON aseg.id_aseguradora = catlogo.id_aseguradora
                INNER JOIN estatus_aseguradora AS estat_aseg
                ON aseg.id_estatus_aseguradora = estat_aseg.id_estatus_aseguradora
                INNER JOIN estado_aseguradora AS estad_aseg
                ON aseg.id_estado_aseguradora = estad_aseg.id_estado_aseguradora
            WHERE unid.id_unidad = '$id_unidad'"; //obtenemos las polizas de la unidad"
    $ejecutar = mysqli_query($conexion, $query);

    //Hacemos el titulo de la tabla
    if ($id_tipo_usuario == 1): // Administrador 
    echo '<table class="table table-striped  ">
    <thead style="background-color:rgba(119, 120, 121, 0.68); color: white;">
        <tr titulostablaunidades>
            <th scope="col"></th>
            <th scope="col">Unidad</th>
            <th scope="col">Folio</th>
            <th scope="col">Alta</th>
            <th scope="col">Vencimiento</th>
            <th scope="col">Aseguradora</th>
            <th scope="col">Estatus</th>
            <th scope="col">Estado</th>
            <th scope="col">Imagen</th>
        </tr>
    </thead>
    <tbody>';

    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditarpolizas" data-id="' . $data['id_asignacion_aseguradora'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['numero_poliza_aseguradora'] . '</td>
            <td>' . $data['fecha_alta'] . '</td>
            <td>' . $data['fecha_vencimiento'] . '</td>
            <td>' . $data['aseguradora'] . '</td>
            <td>' . $data['estatus'] . '</td>
            <td>' . $data['estado_aseguradora'] . '</td>
            <td>';
            if (!empty($data['documento_aseguradora']) && $data['documento_aseguradora'] != "SIN ASIGNAR") {
                echo '<a href="../../Servidor/archivos/files/files_unidades/polizas_seguros/' . $data['documento_aseguradora'] . '" target="_blank" class="btn btn-success"><i class="fas fa-eye"></i></a>';
            }
            echo '</td>
        </tr>';
        }
    } else {
        echo '<tr>
            <td colspan="7">No se encontraron polizas</td>
        </tr>';
    }
    elseif ($id_tipo_usuario == 4): // Administrador DEMOS 
        echo '<table class="table table-striped  ">
    <thead style="background-color:rgba(119, 120, 121, 0.68); color: white;">
        <tr titulostablaunidades>
            <th scope="col"></th>
            <th scope="col">Unidad</th>
            <th scope="col">Folio</th>
            <th scope="col">Alta</th>
            <th scope="col">Vencimiento</th>
            <th scope="col">Aseguradora</th>
            <th scope="col">Estatus</th>
            <th scope="col">Estado</th>
            <th scope="col">Imagen</th>
        </tr>
    </thead>
    <tbody>';

    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditarpolizas" data-id="' . $data['id_asignacion_aseguradora'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['numero_poliza_aseguradora'] . '</td>
            <td>' . $data['fecha_alta'] . '</td>
            <td>' . $data['fecha_vencimiento'] . '</td>
            <td>' . $data['aseguradora'] . '</td>
            <td>' . $data['estatus'] . '</td>
            <td>' . $data['estado_aseguradora'] . '</td>
            <td>';
            if (!empty($data['documento_aseguradora']) && $data['documento_aseguradora'] != "SIN ASIGNAR") {
                echo '<a href="../../Servidor/archivos/files/files_unidades/polizas_seguros/' . $data['documento_aseguradora'] . '" target="_blank" class="btn btn-success"><i class="fas fa-eye"></i></a>';
            }
            echo '</td>
        </tr>';
        }
    } else {
        echo '<tr>
            <td colspan="7">No se encontraron polizas</td>
        </tr>';
    }
    endif;
} else {
    echo "No se recibio el id de la unidad";
}

