<?php

$host = "193.203.166.27";
$database = "u546825723_rhldrsolutions";
$user = "u546825723_adminrh";
$pass = "Felur1@n80";

$conexion_rh = mysqli_connect($host, $user, $pass, $database);

if (mysqli_connect_errno()) {
    echo "Fallo al conectar a MySQL: " . mysqli_connect_error();
}else{
    //echo "Conexion exitosa";
}