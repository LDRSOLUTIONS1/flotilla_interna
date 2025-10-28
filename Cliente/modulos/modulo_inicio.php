<?php
include("../../Servidor/conexion.php");

//obtenemos el id del colaborador para saber quien es el que esta logeado
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
?>

<!--Aqui comienza el contenedor del inicio.php-->


<div class="contenedorinicioinformación">

    <div class="container p-4  mt-5 contenedorformularioinicio centrar">
        <div class="row align-items-center">
            <?php if ($id_tipo_usuario == 1): // Administrador ?>
            <!-- Imagen -->
            <div class="col-lg-5 text-center imagenlogo">
                <img src="../img/unidades/JETOUR_360_x70_azul.png" alt="img" class=" inicioimg1">
                <img src="../img/unidades/JETOUR_360_dashing_rojo.png" alt="img" class=" inicioimg2">
                <img src="../img/unidades/aveoazul.png" alt="img" class=" inicioimg3">
            </div>
            <?php elseif (in_array($id_tipo_usuario, [2, 4, 6, 7, 9, 10, 11, 12, 13])): // Administrador DEMOS, Usuario DEMOS, Administrador Flotilla, Usuario Flotilla, Usuario Flotilla General ?>
            <!-- Imagen -->
            <div class="col-lg-5 text-center imagenlogo">
                <img src="../img/unidades/Foton_GTL_EV.png" alt="img" class=" inicioimg1foton">
                <img src="../img/unidades/Foton_Hi_Van.png" alt="img" class=" inicioimg2foton">
                <img src="../img/unidades/Foton_Galaxy.png" alt="img" class=" inicioimg3foton">
            </div>
            <?php endif; ?>
            <!-- Formulario -->
            <div class="col-lg-7 contenedorformularioindex">
                <h2 class="text-center titulosletrasinicio">FLOTILLA LDR</h2>
                <h2 class="text-center titulosletrasinicionombre"><?php
    include("../include/bienvenida.php");
    ?></h2>
                <br>

            </div>
        </div>
    </div>
</div>

<!--jquery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--toastify-->
<script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Incluir el script de Toastify después de sus CSS -->
<script src="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.js"></script>
<!--bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!--javascript personal-->