<?php
$host = "localhost";
$user = "root";
$clave = "";
$bd = "flotillainterna";
$conexion = mysqli_connect($host, $user, $clave, $bd);
$conectar = new mysqli($host, $user, $clave, $bd);
if (mysqli_connect_errno()) {
    echo "no se pudo conectar la bd";
} else {
    echo "";
}
