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

<!-------------------------------------------aqui comienza el contenedor Autorizacion de unidades demos por parte del usuario tipo 7 ----------------------------------------------------------->

<!--iframe del tablero de smart conect-->
<div class="contenedortablerosmartconect">
    <div class="iframe-container">
    <iframe 
        src="https://dashboards.telematicsadvance.com.mx/foton-demos/"
        frameborder="0"
        allowfullscreen
    ></iframe>
</div>

</div>


