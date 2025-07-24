<?php
session_start();
include_once '../../Servidor/conexion.php';
$colaborador = $_SESSION['id_colaborador'];

// Obtener el id del usuario
$sql = "SELECT id_usuario FROM usuarios WHERE id_colaborador = $colaborador";
$resultado = $conexion->query($sql);
$id_usuario = $resultado->fetch_assoc()['id_usuario'];


// Obtener el tipo de usuario
$sql = "SELECT id_tipo_usuario, avatar FROM usuarios WHERE id_usuario = $id_usuario";
$resultado = $conexion->query($sql);
$datos_usuario = $resultado->fetch_assoc();
$id_tipo_usuario = $datos_usuario['id_tipo_usuario'];
$avatar = $datos_usuario['avatar'];
?>

<nav class="navbar">
    <a href="inicio.php">
        <div class="icono">
            <h5 class="txtnombreusuario">
            <img src="<?php echo empty($avatar) 
                        ? '../../../../Cliente/img/default_avatar.png' 
                        : 'https://ldrhsys.ldrhumanresources.com/Cliente/img/avatars/' . $avatar . '.png'; ?>"
                        class="rounded-circle imgavatar" 
                        alt="avatar">
            <?php include("../include/nombre_icono.php"); ?>
        </h5>
    </div>
</a>
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
            <li ><a class="menulist" href="comodatos.php">COMODATOS</a></li>
            <li ><a class="menulist" href="historial_comodatos.php">Historial de COMODATOS</a></li>

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
            <li ><a class="menulist" href="solicitar_unidades_demo.php">Solictar unidades demo</a></li>
            <li ><a class="menulist" href="proceso_asignacion_demo.php">Asignaciones</a></li>

        <?php elseif ($id_tipo_usuario == 7): // AUTORIZACION DE UNIDADES (Francisco Chavez)?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="autorizaciones_demos_personas_fisicas.php">Autorizaciones</a></li>
            <li ><a class="menulist" href="unidades_autorizadas.php">Unidades autorizadas</a></li>

        <?php elseif ($id_tipo_usuario == 9): // PERFIL MASTER DRIVER?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="pruebas_demos.php">Pruebas</a></li>
            <li ><a class="menulist" href="estados_unidades_demos.php">Resultados finales</a></li>

        <?php elseif ($id_tipo_usuario == 11): // PERFIL ADMINISTRADOR PRUEBAS DEMOS?>
            <li ><a class="menulist" href="inicio.php">Inicio</a></li>
            <li ><a class="menulist" href="asignar_master_driver.php">Asignar Master Driver</a></li>
            <li ><a class="menulist" href="desempeños_unidades_demo.php">Desempeños</a></li>
            <li ><a class="menulist" href="subir_reporte_final.php">Reportes finales</a></li>
            <li ><a class="menulist" href="resultados_finales.php">Resultados</a></li>
        <?php endif; ?>
        <li ><a class="menulist" href="http://localhost/intranet/LDRHSystem/Cliente/interfaces/Inicio.php"><strong>INTRANET</strong></a></li>
    </ul>
</nav>

