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
&& isset($_POST['id_persona_moral'])){
    echo "Datos recibidos<br>";

    $id_asignacion_demo = $_POST['id_asignacion_demo'];
    $id_unidad = $_POST['id_unidad'];
    $id_persona_moral = $_POST['id_persona_moral'];


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
        //pm = persona moral
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
                            pm.id_persona_moral,
                            pm.organizacion_institucion,
                            pm.archivo_identificacion_representante_legal,
                            pm.archivo_poder_representante_legal,
                            pm.rfc_moral,
                            pm.archivo_rfc_moral,
                            pm.domicilio,
                            pm.archivo_domiclio_moral,
                            pm.archivo_escritura_constitutiva,
                            pm.archivo_escrituras_estatus_sociales,
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
                  INNER JOIN personas_morales AS pm 
                    ON aud.id_persona_moral = pm.id_persona_moral
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
        $organizacion_institucion = $row['organizacion_institucion'];
        $placa = $row['placa'];
        $numero_motor = $row['numero_motor'];
        $VIN = $row['VIN'];
        $marca = $row['nombre_marca'];
        $modelo = $row['nombre_modelo'];
        $costo_neto = $row['costo_neto'];
        $año_unidad = $row['año_unidad'];
        $id_colaborador = $row['id_colaborador'];
        $rfc_moral = $row['rfc_moral'];
        $archivo_identificacion_representante_legal = $row['archivo_identificacion_representante_legal'];
        $archivo_poder_representante_legal = $row['archivo_poder_representante_legal'];
        $archivo_rfc_moral = $row['archivo_rfc_moral'];
        $domicilio = $row['domicilio'];
        $archivo_domiclio_moral = $row['archivo_domiclio_moral'];
        $archivo_escritura_constitutiva = $row['archivo_escritura_constitutiva'];
        $archivo_escrituras_estatus_sociales = $row['archivo_escrituras_estatus_sociales'];
        $objetivo_prestamo = $row['objetivo_prestamo'];
        $solicitar_master_driver = $row['solicitar_master_driver'];
        $comentarios = $row['comentarios'];
        $nombre_1_colaborador_autorizador = $row['nombre_1_colaborador_autorizador'];
        $nombre_2_colaborador_autorizador = $row['nombre_2_colaborador_autorizador'];
        $apellido_paterno_colaborador_autorizador = $row['apellido_paterno_colaborador_autorizador'];
        $apellido_materno_colaborador_autorizador = $row['apellido_materno_colaborador_autorizador'];

        //rutas de los archivos
        $ruta_archivo_identificacion_representante_legal = '../../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_id/' . $archivo_identificacion_representante_legal;
        $ruta_archivo_poder_representante_legal = '../../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_poder/' . $archivo_poder_representante_legal;
        $ruta_archivo_rfc_moral = '../../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_RFC/' . $archivo_rfc_moral;
        $ruta_archivo_domiclio_moral = '../../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_domicilio/' . $archivo_domiclio_moral;
        $ruta_archivo_escritura_constitutiva = '../../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_escrituraconstitutiva/' . $archivo_escritura_constitutiva;
        $ruta_archivo_escrituras_estatus_sociales = '../../../Servidor/archivos/files/files_asignacion_demo/personas_morales/files_estatusociales/' . $archivo_escrituras_estatus_sociales;


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
            $mail1->Body = utf8_decode("Estimado colaborador <strong>$nombre_1 $nombre_2 $apaterno $amaterno</strong>,<br><br>
                            Te informamos que la unidad vehicular DEMO que solicitaste a la empresa o institución:<br>
                            <strong>$organizacion_institucion</strong> <br>
                            Autorizado por: <strong>$nombre_1_colaborador_autorizador $nombre_2_colaborador_autorizador $apellido_paterno_colaborador_autorizador $apellido_materno_colaborador_autorizador</strong>
                            con los siguientes datos ha sido autorizada.<br><br>
                            <strong>Marca:</strong> $marca<br>
                            <strong>Modelo:</strong> $modelo<br>
                            <strong>Placa:</strong> $placa<br>
                            <strong>Número de motor:</strong> $numero_motor<br>
                            <strong>VIN:</strong> $VIN<br><br>
                            En este momento se está enviando la información y documentos correspondientes al aréa jurídica para la realización del contrato de COMODATO.<br><br>
                            Atentamente.<br>
                            <strong>Flotilla - LDR</strong><br><br>
                            <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a>");

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
                                $mail->Subject = utf8_decode('Solicitud COMODATO para asignación unidad vehicular DEMO'); // Asunto del correo
                                $mail->Body = utf8_decode("Estimado colaborador del área jurídico.
                                                            <br>
                                                            <br>
                                                            Te enviamos este correo solicitando el <strong>COMODATO</strong> correspondiente a la asignación de la siguiente unidad vehicular DEMO. 
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
                                                            Para la empresa o isntitución: <strong>$organizacion_institucion</strong> 
                                                            <br> 
                                                            RFC: <strong>$rfc_moral</strong> 
                                                            <br>
                                                            Domicilio: <strong>$domicilio</strong>
                                                            <br>
                                                            Una vez realizado el COMODATO debes subirlo en la plataforma <strong>Flotilla LDR.</strong>
                                                            <br>
                                                            Sigue los siguientes pasos para subir el documento:
                                                            <br>
                                                            <br>
                                                            1. Ingresa a la plataforma Flotilla LDR con tu correo y contraseña.
                                                            <br>
                                                            2. Dirígete al menú en el apartado COMODATOS DEMOS.
                                                            <br>
                                                            3. Selecciona la empresa o institución con la unidad correspondiente y da clic en el botón SUBIR-COMODATO.
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
                                                            <strong>Comercial - Flotilla LDR</strong>
                                                            <br>
                                                            <br>
                                                            <strong>Acceso a la plataforma: </strong>
                                                            <br>
                                                            <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a>");

                                $mail->addAttachment('' . $ruta_archivo_identificacion_representante_legal . '');
                                $mail->addAttachment('' . $ruta_archivo_poder_representante_legal . '');
                                $mail->addAttachment('' . $ruta_archivo_rfc_moral . '');
                                $mail->addAttachment('' . $ruta_archivo_domiclio_moral . '');
                                $mail->addAttachment('' . $ruta_archivo_escritura_constitutiva . '');
                                $mail->addAttachment('' . $ruta_archivo_escrituras_estatus_sociales . '');

                                $mail->addAttachment($ruta_archivo_identificacion_representante_legal); // Adjuntar el archivo PDF
                                $mail->addAttachment($ruta_archivo_poder_representante_legal);
                                $mail->addAttachment($ruta_archivo_rfc_moral);
                                $mail->addAttachment($ruta_archivo_domiclio_moral);
                                $mail->addAttachment($ruta_archivo_escritura_constitutiva);
                                $mail->addAttachment($ruta_archivo_escrituras_estatus_sociales);

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
                                $mail->Subject = utf8_decode('Autorizacion de unidad DEMO'); // Asunto del correo
                                $mail->Body = utf8_decode("Estimado colaborador.
                                                            <br>
                                                            <br>
                                                            Te enviamos este correo notificandote sobre la autorización correspondiente a la asignación de la siguiente unidad vehicular DEMO a sido autorizada por <strong>$nombre_1_colaborador_autorizador $nombre_2_colaborador_autorizador $apellido_paterno_colaborador_autorizador $apellido_materno_colaborador_autorizador</strong>. 
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
                                                            Para la empresa o isntitución: <strong>$organizacion_institucion</strong> 
                                                            <br>
                                                            objetivo de prestamo: <strong>$objetivo_prestamo</strong> 
                                                            <br>
                                                            requiere Master Driver: <strong><?php echo $solicitar_master_driver == 1 ? 'SI REQUIERE MASTER DRIVER' : 'NO REQUIERE MASTER DRIVER'; ?></strong>
                                                            <br>
                                                            Sigue los siguientes pasos para subir el documento:
                                                            <br>
                                                            <br>
                                                            1. Ingresa a la plataforma Flotilla LDR con tu correo y contraseña.
                                                            <br>
                                                            2. Dirígete al menú en el apartado COMODATOS DEMOS.
                                                            <br>
                                                            3. Selecciona la empresa o institución con la unidad correspondiente y da clic en el botón SUBIR-COMODATO.
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
                                                            <strong>Comercial - Flotilla LDR</strong>
                                                            <br>
                                                            <br>
                                                            <strong>Acceso a la plataforma: </strong>
                                                            <br>
                                                            <a href='https://ldrhsys.ldrhumanresources.com/default.php'>https://ldrhsys.ldrhumanresources.com/default.php</a>");

                                $mail->addAttachment('' . $ruta_archivo_identificacion_representante_legal . '');
                                $mail->addAttachment('' . $ruta_archivo_poder_representante_legal . '');
                                $mail->addAttachment('' . $ruta_archivo_rfc_moral . '');
                                $mail->addAttachment('' . $ruta_archivo_domiclio_moral . '');
                                $mail->addAttachment('' . $ruta_archivo_escritura_constitutiva . '');
                                $mail->addAttachment('' . $ruta_archivo_escrituras_estatus_sociales . '');

                                $mail->addAttachment($ruta_archivo_identificacion_representante_legal); // Adjuntar el archivo PDF
                                $mail->addAttachment($ruta_archivo_poder_representante_legal);
                                $mail->addAttachment($ruta_archivo_rfc_moral);
                                $mail->addAttachment($ruta_archivo_domiclio_moral);
                                $mail->addAttachment($ruta_archivo_escritura_constitutiva);
                                $mail->addAttachment($ruta_archivo_escrituras_estatus_sociales);

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
