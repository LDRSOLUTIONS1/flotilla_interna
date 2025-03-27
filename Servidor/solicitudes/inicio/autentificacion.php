<?php
include("../../conexion.php");
session_start();

if (isset($_POST['correo']) || isset($_POST['contra'])) {
    $correo = $_POST['correo'];
    $contra = $_POST['contra'];

    $sql = "SELECT * FROM usuarios WHERE correo = '$correo' AND contraseña = '$contra'";
    $resultado = $conexion->query($sql);

    if ($resultado->num_rows > 0) {
        $fila = $resultado->fetch_assoc();

        echo"correcto el inicio de sesion";
        $_SESSION['id_usuario'] = $fila['id_usuario'];    
    }
} else {
    echo "No se recibieron datos";
}

