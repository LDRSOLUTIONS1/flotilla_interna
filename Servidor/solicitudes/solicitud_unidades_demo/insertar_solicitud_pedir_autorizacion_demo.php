<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require '../../lib/PHPMailer-master/src/Exception.php';
require '../../lib/PHPMailer-master/src/PHPMailer.php';
require '../../lib/PHPMailer-master/src/SMTP.php';

include("../../conexion.php");
$nombre_archivo = "";
$ruta_archivo = "";
$id_asignacion_unidad_demo = 0;
$valorcolaboradorasignacion = 0;

if (
    isset($_POST['id_unidad']) &&
    isset($_POST['id_colaborador']) &&
    isset($_POST['fechasolicitudunidademo']) &&
    isset($_POST['fechadevolucionunidademo'])
) {
    $valoridunidad = mysqli_real_escape_string($conexion, $_POST['id_unidad']);
    $id_colaborador_que_asigna = mysqli_real_escape_string($conexion, $_POST['id_colaborador']);

    $id_persona_fisica = isset($_POST['id_persona_fisica']) && $_POST['id_persona_fisica'] !== 'null'
    ? mysqli_real_escape_string($conexion, $_POST['id_persona_fisica']) : null;

    $id_persona_moral = isset($_POST['id_persona_moral']) && $_POST['id_persona_moral'] !== 'null'
    ? mysqli_real_escape_string($conexion, $_POST['id_persona_moral']) : null;

    $fechasolicitudunidademo = mysqli_real_escape_string($conexion, $_POST['fechasolicitudunidademo']);
    $fechadevolucionunidademo = mysqli_real_escape_string($conexion, $_POST['fechadevolucionunidademo']);


    // Insertamos la unidad
    $queryinsertarsolicitudunidademo = "INSERT INTO asignacion_unidad_demo 
    (id_unidad, id_colaborador_que_asigna, fecha_prestamo, fecha_devolucion";

$valores = "'$valoridunidad', '$id_colaborador_que_asigna', '$fechasolicitudunidademo', '$fechadevolucionunidademo'";

if ($id_persona_fisica !== null) {
    $queryinsertarsolicitudunidademo .= ", id_persona_fisica";
    $valores .= ", '$id_persona_fisica'";
} elseif ($id_persona_moral !== null) {
    $queryinsertarsolicitudunidademo .= ", id_persona_moral";
    $valores .= ", '$id_persona_moral'";
} else {
    echo "❌ Error: No se proporcionó persona física ni moral.";
    exit;
}

$queryinsertarsolicitudunidademo .= ") VALUES ($valores)";


    if ($ejecutar = mysqli_query($conexion, $queryinsertarsolicitudunidademo)) {
        $queryActualizarEstadoUnidad = "UPDATE unidades SET id_estado_unidad = 4 WHERE id_unidad = '$valoridunidad'";
        if (mysqli_query($conexion, $queryActualizarEstadoUnidad)) {
            echo "Registro y actualización exitosos.";

            $queryultimo = "SELECT 
                                notificar.id_asignacion_unidad_demo, 
                                pf.nombre_1, 
                                pf.nombre_2, 
                                pf.apellido_paterno, 
                                pf.apellido_materno, 
                                pf.archivo_ine,
                                pm.organizacion_institucion,
                                pm.archivo_identificacion_representante_legal,
                                mar.nombre_marca, 
                                model.nombre_modelo, 
                                uni.id_unidad, 
                                uni.placa, 
                                uni.numero_motor, 
                                uni.VIN,
                                uni.costo_neto,
                                uni.año_unidad
                            FROM asignacion_unidad_demo AS notificar
                            LEFT JOIN personas_fisicas AS pf 
                                ON notificar.id_persona_fisica = pf.id_persona_fisica
                            LEFT JOIN personas_morales AS pm 
                                ON notificar.id_persona_moral = pm.id_persona_moral
                            INNER JOIN unidades AS uni 
                                ON notificar.id_unidad = uni.id_unidad
                            INNER JOIN modelos AS model 
                                ON uni.id_modelo = model.id_modelo
                            INNER JOIN marcas AS mar 
                                ON model.id_marca = mar.id_marca  
                            ORDER BY notificar.id_asignacion_unidad_demo DESC 
                            LIMIT 1";

            $ejecutar = mysqli_query($conexion, $queryultimo);
            if ($ejecutar) {
                $data = mysqli_fetch_array($ejecutar);

                $id_asignacion_unidad_demo = $data['id_asignacion_unidad_demo'];
                $nombre_1 = $data['nombre_1'];
                $nombre_2 = $data['nombre_2'];
                $apaterno = $data['apellido_paterno'];
                $amaterno = $data['apellido_materno'];
                $organizacion = $data['organizacion_institucion'];
                $marca = $data['nombre_marca'];
                $modelo = $data['nombre_modelo'];
                $id_unidad = $data['id_unidad'];
                $placa = $data['placa'];
                $numero_motor = $data['numero_motor'];
                $VIN = $data['VIN'];
                $costo_neto = $data['costo_neto'];
                $año_unidad = $data['año_unidad'];

                // Obtener correos de usuarios tipo 7 autorizador de asignacion demo
                $correos = [];
                $correo_sql = "SELECT u.id_colaborador, 
                                                 u.id_tipo_usuario,
                                                 cor.id_colaborador,
                                                 cor.email_corporativo
                                         FROM usuarios AS u 
                                         INNER JOIN colaboradores AS cor
                                         ON u.id_colaborador = cor.id_colaborador
                                         WHERE u.id_tipo_usuario = 7";
                $correo_result = $conexion->query($correo_sql);
                while ($correo_row = $correo_result->fetch_assoc()) {
                    if (!empty($correo_row['email_corporativo'])) {
                        $correos[] = $correo_row['email_corporativo'];
                    }
                }

                //$correos = ["uriel.cabello@ldrsolutions.com.mx"];

                foreach ($correos as $correo) {
                    echo "Correo: $correo <br>";
                }

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
                    $mail->addBCC('uriel.cabello@ldrsolutions.com.mx'); // Copia oculta

                    $mail->isHTML(true);
                    $mail->Subject = utf8_decode('Solicitud de AUTORIZACIÓN para asignación de unidad vehicular DEMO'); // Asunto del correo
                    $mail->Body = utf8_decode("Estimado colaborador.
                                                            <br>
                                                            <br>
                                                            Te enviamos este correo solicitando la <strong>AUTORIZACIÓN</strong> correspondiente a la asignación de la siguiente unidad vehicular <strong>DEMO:</strong>
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
                                                            Para el usuario o institución:<strong> $nombre_1 $nombre_2 $apaterno $amaterno $organizacion</strong> 
                                                            <br> 
                                                            <br>
                                                            1. Para aceptar la autorización debes ingresar a la plataforma <strong>Flotilla LDR.</strong>
                                                            <br>
                                                            2. Dirígete al menú en el apartado <strong>Autorizaciones</strong>.
                                                            <br>
                                                            3. Selecciona al usuario con la unidad correspondiente y da clic en el botón Verificar.
                                                            <br>
                                                            4. Presiona el botón AUTORIZAR si estas de acuerdo con la asignación, de lo contrario da clic en el botón RECHAZAR y escribe el motivo del rechazo.
                                                            <br><br>
                                                            <strong>¡Es de suma importancia que se verifique bien la autorización para los ususarios y evitar alguna asignación erronea!</strong>
                                                            <br>
                                                            <br>
                                                            Gracias por su atención.
                                                            <br>
                                                            Atentamente,
                                                            <br>
                                                            <br>
                                                            <strong>Comercial - Flotilla LDR</strong>
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
            } else {
                echo "Error al obtener los datos del último registro insertado.";
            }
        } else {
            echo "Error al actualizar el estado de la unidad: " . mysqli_error($conexion);
        }
    } else {
        echo "Error al insertar la asignación: " . mysqli_error($conexion);
    }
}
