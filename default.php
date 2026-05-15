<?php
include("./Servidor/conexion.php");
session_start();

// 🔥 DEBUG (puedes quitarlo después)
error_reporting(E_ALL);
ini_set('display_errors', 1);

if (isset($_GET['idcolaborador'])) {

    $idcolaborador = base64_decode($_GET['idcolaborador']);
    $tipo = $_GET['tipo'] ?? 'asignacion';

    // 1️⃣ Obtener id_usuario (puede no existir)
    $queryUsuario = "SELECT id_usuario 
                     FROM usuarios 
                     WHERE id_colaborador = '$idcolaborador'";

    $resultUsuario = $conectar->query($queryUsuario);

    $idUsuario = null;

    if ($resultUsuario && mysqli_num_rows($resultUsuario) > 0) {
        $rowUsuario = mysqli_fetch_assoc($resultUsuario);
        $idUsuario = $rowUsuario['id_usuario'];
    }

    // 2️⃣ Determinar módulo
    if ($tipo == 'asignacion') {
        $idModulo = 1; // flotilla
    } elseif ($tipo == 'demo') {
        $idModulo = 2; // demo
    } else {
        echo "Módulo inválido";
        exit;
    }

    // 🔐 Guardar sesión base
    $_SESSION['id_colaborador'] = $idcolaborador;
    $_SESSION['id_usuario'] = $idUsuario;
    $_SESSION['id_modulo'] = $idModulo;

    // =========================================
    // 🚗 FLOTILLA (ACCESO LIBRE)
    // =========================================
    if ($idModulo == 1) {

        // 🔥 Si existe usuario, buscar rol
        if ($idUsuario) {

            $queryRol = "SELECT id_tipo_usuario 
                         FROM usuario_modulo_tipo 
                         WHERE id_usuario = '$idUsuario'
                         AND id_modulo = '$idModulo'";

            $resultRol = $conectar->query($queryRol);

            if ($resultRol && mysqli_num_rows($resultRol) > 0) {
                $rowRol = mysqli_fetch_assoc($resultRol);
                $_SESSION['id_tipo_usuario'] = intval($rowRol['id_tipo_usuario']);
            } else {
                // 👇 default si no tiene rol
                $_SESSION['id_tipo_usuario'] = 3;
            }

        } else {
            // 👇 ESTE ERA TU PROBLEMA EN HOSTING
            $_SESSION['id_tipo_usuario'] = 3;
        }

        header("Location: ./Cliente/interfaces/inicio.php");
        exit;
    }

    // =========================================
    // 🧪 DEMOS (ACCESO RESTRINGIDO)
    // =========================================
    elseif ($idModulo == 2) {

        // ❌ Si no existe usuario → no entra
        if (!$idUsuario) {
            echo "No tienes acceso a esta sección";
            exit;
        }

        $queryRol = "SELECT id_tipo_usuario 
                     FROM usuario_modulo_tipo 
                     WHERE id_usuario = '$idUsuario'
                     AND id_modulo = '$idModulo'";

        $resultRol = $conectar->query($queryRol);

        if ($resultRol && mysqli_num_rows($resultRol) > 0) {

            $rowRol = mysqli_fetch_assoc($resultRol);
            $_SESSION['id_tipo_usuario'] = intval($rowRol['id_tipo_usuario']);

            header("Location: ./Cliente/interfaces/inicio_demos.php");
            exit;

        } else {
            echo "No tienes acceso a esta sección";
            exit;
        }
    }

} else {
    echo "Parámetros inválidos";
    exit;
}
?>