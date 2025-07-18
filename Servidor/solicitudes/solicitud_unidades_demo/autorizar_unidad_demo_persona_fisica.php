<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

//obtenemos el id del colaborador para saber quien es el que esta logeado
if (!isset($_SESSION)) {
    session_start();
}

$colaborador = $_SESSION['id_colaborador'];


//iniciar los requermientos de PHPMailer
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require '../../lib/PHPMailer-master/src/Exception.php';
require '../../lib/PHPMailer-master/src/PHPMailer.php';
require '../../lib/PHPMailer-master/src/SMTP.php';

include("../../../Servidor/conexion.php");


if (isset($_POST['id_unidad']) 
&& isset($_POST['id_asignacion_demo']) 
&& isset($_POST['id_persona_fisica'])){
    echo "Datos recibidos<br>";

    $id_asignacion_demo = $_POST['id_asignacion_demo'];
    $id_unidad = $_POST['id_unidad'];
    $id_persona_fisica = $_POST['id_persona_fisica'];


        $queryautorizarunidademo = "UPDATE asignacion_unidad_demo 
                                        INNER JOIN unidades 
                                        ON asignacion_unidad_demo.id_unidad = unidades.id_unidad
                                        SET id_autorizador = $colaborador, 
                                            autorizacion = 'APROVADO',
                                            unidades.id_estado_unidad = 3  
                                        WHERE id_asignacion_unidad_demo = '$id_asignacion_demo'";

        $ejecutarconsulta = mysqli_query($conexion, $queryautorizarunidademo);
        if (!$ejecutarconsulta) {
            die("Error en consulta de UPDATE: " . mysqli_error($conexion));
        }

        echo "Consulta UPDATE exitosa<br>";

        // Obtener datos para enviar el correo al solicitande la de unidad demo
        //sud = solicitante unidad demo
        //aud = asignacion unidad demo
        //pf = persona fisica
        //uni = unidad
        //mar = marca
        //model = modelo
        //caud = colaborador autorizador unidad demo

        $querycorreosolicitandeunidademo = "SELECT uni.placa, 
                            uni.numero_motor, 
                            uni.VIN, 
                            uni.costo_neto,
                            uni.año_unidad,
                            mar.nombre_marca, 
                            model.nombre_modelo,
                            sud.nombre_1, 
                            sud.nombre_2, 
                            sud.apellido_paterno, 
                            sud.apellido_materno, 
                            sud.id_colaborador,
                            pf.id_persona_fisica,
                            pf.nombre_1 AS nombre_1_persona_fisica,
                            pf.nombre_2 AS nombre_2_persona_fisica,
                            pf.apellido_paterno AS apellido_paterno_persona_fisica,
                            pf.apellido_materno AS apellido_materno_persona_fisica,
                            pf.archivo_ine,
                            pf.curp,
                            pf.archivo_curp,
                            pf.rfc,
                            pf.archivo_rfc,
                            pf.domicilio,
                            pf.archivo_domicilio,
                            aud.objetivo_prestamo,
                            aud.solicitar_master_driver,
                            aud.comentarios,
                            caud.nombre_1 AS nombre_1_colaborador_autorizador,
                            caud.nombre_2 AS nombre_2_colaborador_autorizador,
                            caud.apellido_paterno AS apellido_paterno_colaborador_autorizador,
                            caud.apellido_materno AS apellido_materno_colaborador_autorizador
                  FROM asignacion_unidad_demo AS aud
                  INNER JOIN colaboradores AS sud 
                    ON aud.id_colaborador_que_asigna = sud.id_colaborador
                  INNER JOIN personas_fisicas AS pf 
                    ON aud.id_persona_fisica = pf.id_persona_fisica
                  INNER JOIN unidades AS uni 
                    ON aud.id_unidad = uni.id_unidad
                  INNER JOIN modelos AS model 
                    ON uni.id_modelo = model.id_modelo
                  INNER JOIN marcas AS mar 
                    ON model.id_marca = mar.id_marca
                  INNER JOIN colaboradores AS caud 
                    ON aud.id_autorizador = caud.id_colaborador
                  WHERE aud.id_asignacion_unidad_demo = '$id_asignacion_demo'";

        $result = mysqli_query($conexion, $querycorreosolicitandeunidademo);
        if (!$result) {
            die("Error en consulta SELECT datos unidad: " . mysqli_error($conexion));
        }
        $row = mysqli_fetch_assoc($result);

        $nombre_1 = $row['nombre_1'];
        $nombre_2 = $row['nombre_2'];
        $apaterno = $row['apellido_paterno'];
        $amaterno = $row['apellido_materno'];
        $nombre_1_persona_fisica = $row['nombre_1_persona_fisica'];
        $nombre_2_persona_fisica = $row['nombre_2_persona_fisica'];
        $apellido_paterno_persona_fisica = $row['apellido_paterno_persona_fisica'];
        $apellido_materno_persona_fisica = $row['apellido_materno_persona_fisica'];
        $archivo_ine = $row['archivo_ine'];
        $curp = $row['curp'];
        $archivo_curp = $row['archivo_curp'];
        $rfc = $row['rfc'];
        $archivo_rfc = $row['archivo_rfc'];
        $domicilio = $row['domicilio'];
        $archivo_domicilio = $row['archivo_domicilio'];
        $placa = $row['placa'];
        $numero_motor = $row['numero_motor'];
        $VIN = $row['VIN'];
        $marca = $row['nombre_marca'];
        $modelo = $row['nombre_modelo'];
        $costo_neto = $row['costo_neto'];
        $año_unidad = $row['año_unidad'];
        $id_colaborador = $row['id_colaborador'];
        $objetivo_prestamo = $row['objetivo_prestamo'];
        $solicitar_master_driver = $row['solicitar_master_driver'];
        $comentarios = $row['comentarios'];
        $nombre_1_colaborador_autorizador = $row['nombre_1_colaborador_autorizador'];
        $nombre_2_colaborador_autorizador = $row['nombre_2_colaborador_autorizador'];
        $apellido_paterno_colaborador_autorizador = $row['apellido_paterno_colaborador_autorizador'];
        $apellido_materno_colaborador_autorizador = $row['apellido_materno_colaborador_autorizador'];

        //rutas de los archivos
        $ruta_archivo_ine = "../../../Servidor/archivos/files/files_asignacion_demo/personas_fisicas/files_ines/" . $archivo_ine;
        $ruta_archivo_curp = "../../../Servidor/archivos/files/files_asignacion_demo/personas_fisicas/files_CURP/" . $archivo_curp;
        $ruta_archivo_rfc = "../../../Servidor/archivos/files/files_asignacion_demo/personas_fisicas/files_RFC/" . $archivo_rfc;
        $ruta_archivo_domicilio = "../../../Servidor/archivos/files/files_asignacion_demo/personas_fisicas/files_domicilio/" . $archivo_domicilio;

        // Obtener correo del colaborador que esta solicitando la unidad demo
         $correo_query = "SELECT email_corporativo FROM colaboradores WHERE id_colaborador ='$id_colaborador'";
         $correo_result = mysqli_query($conexion, $correo_query);
         if (!$correo_result) {
             die("Error en consulta SELECT correo colaborador: " . mysqli_error($conexion));
         }
        $correo_row = mysqli_fetch_assoc($correo_result);
        $correo = $correo_row['email_corporativo'];
        //$correo = "uriel.cabello@ldrsolutions.com.mx";

        // Enviar correo al colaborador
        try {
            $mail1 = new PHPMailer();
            $mail1->isSMTP();
            $mail1->Host = 'smtp.gmail.com';
            $mail1->SMTPAuth = true;
            $mail1->Username = 'notificacion@ldrsolutions.com.mx';
            $mail1->Password = 'ppiz zylc bpod tczi';
            $mail1->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail1->Port = 587;

            $mail1->setFrom('notificacion@ldrsolutions.com.mx', 'Flotilla LDR');
            $mail1->addAddress($correo);
            $mail1->addBCC('uriel.cabello@ldrsolutions.com.mx');

            $mail1->isHTML(true);
            $mail1->Subject = utf8_decode('Notificación de asignación de unidad vehicular DEMO');
$mail1->Body = utf8_decode("
    <p>Estimado colaborador <strong>$nombre_1 $nombre_2 $apaterno $amaterno</strong>,</p>

    <p>Te informamos que la unidad vehicular <strong>DEMO</strong> que solicitaste para el siguiente usuario ha sido <strong>autorizada</strong>:</p>

    <p><strong>Usuario:</strong><br>
    $nombre_1_persona_fisica $nombre_2_persona_fisica $apellido_paterno_persona_fisica $apellido_materno_persona_fisica</p>

    <table style='border-collapse: collapse; font-family: Arial, sans-serif; font-size: 14px;'>
        <tr><td style='padding: 6px;'><strong>Marca:</strong></td><td style='padding: 6px;'>$marca</td></tr>
        <tr><td style='padding: 6px;'><strong>Modelo:</strong></td><td style='padding: 6px;'>$modelo</td></tr>
        <tr><td style='padding: 6px;'><strong>Placa:</strong></td><td style='padding: 6px;'>$placa</td></tr>
        <tr><td style='padding: 6px;'><strong>Número de motor:</strong></td><td style='padding: 6px;'>$numero_motor</td></tr>
        <tr><td style='padding: 6px;'><strong>VIN:</strong></td><td style='padding: 6px;'>$VIN</td></tr>
    </table>

    <p>En este momento se está enviando la información y los documentos correspondientes al área jurídica para la elaboración del contrato de <strong>COMODATO</strong>.</p>

    <p>Atentamente,<br>
    <strong>Flotilla - LDR</strong></p>

    <p><strong>Acceso a la plataforma:</strong><br>
    <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a></p>
");

            if ($mail1->send()) {
                echo "Correo enviado al colaborador.<br>";
            } else {
                echo "Error al enviar correo al colaborador: " . $mail1->ErrorInfo;
            }

        } catch (Exception $e) {
            echo "Excepción al enviar correo: {$mail1->ErrorInfo}<br>";
        }

        //enviamos correo a juridico con la informacion de la unidad cuando se autoriza por parte del usuario
         // Obtener correos de usuarios tipo 2 juridicos
                         $correos = [];
                         $correo_sql = "SELECT u.id_colaborador, 
                                                 u.id_tipo_usuario,
                                                 cor.id_colaborador,
                                                 cor.email_corporativo
                                         FROM usuarios AS u 
                                         INNER JOIN colaboradores AS cor
                                         ON u.id_colaborador = cor.id_colaborador
                                         WHERE u.id_tipo_usuario = 2";
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
                $ejecutarconsulta = mysqli_query($conexion, $queryautorizarunidademo);

                try {
                                $mail = new PHPMailer();
                                $mail->isSMTP();
                                $mail->Host = 'smtp.gmail.com';
                                $mail->SMTPAuth = true;
                                $mail->Username = 'notificacion@ldrsolutions.com.mx';
                                $mail->Password = 'ppiz zylc bpod tczi';
                                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                                $mail->Port = 587;

                                $mail->setFrom('notificacion@ldrsolutions.com.mx', 'Flotilla LDR');
                                foreach ($correos as $correo) {
                                    $mail->addAddress($correo);
                                }
                                $mail->addBCC('uriel.cabello@ldrsolutions.com.mx'); // Copia oculta

                                $mail->isHTML(true);
                               $mail->Subject = utf8_decode('Solicitud COMODATO para asignación unidad vehicular DEMO');
$mail->Body = utf8_decode("
    <p>Estimado colaborador del área jurídica,</p>

    <p>Por medio del presente, solicitamos la elaboración del <strong>COMODATO</strong> correspondiente a la asignación de la siguiente unidad vehicular <strong>DEMO</strong>:</p>

    <table style='border-collapse: collapse; font-family: Arial, sans-serif; font-size: 14px;'>
        <tr><td style='padding: 6px;'><strong>Marca / Modelo:</strong></td><td style='padding: 6px;'>$marca $modelo</td></tr>
        <tr><td style='padding: 6px;'><strong>Placa:</strong></td><td style='padding: 6px;'>$placa</td></tr>
        <tr><td style='padding: 6px;'><strong>Número de motor:</strong></td><td style='padding: 6px;'>$numero_motor</td></tr>
        <tr><td style='padding: 6px;'><strong>VIN:</strong></td><td style='padding: 6px;'>$VIN</td></tr>
        <tr><td style='padding: 6px;'><strong>Costo neto:</strong></td><td style='padding: 6px;'>$costo_neto</td></tr>
        <tr><td style='padding: 6px;'><strong>Año de la unidad:</strong></td><td style='padding: 6px;'>$año_unidad</td></tr>
    </table>

    <br>

    <p><strong>Datos del comodatario:</strong><br>
    $nombre_1_persona_fisica $nombre_2_persona_fisica $apellido_paterno_persona_fisica $apellido_materno_persona_fisica<br>
    <strong>CURP:</strong> $curp<br>
    <strong>RFC:</strong> $rfc<br>
    <strong>Domicilio:</strong> $domicilio</p>

    <hr style='margin: 20px 0;'>

    <p>Una vez elaborado el contrato de <strong>COMODATO</strong>, por favor súbelo a la plataforma <strong>Flotilla LDR</strong> siguiendo estos pasos:</p>

    <ol>
        <li>Ingresa a la plataforma desde la <strong>INTRANET</strong>.</li>
        <li>Dirígete al menú <strong>COMODATOS</strong>.</li>
        <li>Selecciona al usuario correspondiente y haz clic en <strong>SUBIR-COMODATO</strong>.</li>
        <li>Adjunta el documento generado.</li>
    </ol>

    <p style='color: #b20000;'><strong>¡Es de suma importancia verificar cuidadosamente la información del comodatario!</strong></p>

    <p>Gracias por tu atención.</p>

    <p>Atentamente,<br>
    <strong>Comercial - Flotilla LDR</strong></p>

    <p><strong>Acceso a la plataforma:</strong><br>
    <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a></p>
");


                                $mail->addAttachment('' . $ruta_archivo_ine . '');
                                $mail->addAttachment('' . $ruta_archivo_curp . '');
                                $mail->addAttachment('' . $ruta_archivo_rfc . '');
                                $mail->addAttachment('' . $ruta_archivo_domicilio . '');

                                $mail->addAttachment($ruta_archivo_ine); // Adjuntar el archivo PDF
                                $mail->addAttachment($ruta_archivo_curp);
                                $mail->addAttachment($ruta_archivo_rfc);
                                $mail->addAttachment($ruta_archivo_domicilio);

                                if ($mail->send()) {
                                    echo "Correo enviado exitosamente.";
                                } else {
                                    echo "Error al enviar el correo: " . $mail->ErrorInfo;
                                }
                            } catch (Exception $e) {
                                echo "Error al enviar el correo: {$mail->ErrorInfo}<br>";
                            }

                            //enviamos correo a ADMINISTRADOR PRUEBAS DEMO (Abraham)

                // Obtener correos de usuarios tipo 11 administrador pruebas demos
                        $correosadminpruebademo = [];
                        $correo_sql = "SELECT u.id_colaborador, 
                                                u.id_tipo_usuario,
                                                cor.id_colaborador,
                                                cor.email_corporativo
                                        FROM usuarios AS u 
                                        INNER JOIN colaboradores AS cor
                                        ON u.id_colaborador = cor.id_colaborador
                                        WHERE u.id_tipo_usuario = 11";
                        $correo_result = $conexion->query($correo_sql);
                        while ($correo_row = $correo_result->fetch_assoc()) {
                            if (!empty($correo_row['email_corporativo'])) {
                                $correosadminpruebademo[] = $correo_row['email_corporativo'];
                            }
                        }

                        //$correosadminpruebademo = ["uriel.cabello@ldrsolutions.com.mx"];

                        foreach ($correosadminpruebademo as $correo) {
                            echo "Correo: $correo <br>";
                        }
                $ejecutarconsulta = mysqli_query($conexion, $queryautorizarunidademo);
                //cadena para ver si requiere master driver y mandarlo por correo
$requiere_master_driver = ($solicitar_master_driver == 1) ? 'SI REQUIERE MASTER DRIVER' : 'NO REQUIERE MASTER DRIVER';

                try {
                                $mail = new PHPMailer();
                                $mail->isSMTP();
                                $mail->Host = 'smtp.gmail.com';
                                $mail->SMTPAuth = true;
                                $mail->Username = 'notificacion@ldrsolutions.com.mx';
                                $mail->Password = 'ppiz zylc bpod tczi';
                                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                                $mail->Port = 587;

                                $mail->setFrom('notificacion@ldrsolutions.com.mx', 'Flotilla LDR');
                                foreach ($correosadminpruebademo as $correo) {
                                    $mail->addAddress($correo);
                                }
                                $mail->addBCC('uriel.cabello@ldrsolutions.com.mx'); // Copia oculta

                                $mail->isHTML(true);
                               $mail->Subject = utf8_decode('Autorización de unidad DEMO');
$mail->Body = utf8_decode("
    <p>Estimado colaborador,</p>

    <p>Te notificamos que ha sido <strong>autorizada</strong> la asignación de la siguiente unidad vehicular <strong>DEMO</strong> por parte de:</p>

    <p><strong>$nombre_1_colaborador_autorizador $nombre_2_colaborador_autorizador $apellido_paterno_colaborador_autorizador $apellido_materno_colaborador_autorizador</strong></p>

    <table style='border-collapse: collapse; font-family: Arial, sans-serif; font-size: 14px;'>
        <tr><td style='padding: 6px;'><strong>Marca / Modelo:</strong></td><td style='padding: 6px;'>$marca $modelo</td></tr>
        <tr><td style='padding: 6px;'><strong>Placa:</strong></td><td style='padding: 6px;'>$placa</td></tr>
        <tr><td style='padding: 6px;'><strong>Número de motor:</strong></td><td style='padding: 6px;'>$numero_motor</td></tr>
        <tr><td style='padding: 6px;'><strong>VIN:</strong></td><td style='padding: 6px;'>$VIN</td></tr>
        <tr><td style='padding: 6px;'><strong>Costo neto:</strong></td><td style='padding: 6px;'>$costo_neto</td></tr>
        <tr><td style='padding: 6px;'><strong>Año de la unidad:</strong></td><td style='padding: 6px;'>$año_unidad</td></tr>
    </table>

    <br>

    <p><strong>Información del usuario:</strong><br>
    $nombre_1_persona_fisica $nombre_2_persona_fisica $apellido_paterno_persona_fisica $apellido_materno_persona_fisica</p>

    <p><strong>Objetivo del préstamo:</strong> $objetivo_prestamo<br>
    <strong>¿Requiere Master Driver?:</strong> $requiere_master_driver</p>

    <p>Gracias por tu atención.</p>

    <p>Atentamente,<br>
    <strong>Flotilla - LDR</strong></p>

    <p><strong>Acceso a la plataforma:</strong><br>
    <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a></p>
");


                                if ($mail->send()) {
                                    echo "Correo enviado exitosamente.";
                                } else {
                                    echo "Error al enviar el correo: " . $mail->ErrorInfo;
                                }
                            } catch (Exception $e) {
                                echo "Error al enviar el correo: {$mail->ErrorInfo}<br>";
                            }

        if ($ejecutarconsulta) {
            echo "Unidad actualizada correctamente.";
        } else {
            echo "Error al actualizar la unidad.";
        }

        echo "Fin de proceso con éxito.<br>";
    } else {
    echo "No se recibieron los datos correctamente.";
}
