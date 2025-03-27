<?php


include("../../conexion.php");

if (isset($_POST['id_unidad'])) {
    $id_unidad = $_POST['id_unidad']; //obtenemos el id de la unidad

    $query = "SELECT * FROM polizas WHERE id_unidad = '$id_unidad' and id_tipo_poliza = 2"; //obtenemos las tenencias de la unidad"
    $ejecutar = mysqli_query($conexion, $query);

    //Hacemos el titulo de la tabla
    echo '<table class="table table-striped  ">
    <thead>
        <tr>
            <th scope="col"></th>
            <th scope="col">Unidad</th>
            <th scope="col">Identificador de póliza</th>
            <th scope="col">Fecha de registro</th>
            <th scope="col">Fecha de vencimiento</th>
            <th scope="col">Documento</th>
        </tr>
    </thead>
    <tbody>';
    
    if (mysqli_num_rows($ejecutar) > 0) {
        while ($data = mysqli_fetch_array($ejecutar)) {
            echo '<tr>
            <td>
                <button class="btn btn-warning btn-sm btneditarpolizas" data-id=" ' . $data['id_polizas'] . '"> <i class="fas fa-edit"></i> Editar </button>
            </td>
            <th scope="row">' . $data['id_unidad'] . '</th>
            <td>' . $data['identificador_poliza'] . '</td>
            <td>' . $data['fecha_registro_poliza'] . '</td>
            <td>' . $data['fecha_vencimiento_poliza'] . '</td>
            <td>' . $data['documento_poliza'] . '</td>
        </tr>';
        }
    } else {
        echo '<tr>
            <td colspan="7">No se encontraron pólizas</td>
        </tr>';
    }
} else {
    echo "No se recibio el id de la unidad";
}
