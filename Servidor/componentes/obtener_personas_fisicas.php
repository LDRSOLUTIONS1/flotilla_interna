<?php 
include("../../Servidor/conexion.php");

// Iniciar sesión si no está iniciada
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];

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
               pf.genero,
               pf.seccion,
               pf.vigencia,
               pf.curp,
               pf.rfc,
               pf.domicilio,
               pf.archivo_ine,
               pf.archivo_curp,
               pf.archivo_rfc,
               pf.archivo_domicilio
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
        echo "<tr>
            <td class='sticky-left-0'>";
                   if ($id_tipo_usuario == 5 || $id_tipo_usuario == 6): // tipos de usuario solicitantes demos 
                echo "<button class='btn btn-editar_persona_fisica btn-sm btneditarpersonafisica' data-id='" . $fila['id_persona_fisica'] . "'>
                    <i class='fas fa-edit'></i> Editar
                </button>";
            endif;
            echo"</td>
            <td class='titulostablaunidades'>" . $fila['id_persona_fisica'] . "</td>
            <td class='titulostablaunidades'>" . $fila['nombre_1'] . " " . $fila['nombre_2'] . " " . $fila['apellido_paterno'] . " " . $fila['apellido_materno'] . "</td>
            <td class='titulostablaunidades'>" . $fila['genero'] . "</td>
            <td class='titulostablaunidades'>" . $fila['seccion'] . "</td>
            <td class='titulostablaunidades'>" . $fila['curp'] . "</td>
            <td class='titulostablaunidades'>" . $fila['rfc'] . "</td>
            <td class='titulostablaunidades'>" . $fila['domicilio'] . "</td>";

        // Mostrar nombre del creador solo si el usuario es admin tipo 4
        if ($id_tipo_usuario == 4) {
            echo "<td class='titulostablaunidades'>" . 
                $fila['nombre_1_colaborador'] . " " . 
                $fila['nombre_2_colaborador'] . " " . 
                $fila['apellido_paterno_colaborador'] . " " . 
                $fila['apellido_materno_colaborador'] . 
            "</td>";
        }

        echo "
            <td class='titulostablaunidades'>
                <button class='btn btn-sm btn-ine btnine' data-id='" . $fila['id_persona_fisica'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> INE
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-curp btncurp' data-id='" . $fila['id_persona_fisica'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> CURP
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-rfc btnrfc' data-id='" . $fila['id_persona_fisica'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> RFC
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-domicilio btndomicilio' data-id='" . $fila['id_persona_fisica'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> Domicilio
                </button>
            </td>
        </tr>";
    }
} else {
    echo "<tr><td colspan='13'>No se encontraron resultados.</td></tr>";
}
?>
