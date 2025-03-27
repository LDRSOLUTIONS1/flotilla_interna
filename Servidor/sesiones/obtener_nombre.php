<?php

include("../../Servidor/conexion.php");
if (!isset($_SESSION)) {
    session_start();
}

$id_usuario = $_SESSION['id_usuario'];

//query para obtener el id_tipo_usuario

$sql = "SELECT nombre_1, nombre_2, apaterno, amaterno FROM colaboradores WHERE id_colaborador = $id_usuario";
$resultado = $conexion->query($sql);

if ($resultado->num_rows > 0) {
    $fila = $resultado->fetch_assoc();

    echo $fila['nombre_1'] . " " . $fila['nombre_2'] . " " . $fila['apaterno'] . " " . $fila['amaterno'];
}