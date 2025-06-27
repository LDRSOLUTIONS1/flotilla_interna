<?php
include(__DIR__ . "/../../conexion.php");

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
$sql = "SELECT ung.id_unidad,
        marc.nombre_marca,  
        model.nombre_modelo,
        ung.placa,
        ung.vin,
        ung.ultimo_kilometraje,
        unest.estado,
        sed.ubicacion,
        tipunid.id_tipo_unidad,
        tipunid.tipo_unidad
FROM unidades AS ung
INNER JOIN modelos AS model ON ung.id_modelo = model.id_modelo 
INNER JOIN marcas AS marc ON model.id_marca = marc.id_marca  
INNER JOIN estado_unidad AS unest ON ung.id_estado_unidad = unest.id_estado_unidad
INNER JOIN tipo_unidad AS tipunid ON ung.id_tipo_unidad = tipunid.id_tipo_unidad
INNER JOIN sedes AS sed ON ung.id_sede = sed.id_sede";

// Filtrar si el usuario es ADMINISTRADOR DEMOS (id_tipo_usuario == 4)
if ($id_tipo_usuario == 4) {
    $sql .= " WHERE tipunid.id_tipo_unidad = 3";
}elseif ($id_tipo_usuario == 1){
    $sql .= " WHERE tipunid.id_tipo_unidad != 3";
}

$resultado = $conexion->query($sql);

if ($resultado->num_rows > 0) {
    if ($id_tipo_usuario == 1): // Administrador 
        while ($fila = $resultado->fetch_assoc()) {
            echo "<tr>
                    <td class='sticky-left-0'>
                        <button class='btn btn-editarunidades btn-sm btneditarunidades' data-id='" . $fila['id_unidad'] . "'>
                            <i class='fas fa-edit'></i> Editar
                        </button>
                    </td>
                    <td class='titulostablaunidades'>" . $fila['id_unidad'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['nombre_marca'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['nombre_modelo'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['placa'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['vin'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['estado'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['tipo_unidad'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['ubicacion'] . "</td>
                    <td class='titulostablaunidades'>" . ($fila['ultimo_kilometraje'] == 0.00 ? '<span class="text-danger">Unidad sin telemetría </span>' : number_format($fila['ultimo_kilometraje'], 2, '.', ',') . ' km') . "</td>
                    <td>
                        <button class='btn btn-sm btn-mapa btnubicacionunidad' data-vin='{$fila['vin']}'>
                            <i class='fa-solid fa-location-dot'></i> 
                        </button>
                    </td>
                    <td class='titulostablaunidades'>
                        <button class='btn btn-sm btn-aseguradora btnpolizasunidades' data-id='{$fila['id_unidad']}'>
                            <i class='fa-solid fa-file-pdf'></i> Aseguradora
                        </button>
                    </td>
                    <td>
                        <button class='btn btn-sm btn-tenencias btntenencias' data-id='{$fila['id_unidad']}'>
                            <i class='fa-solid fa-file-pdf'></i> Tenencias
                        </button>
                    </td>
                    <td>
                        <button class='btn btn-sm btn-verificaciones btnverificaciones' data-id='{$fila['id_unidad']}'>
                            <i class='fa-solid fa-file-pdf'></i> Verificaciones
                        </button>
                    </td>
                </tr>";
        }
    elseif ($id_tipo_usuario == 4): // Administrador DEMOS
        while ($fila = $resultado->fetch_assoc()) {
            echo "<tr>
                    <td class='sticky-left-0'>
                        <button class='btn btn-editarunidades btn-sm btneditarunidades' data-id='" . $fila['id_unidad'] . "'>
                            <i class='fas fa-edit'></i> Editar
                        </button>
                    </td>
                    <td class='titulostablaunidades'>" . $fila['id_unidad'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['nombre_marca'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['nombre_modelo'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['placa'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['vin'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['estado'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['tipo_unidad'] . "</td>
                    <td class='titulostablaunidades'>" . $fila['ubicacion'] . "</td>
                    <td class='titulostablaunidades'>" . ($fila['ultimo_kilometraje'] == 0.00 ? '<span class="text-danger">Unidad sin telemetría</span>' : number_format($fila['ultimo_kilometraje'], 2, '.', ',') . ' km') . "</td>
                    <td>
                        <button class='btn btn-sm btn-mapa btnubicacionunidad' data-vin='{$fila['vin']}'>
                            <i class='fa-solid fa-location-dot'></i> 
                        </button>
                    </td>
                    <td class='titulostablaunidades'>
                        <button class='btn btn-sm btn-aseguradora btnpolizasunidades' data-id='{$fila['id_unidad']}'>
                            <i class='fa-solid fa-file-pdf'></i> Aseguradora
                        </button>
                    </td>
                    <td>
                        <button class='btn btn-sm btn-tenencias btntenencias' data-id='{$fila['id_unidad']}'>
                            <i class='fa-solid fa-file-pdf'></i> Tenencias
                        </button>
                    </td>
                    <td>
                        <button class='btn btn-sm btn-verificaciones btnverificaciones' data-id='{$fila['id_unidad']}'>
                            <i class='fa-solid fa-file-pdf'></i> Verificaciones
                        </button>
                    </td>
                </tr>";
        }
    endif;
} else {
    echo "<tr><td colspan='12'>No se encontraron resultados.</td></tr>";
}
