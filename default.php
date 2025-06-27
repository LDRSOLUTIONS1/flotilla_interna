<?php 
include("./Servidor/conexion.php");
if($_GET['idcolaborador']){

    $idcolaborador = base64_decode($_GET['idcolaborador']);
    echo $idcolaborador;

    $queryobtenerusuario = "SELECT * FROM usuarios WHERE id_colaborador = '$idcolaborador'"; //queryobtenerusuario

    $ejecutarobtenerusuario = $conectar->query($queryobtenerusuario);

    if(mysqli_num_rows($ejecutarobtenerusuario) > 0){
        session_start();    
        $_SESSION['id_colaborador'] = $idcolaborador;
        header("Location: ./Cliente/interfaces/inicio.php");
    }else{
        echo "No tienes acceso a esta seccion";
    }
}
?>