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

    $query = "SELECT ten.id_tenencias,
                    ten.id_unidad,
                    ten.folio,
                    ten.año_semestre,
                    ten.id_estatus_tenencias,
                    ten.monto_pago,
                    ten.fecha_pago,
                    ten.fecha_vencimiento,
                    ten.documento_tenencia,
                    estatenencia.estatus
                FROM tenencias AS ten
                INNER JOIN estatus_tenencias AS estatenencia
                ON ten.id_estatus_tenencias = estatenencia.id_estatus_tenencias
                WHERE ten.id_unidad = '$id_unidad'"; //obtenemos las tenencias de la unidad"
    $ejecutar = mysqli_query($conexion, $query);

    //Hacemos el titulo de la tabla
    if ($id_tipo_usuario == 1): // Administrador 
    echo '<table class="table table-striped  ">
    <thead style="background-color:rgba(119, 120, 121, 0.68); color: white;">
        <tr titulostablaunidades>
            <th scope="col"></th>
            <th scope="col">Unidad</th>
            <th scope="col">Folio</th>
            <th scope="col">Año semestre</th>
            <th scope="col">Estatus</th>
            <th scope="col">Monto</th>
            <th scope="col">Pago</th>
            <th scope="col">Vencimiento</th>
            <th scope="col"> Imagen</th>
        </tr>
    </thead>
    <tbody>';
    
    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditartenencias" data-id="' . $data['id_tenencias'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['folio'] . '</td>
            <td>' . $data['año_semestre'] . '</td>
            <td>' . $data['estatus'] . '</td>
            <td>$' . number_format($data['monto_pago'], 2, '.', ',') . ' MXN</td>
            <td>' . $data['fecha_pago'] . '</td>
            <td>' . $data['fecha_vencimiento'] . '</td>
            <td>';
            if (!empty($data['documento_tenencia'])) {
                echo '<a href="../../Servidor/archivos/files/files_unidades/polizas_tenencias/' . $data['documento_tenencia'] . '" target="_blank" class="btn btn-success"><i class="fas fa-eye"></i></a>';
            }
            echo '</td>
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
            <th scope="col">Año semestre</th>
            <th scope="col">Estatus</th>
            <th scope="col">Monto</th>
            <th scope="col">Pago</th>
            <th scope="col">Vencimiento</th>
            <th scope="col"> Imagen</th>
        </tr>
    </thead>
    <tbody>';
    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditartenencias" data-id="' . $data['id_tenencias'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['folio'] . '</td>
            <td>' . $data['año_semestre'] . '</td>
            <td>' . $data['estatus'] . '</td>
            <td>$' . number_format($data['monto_pago'], 2, '.', ',') . ' MXN</td>
            <td>' . $data['fecha_pago'] . '</td>
            <td>' . $data['fecha_vencimiento'] . '</td>
            <td>';
            if (!empty($data['documento_tenencia'])) {
                echo '<a href="../../Servidor/archivos/files/files_unidades/polizas_tenencias/' . $data['documento_tenencia'] . '" target="_blank" class="btn btn-success"><i class="fas fa-eye"></i></a>';
            }
            echo '</td>
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
