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
$sql = "SELECT pm.id_persona_moral, 
               pm.id_registrador_persona_moral,
               col.nombre_1 AS nombre_1_colaborador,
               col.nombre_2 AS nombre_2_colaborador,
               col.apellido_paterno AS apellido_paterno_colaborador,
               col.apellido_materno AS apellido_materno_colaborador,
               pm.organizacion_institucion,
               pm.identificacion_representante_legal_seccion,
               pm.vigencia,
               pm.archivo_identificacion_representante_legal,
               pm.archivo_poder_representante_legal,
               pm.rfc_moral,
               pm.archivo_rfc_moral,
               pm.domicilio,
               pm.archivo_domiclio_moral,
               pm.archivo_escritura_constitutiva,
               pm.archivo_escrituras_estatus_sociales
        FROM personas_morales AS pm
        LEFT JOIN colaboradores col ON pm.id_registrador_persona_moral = col.id_colaborador";

// Aplicar condición según tipo
if ($id_tipo_usuario !== null && $id_tipo_usuario != 4) {
    // Usuarios comunes solo ven lo que registraron
    $sql .= " WHERE pm.id_registrador_persona_moral = '$colaborador'";
}

$resultado = $conexion->query($sql);

// Mostrar resultados
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>
            <td class='sticky-left-0'>";
                   if ($id_tipo_usuario == 5 || $id_tipo_usuario == 6): // tipos de usuario solicitantes demos 
                echo "<button class='btn btn-editar_persona_fisica btn-sm btneditarpersonafisica' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fas fa-edit'></i> Editar
                </button>";
            endif;
            echo"</td>
            <td class='titulostablaunidades'>" . $fila['id_persona_moral'] . "</td>
            <td class='titulostablaunidades'>" . $fila['organizacion_institucion'] . "</td>
            <td class='titulostablaunidades'>" . $fila['identificacion_representante_legal_seccion'] . "</td>
            <td class='titulostablaunidades'>" . $fila['vigencia'] . "</td>
            <td>
                <button class='btn btn-sm btn-curp btnveridrepresentantelegal' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> Identificación
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-curp btnverpoderrepresentantelegal' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> Poder
                </button>
            </td>
            <td class='titulostablaunidades'>" . $fila['rfc_moral'] . "</td>
            <td class='titulostablaunidades'>" . $fila['domicilio'] . "</td>
            ";

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
            
            <td>
                <button class='btn btn-sm btn-curp btnverrfc' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> RFC
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-rfc btnverdomicilio' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> Domicilio
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-domicilio btnverescrituraconstitutiva' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fa-solid fa-file-pdf'></i>Constitutiva
                </button>
            </td>
            <td>
                <button class='btn btn-sm btn-domicilio btnverestatusociales' data-id='" . $fila['id_persona_moral'] . "'>
                    <i class='fa-solid fa-file-pdf'></i> Estatus sociales
                </button>
            </td>
        </tr>";
    }
} else {
    echo "<tr><td colspan='13'>No se encontraron resultados.</td></tr>";
}
?>
