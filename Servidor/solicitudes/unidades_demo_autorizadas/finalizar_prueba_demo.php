<?php 
//actualizamos en la base de datos el estatus de la unidad para finalizar la prueba y enviar correo a telematics para solicitar la baja de la unidad

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require '../../lib/PHPMailer-master/src/Exception.php';
require '../../lib/PHPMailer-master/src/PHPMailer.php';
require '../../lib/PHPMailer-master/src/SMTP.php';

// Mostrar errores para depuración
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("../../conexion.php");
//-----------------------------------------------------------------------obtenemos el id del colaborador para saber quien es el que esta logeado
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];

if(isset($_POST['id_asignacion'])){

    $id_asignacion = $_POST['id_asignacion'];

    $query = "UPDATE asignacion_unidad_demo SET id_estado_prueba_demo = 5
                WHERE id_asignacion_unidad_demo = '$id_asignacion'";
    $result = mysqli_query($conexion, $query);
    
    if($result){
    echo "Prueba finalizada ccorrectamente";

    // Obtener correos...
    $correos = [];
    $correo_sql = "SELECT u.id_colaborador, 
                          u.id_tipo_usuario,
                          cor.id_colaborador,
                          cor.email_corporativo
                   FROM usuarios AS u 
                   INNER JOIN colaboradores AS cor
                   ON u.id_colaborador = cor.id_colaborador
                   WHERE u.id_tipo_usuario = 12";
    $correo_result = $conexion->query($correo_sql);
    while ($correo_row = $correo_result->fetch_assoc()) {
        if (!empty($correo_row['email_corporativo'])) {
            $correos[] = $correo_row['email_corporativo'];
        }
    }

    foreach ($correos as $correo) {
        echo "Correo: $correo <br>";
    }

    // Enviar correo
    try {
        $mail = new PHPMailer();
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'notificacion@ldrsolutions.com.mx';
        $mail->Password = 'ppiz zylc bpod tczi';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port = 587;

        $mail->setFrom('dscrgoficial@gmail.com', 'Flotilla LDR');
        foreach ($correos as $correo) {
            $mail->addAddress($correo);
        }
        $mail->addBCC('uriel.cabello@ldrsolutions.com.mx');

        $mail->isHTML(true);
                                $mail->Subject = utf8_decode('Solicitud de finalización de prueba unidad DEMO'); // Asunto del correo
                                $mail->Body = utf8_decode("Estimado colaborador del área jurídico.
                                                            <br>
                                                            <br>
                                                            Te enviamos este correo solicitando el <strong>COMODATO</strong> correspondiente a la asignación de la siguiente unidad vehicular: 
                                                            <br>
                                                            <br>
                                                            <strong>$marca $modelo: </strong>
                                                            <br>
                                                            <strong>Placa:</strong> $placa
                                                            <br>
                                                            <strong>Número de motor:</strong> $numero_motor
                                                            <br>
                                                            <strong>VIN:</strong> $VIN
                                                            <br>
                                                            <strong>Costo neto:</strong> $costo_neto
                                                            <br>
                                                            <strong>Año unidad:</strong> $año_unidad
                                                            <br>
                                                            Para el colaborador <strong>$nombre_1 $nombre_2 $apaterno $amaterno</strong> 
                                                            <br>
                                                            <strong>Puesto:</strong> $puesto_colaborador
                                                            <br>
                                                            del área : $area.
                                                            <br> 
                                                            <br>
                                                            Una vez realizado el COMODATO debes subirlo en la plataforma <strong>Flotilla LDR.</strong>
                                                            <br>
                                                            Sigue los siguientes pasos para subir el documento:
                                                            <br>
                                                            <br>
                                                            1. Ingresa a la plataforma Flotilla LDR con tu correo y contraseña.
                                                            <br>
                                                            2. Dirígete al menú en el apartado COMODATOS.
                                                            <br>
                                                            3. Selecciona al usuario con la unidad correspondiente y da clic en el botón SUBIR-COMODATO.
                                                            <br>
                                                            4. Sube el documento correspondiente.
                                                            <br><br>
                                                            <strong>¡Es de suma importancia que se verifique bien la información del comodatario.!</strong>
                                                            <br>
                                                            <br>
                                                            Gracias por su atención.
                                                            <br>
                                                            Atentamente,
                                                            <br>
                                                            <br>
                                                            <strong>Servicios Generales - Flotilla LDR</strong>
                                                            <br>
                                                            <br>
                                                            <strong>Acceso a la plataforma: </strong>
                                                            <br>
                                                            <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a>");

                                if ($mail->send()) {
                                    echo "Correo enviado exitosamente.";
                                } else {
                                    echo "Error al enviar el correo: " . $mail->ErrorInfo;
                                }
                            } catch (Exception $e) {
                                echo "Error al enviar el correo: {$mail->ErrorInfo}<br>";
                            }
                        }
                    } else {
                        echo "Error al enviar el correo: " . $mail->ErrorInfo;
                    }

                    echo "Correo enviado exitosamente.";

?>