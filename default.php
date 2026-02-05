<?php 
include("./Servidor/conexion.php");
session_start();

if(isset($_GET['idcolaborador'])){

    $idcolaborador = base64_decode($_GET['idcolaborador']);
    $tipo = $_GET['tipo'] ?? 'asignacion';

    $query = "SELECT id_tipo_usuario FROM usuarios WHERE id_colaborador = '$idcolaborador'";
    $result = $conectar->query($query);

    if(mysqli_num_rows($result) > 0){

        $row = mysqli_fetch_assoc($result);
        $tipoUsuario = $row['id_tipo_usuario'];

        $_SESSION['id_colaborador'] = $idcolaborador;
        $_SESSION['id_tipo_usuario'] = $tipoUsuario;
        $_SESSION['tipo_flotilla'] = $tipo;

        // ---- VALIDACIONES ----

        // Solo 1 y 2 pueden flotilla
        if($tipo == 'asignacion' && !in_array($tipoUsuario,[1,2,3])){
            echo "No tienes permiso para acceder a Flotilla";
            exit;
        }

        // Los demás solo demos
        if($tipo == 'demo'){
            header("Location: ./Cliente/interfaces/inicio_demos.php");
        }if ($tipo == 'asignacion') {
            header("Location: ./Cliente/interfaces/inicio.php");
        } else {
            echo "No tienes acceso a esta sección";
        }

    }else{
        echo "No tienes acceso a esta sección";
    }
}
?>
