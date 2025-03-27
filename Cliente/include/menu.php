<?php
session_start();
include_once '../../Servidor/conexion.php';

$id_usuario = $_SESSION['id_usuario'];

// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$id_tipo_usuario = $resultado->fetch_assoc()['id_tipo_usuario'];
?>

<nav class="navbar">
<div class="icono"></div>
    <button class="menu-toggle">
        ☰
    </button>
    <ul class="menu">
        <?php if ($id_tipo_usuario == 1): // Administrador ?>
            <li><a href="inicio.php">Inicio</a></li>
            <li><a href="usuarios.php">Usuarios</a></li>
            <li><a href="unidades.php">Unidades</a></li>
            <li><a href="validacion_unidades.php">Validación de unidades</a></li>
            <li><a href="unidades_asignadas.php">Unidades asignadas</a></li>
            <li><a href="incidencias.php">Incidencias</a></li>

        <?php elseif ($id_tipo_usuario == 2): // Otro tipo de usuario ?>
            <li><a href="usuarios.php">Usuarios</a></li>
            <li><a href="flotillas.php">Flotillas</a></li>

        <?php elseif ($id_tipo_usuario == 3): // Cliente ?>
            <li><a href="usuarios.php">Usuarios</a></li>
            <li><a href="flotillas.php">Flotillas</a></li>
            <li><a href="unidades.php">Unidades</a></li>
        <?php endif; ?>
        <li><a href="../salir.php">Salir</a></li>
    </ul>
</nav>
