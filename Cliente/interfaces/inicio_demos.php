<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['id_tipo_usuario'])) {
    header("Location: ../../index.php");
    exit;
}

// Solo demos
if (in_array($_SESSION['id_tipo_usuario'], [1, 2, 3])) {
    echo "<h3 style='text-align:center;margin-top:50px;'>No tienes permiso para acceder a Demos</h3>";
    exit;
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>



<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="../img/LDR_LOGO.png" href="../img/LDR_LOGO.png">
    <title>Demos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilos.css?v=<?php echo time(); ?>">
    <!-- CDN para poder utilizar los toastify -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">


</head>

<body>

    <?php include("../include/menu.php"); ?>

    <!-- CONTENIDO -->
    <?php include("../modulos/modulo_inicio.php"); ?>

    <!-- cieera el body -->
</body>

</html>