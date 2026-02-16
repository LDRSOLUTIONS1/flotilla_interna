<?php
include("./Servidor/conexion.php");
session_start();

if (isset($_GET['idcolaborador'])) {

    $idcolaborador = base64_decode($_GET['idcolaborador']);
    $tipo = $_GET['tipo'] ?? 'asignacion';

    // 1️⃣ Obtener id_usuario
    $queryUsuario = "SELECT id_usuario 
                     FROM usuarios 
                     WHERE id_colaborador = '$idcolaborador'";

    $resultUsuario = $conectar->query($queryUsuario);

    if (mysqli_num_rows($resultUsuario) > 0) {

        $rowUsuario = mysqli_fetch_assoc($resultUsuario);
        $idUsuario = $rowUsuario['id_usuario'];

        // 2️⃣ Determinar id_modulo
        if ($tipo == 'asignacion') {
            $idModulo = 1; // flotilla
        } elseif ($tipo == 'demo') {
            $idModulo = 2; // demo
        } else {
            echo "Módulo inválido";
            exit;
        }

        // 3️⃣ Validar si el usuario tiene rol en ese módulo
        $queryRol = "SELECT id_tipo_usuario 
                     FROM usuario_modulo_tipo 
                     WHERE id_usuario = '$idUsuario'
                     AND id_modulo = '$idModulo'";

        $resultRol = $conectar->query($queryRol);

        if (mysqli_num_rows($resultRol) > 0) {

            $rowRol = mysqli_fetch_assoc($resultRol);

            // 🔐 Guardar en sesión
            $_SESSION['id_colaborador'] = $idcolaborador;
            $_SESSION['id_usuario'] = $idUsuario;
            $_SESSION['id_modulo'] = $idModulo;
            $_SESSION['id_tipo_usuario'] = $rowRol['id_tipo_usuario'];

            // 🚀 Redireccionar según módulo
            if ($idModulo == 1) {
                header("Location: ./Cliente/interfaces/inicio.php");
            } else {
                header("Location: ./Cliente/interfaces/inicio_demos.php");
            }
            exit;

        } else {
            echo "No tienes acceso a esta sección";
            exit;
        }

    } else {
        echo "Usuario no encontrado";
        exit;
    }
}
?>
