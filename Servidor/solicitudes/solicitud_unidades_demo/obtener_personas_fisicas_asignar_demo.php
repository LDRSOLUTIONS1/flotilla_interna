<?php 
include("../../conexion.php");

// Iniciar sesión si no está iniciada
if (!isset($_SESSION)
&& isset($_POST['id_unidad'])
&& isset($_POST['data_fecha_solicitudemo'])
&& isset($_POST['data_fecha_devoluciondemo'])) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];
$id_unidad = $_POST['id_unidad'];
$data_fecha_solicitudemo = $_POST['data_fecha_solicitudemo'];
$data_fecha_devoluciondemo = $_POST['data_fecha_devoluciondemo'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$fila_usuario = $resultado->fetch_assoc();
$id_usuario = $fila_usuario['id_usuario'] ?? null;

// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$fila_tipo = $resultado->fetch_assoc();
$id_tipo_usuario = $fila_tipo['id_tipo_usuario'] ?? null;

// Consulta según tipo de usuario
$sql = "SELECT pf.id_persona_fisica, 
               pf.id_registrador_persona_fisica,
               col.nombre_1 AS nombre_1_colaborador,
               col.nombre_2 AS nombre_2_colaborador,
               col.apellido_paterno AS apellido_paterno_colaborador,
               col.apellido_materno AS apellido_materno_colaborador,
               pf.nombre_1,
               pf.nombre_2,
               pf.apellido_paterno,
               pf.apellido_materno,
               pf.vigencia,
               pf.curp,
               pf.rfc,
               pf.domicilio
        FROM personas_fisicas pf
        LEFT JOIN colaboradores col ON pf.id_registrador_persona_fisica = col.id_colaborador";

// Aplicar condición según tipo
if ($id_tipo_usuario !== null && $id_tipo_usuario != 4) {
    // Usuarios comunes solo ven lo que registraron
    $sql .= " WHERE pf.id_registrador_persona_fisica = '$colaborador'";
}

$resultado = $conexion->query($sql);

// Mostrar resultados
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "
        <th class='titulostablaunidades'>ID</th>
        <th class='titulostablaunidades'>Nombre</th>
        <th class='titulostablaunidades'>CURP</th>
        <th class='titulostablaunidades'>RFC</th>
        <th class='titulostablaunidades'>Domicilio</th>
        <th class='titulostablaunidades'>Acción</th>
        <tr>
            <td class='titulostablaunidades'>" . $fila['id_persona_fisica'] . "</td>
            <td class='titulostablaunidades'>" . $fila['nombre_1'] . " " . $fila['nombre_2'] . " " . $fila['apellido_paterno'] . " " . $fila['apellido_materno'] . "</td>
            <td class='titulostablaunidades'>" . $fila['curp'] . "</td>
            <td class='titulostablaunidades'>" . $fila['rfc'] . "</td>
            <td class='titulostablaunidades'>" . $fila['domicilio'] . "</td>
            <td class='titulostablaunidades'>
                <button class='btn btn-warning btn-sm btnasignarunidademo' data-id_persona_fisica='" . $fila['id_persona_fisica'] . "' data-id_unidad='" . $id_unidad . "' data-id_colaborador='" . $colaborador . "' data-fecha_solicitudemo='" . $data_fecha_solicitudemo . "' data-fecha_devoluciondemo='" . $data_fecha_devoluciondemo . "'>
                    <i class='fa-solid fa-eye'></i> Asignar
                </button>
            </td>
        </tr>";

    }
} else {
    echo "<tr><td colspan='13'>No se encontraron resultados.</td></tr>";
}
?>
