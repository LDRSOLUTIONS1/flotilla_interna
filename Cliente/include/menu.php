<?php
session_start();
include_once '../../Servidor/conexion.php';
$colaborador = $_SESSION['id_colaborador'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$id_usuario = $resultado->fetch_assoc()['id_usuario'];


// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$id_tipo_usuario = $resultado->fetch_assoc()['id_tipo_usuario'];
?>

<nav class="navbar">
<div class="icono">
    <h5 class="txtnombreusuario"><?php
    include("../include/nombre_icono.php");
    ?></h5>
</div>
    <button class="menu-toggle">
        ☰
    </button>
    <ul class="menu">
        <?php if ($id_tipo_usuario == 1): // Administrador Flotilla Interna?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="unidades.php">Unidades</a></li>
            <li ><a class="menulist" href="validacion_unidades_comodato.php">Validación de unidades</a></li>
            <li ><a class="menulist" href="unidades_asignadas.php">Unidades asignadas</a></li>
            <li ><a class="menulist" href="documentos.php">Documentos</a></li>
            <li ><a class="menulist" href="incidencias.php">Incidencias</a></li>

        <?php elseif ($id_tipo_usuario == 4): // Administrador DEMOS ?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="unidades.php">Unidades</a></li>
            <li ><a class="menulist" href="unidades_demo_asignadas.php">Unidades demo asignadas</a></li>

        <?php elseif ($id_tipo_usuario == 2): // juridico ?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="historial_comodatos.php">Historial de COMODATOS</a></li>
            <li ><a class="menulist" href="comodatos.php">COMODATOS</a></li>

        <?php elseif ($id_tipo_usuario == 3): // Cliente solicitar pool?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="mis_unidades.php">Mis unidades</a></li>
            <li ><a class="menulist" href="solicitud_unidades.php">Solicitud de unidades</a></li>
            <li ><a class="menulist" href="solicitud_unidades_pool.php">Unidades pool</a></li>

        <?php elseif ($id_tipo_usuario == 5): // Cliente solicitar pool y demo?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="mis_unidades.php">Mis unidades</a></li>
            <li ><a class="menulist" href="#">Unidades demo prestadas</a></li>
            <li ><a class="menulist" href="solicitud_unidades.php">Proceso asignación</a></li>
            <li ><a class="menulist" href="solicitud_unidades_pool.php">Solicitar pool</a></li>
            <li ><a class="menulist" href="#">Solicitar demos</a></li>

        <?php elseif ($id_tipo_usuario == 6): // Cliente solicitar demo?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="mis_unidades.php">Unidades asignadas</a></li>
            <li ><a class="menulist" href="solicitud_unidades.php">Proceso asignación</a></li>
            <li ><a class="menulist" href="solicitar_unidades_demo.php">Solictar unidades demo</a></li>

        <?php elseif ($id_tipo_usuario == 7): // AUTORIZACION DE UNIDADES (Francisco Chavez)?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="autorizaciones_demos_personas_fisicas.php">Autorizaciones</a></li>
            <li ><a class="menulist" href="#">Unidades autorizadas</a></li>
            <li ><a class="menulist" href="#">Unidades prestadas</a></li>
        <?php endif; ?>
        <li ><a class="menulist" href="http://intranet.com/LDRHSystem/Cliente/interfaces/Inicio.php"><strong>INTRANET</strong></a></li>
    </ul>
</nav>
