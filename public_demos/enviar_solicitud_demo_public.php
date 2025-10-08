<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require '../Servidor/lib/PHPMailer-master/src/Exception.php';
require '../Servidor/lib/PHPMailer-master/src/PHPMailer.php';
require '../Servidor/lib/PHPMailer-master/src/SMTP.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id_unidad'])) {
    include("../Servidor/conexion.php");

    // Datos del formulario
    $id_unidad = intval($_POST['id_unidad']);
    $nombre = htmlspecialchars($_POST['nombre']);
    $correo = htmlspecialchars($_POST['correo']);
    $telefono = htmlspecialchars($_POST['telefono']);

    // Obtener info de la unidad
    $sql = "SELECT u.id_unidad, m.nombre_modelo AS modelo, u.año_unidad, s.ubicacion AS sede, u.vin
            FROM unidades u
            LEFT JOIN modelos m ON u.id_modelo = m.id_modelo
            LEFT JOIN sedes s ON u.id_sede = s.id_sede
            WHERE u.id_unidad = $id_unidad";
    $result = $conexion->query($sql);

    if ($result && $row = $result->fetch_assoc()) {

        // Crear objeto PHPMailer
        $mail = new PHPMailer(true);

        try {
            // Configurar SMTP
            $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'notificacion@ldrsolutions.com.mx';
            $mail->Password   = 'ppiz zylc bpod tczi';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;

            $mail->setFrom('notificacion@ldrsolutions.com.mx', 'LDR Solutions');
            $mail->addAddress('uriel.cabello@ldrsolutions.com.mx');
            $mail->addReplyTo($correo, $nombre);

            // Asunto y mensaje
            $mail->Subject = utf8_decode("Solicitud de prueba - " . $row['modelo'] . " " . $row['año_unidad']);
            $mail->isHTML(true); // Activar formato HTML
            $mail->Body = utf8_decode(
                "<!DOCTYPE html>
                <html lang='es'>
                <head>
                    <meta charset='UTF-8'>
                    <style>
                        body { font-family: Arial, sans-serif; font-size: 14px; color: #333; }
                        .header { background-color: #f05e29; color: #fff; padding: 10px; text-align: center; }
                        .content { padding: 20px; }
                        .section-title { font-weight: bold; margin-top: 20px; color: #f05e29; }
                        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
                        td { padding: 5px; vertical-align: top; }
                        .footer { margin-top: 20px; font-size: 12px; color: #666; text-align: center; }
                    </style>
                </head>
                <body>
                    <div class='header'>
                        <h2>Solicitud de Prueba - LDR Solutions</h2>
                    </div>
                    <div class='content'>
                        <p>Hola LDR Solutions,</p>
                        <p>La siguiente persona desea solicitar una prueba de una unidad demo:</p>
                        <h3 class='section-title'>Datos del Solicitante</h3>
                        <table>
                            <tr><td><strong>Nombre:</strong></td><td>$nombre</td></tr>
                            <tr><td><strong>Correo:</strong></td><td>$correo</td></tr>
                            <tr><td><strong>Teléfono:</strong></td><td>$telefono</td></tr>
                        </table>
                        <h3 class='section-title'>Unidad Solicitada</h3>
                        <table>
                            <tr><td><strong>Modelo:</strong></td><td>" . $row['modelo'] . "</td></tr>
                            <tr><td><strong>Año:</strong></td><td>" . $row['año_unidad'] . "</td></tr>
                            <tr><td><strong>Sede:</strong></td><td>" . $row['sede'] . "</td></tr>
                            <tr><td><strong>VIN:</strong></td><td>" . $row['vin'] . "</td></tr>
                        </table>
                        <p>Por favor contáctenme para coordinar la prueba.</p>
                        <p>Gracias,</p>
                    </div>
                    <div class='footer'>
                        &copy; 2025 LDR Solutions. Todos los derechos reservados.
                    </div>
                </body>
                </html>"
            );

            $mail->send();

            // Redirigir con parámetro para mostrar SweetAlert sin reenvío de POST
            header("Location: ../demos_disponibles_public.php?solicitud=ok");
            exit;

        } catch (Exception $e) {
            header("Location: ../demos_disponibles_public.php?solicitud=error");
            exit;
        }

    } else {
        header("Location: ../demos_disponibles_public.php?solicitud=unidad_no_encontrada");
        exit;
    }

} else {
    header("Location: ../demos_disponibles_public.php");
    exit;
}
