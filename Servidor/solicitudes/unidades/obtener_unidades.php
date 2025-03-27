<?php

include(__DIR__ . "/../../conexion.php");

if (!isset($_SESSION)) {
    session_start();
}

$id_usuario = $_SESSION['id_usuario'];
// Query para obtener solo los campos requeridos
$sql = "SELECT ung.id_unidad,
        marc.nombre_marca,  
        model.nombre_modelo,
        ung.placa,
        unest.estado,
        sed.ubicacion
FROM unidades AS ung
INNER JOIN modelos AS model ON ung.id_modelo = model.id_modelo 
INNER JOIN marcas AS marc ON model.id_marca = marc.id_marca  
INNER JOIN estado_unidad AS unest ON ung.id_estado_unidad = unest.id_estado_unidad
INNER JOIN sedes AS sed ON ung.id_sede = sed.id_sede";

$resultado = $conexion->query($sql);

if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>
                <td>
                    <button class='btn btn-warning btn-sm btneditarunidades' data-id='".$fila['id_unidad']."'>
                        <i class='fas fa-edit'></i>Editar
                    </button>
                </td>
                <td>".$fila['id_unidad']."</td>
                <td>".$fila['nombre_marca']."</td>
                <td>".$fila['nombre_modelo']."</td>
                <td>".$fila['placa']."</td>
                <td>".$fila['estado']."</td>
                <td>".$fila['ubicacion']."</td>
                <td>
                    <button class='btn btn-success btn-sm btnpolizasunidades' data-id='{$fila['id_unidad']}'>
                        <i class='fas fa-file-contract'></i> Pólizas
                    </button>
                </td>
                <td>
                <button class='btn btn-danger btn-sm btndar-baja'>
                        <i class='fas fa-ban'></i> Inhabilitar
                    </button>
                </td>
            </tr>";
    }
} else {
    echo "<tr><td colspan='7'>No se encontraron resultados.</td></tr>";
}

