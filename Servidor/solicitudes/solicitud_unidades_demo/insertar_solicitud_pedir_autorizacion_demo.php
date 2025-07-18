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
    isset($_POST['fechadevolucionunidademo']) &&
    isset($_POST['requiere_master_driver'])
) {
    $valoridunidad = mysqli_real_escape_string($conexion, $_POST['id_unidad']);
    $id_colaborador_que_asigna = mysqli_real_escape_string($conexion, $_POST['id_colaborador']);

    $id_persona_fisica = isset($_POST['id_persona_fisica']) && $_POST['id_persona_fisica'] !== 'null'
    ? mysqli_real_escape_string($conexion, $_POST['id_persona_fisica']) : null;

    $id_persona_moral = isset($_POST['id_persona_moral']) && $_POST['id_persona_moral'] !== 'null'
    ? mysqli_real_escape_string($conexion, $_POST['id_persona_moral']) : null;

    $fechasolicitudunidademo = mysqli_real_escape_string($conexion, $_POST['fechasolicitudunidademo']);
    $fechadevolucionunidademo = mysqli_real_escape_string($conexion, $_POST['fechadevolucionunidademo']);
    $requiere_master_driver = isset($_POST['requiere_master_driver']) && $_POST['requiere_master_driver'] == '1' ? 1 : 0;
    $objetivo_prueba_demo = mysqli_real_escape_string($conexion, $_POST['objetivo_prueba_demo']);
    $comentarios_pruebas_demo = mysqli_real_escape_string($conexion, $_POST['comentarios_pruebas_demo']);

echo "requiere_master_driver: $requiere_master_driver";

    // Insertamos la unidad
$columnas = [
    "id_unidad",
    "id_colaborador_que_asigna",
    "fecha_prestamo",
    "fecha_devolucion",
    "objetivo_prestamo",
    "comentarios",
    "solicitar_master_driver"
];

$valores = [
    "'$valoridunidad'",
    "'$id_colaborador_que_asigna'",
    "'$fechasolicitudunidademo'",
    "'$fechadevolucionunidademo'",
    "'$objetivo_prueba_demo'",
    "'$comentarios_pruebas_demo'",
    "'$requiere_master_driver'"
];

if ($id_persona_fisica !== null) {
    $columnas[] = "id_persona_fisica";
    $valores[] = "'$id_persona_fisica'";
} elseif ($id_persona_moral !== null) {
    $columnas[] = "id_persona_moral";
    $valores[] = "'$id_persona_moral'";
} else {
    echo "❌ Error: No se proporcionó persona física ni moral.";
    exit;
}

$queryinsertarsolicitudunidademo = "INSERT INTO asignacion_unidad_demo (" . implode(", ", $columnas) . ") VALUES (" . implode(", ", $valores) . ")";


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
                                uni.año_unidad,
                                caud.nombre_1 AS nombre_1_colaborador_asigna,
                                caud.nombre_2 AS nombre_2_colaborador_asigna,
                                caud.apellido_paterno AS apellido_paterno_colaborador_asigna,
                                caud.apellido_materno AS apellido_materno_colaborador_asigna,
                                area.nombre_area,
                                puesto.nombre_puesto
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
                            INNER JOIN colaboradores AS caud 
                                ON notificar.id_colaborador_que_asigna = caud.id_colaborador
                            INNER JOIN areas AS area
                                ON caud.id_area = area.id_area
                            INNER JOIN puestos AS puesto
                                ON caud.id_puesto = puesto.id_puesto
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
                $nombre_1_colaborador_asigna = $data['nombre_1_colaborador_asigna'];
                $nombre_2_colaborador_asigna = $data['nombre_2_colaborador_asigna'];
                $apellido_paterno_colaborador_asigna = $data['apellido_paterno_colaborador_asigna'];
                $apellido_materno_colaborador_asigna = $data['apellido_materno_colaborador_asigna'];
                $area = $data['nombre_area'];
                $puesto = $data['nombre_puesto'];

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
                    $mail->Subject = utf8_decode('Solicitud de Autorización unidad DEMO');
$mail->Body = utf8_decode("
    <p>Estimado colaborador,</p>

    <p>Por medio del presente, solicitamos tu <strong>AUTORIZACIÓN</strong> para la asignación de la siguiente unidad vehicular <strong>DEMO</strong>:</p>

    <table style='border-collapse: collapse; font-family: Arial, sans-serif; font-size: 14px;'>
        <tr><td style='padding: 6px;'><strong>Marca / Modelo:</strong></td><td style='padding: 6px;'>$marca $modelo</td></tr>
        <tr><td style='padding: 6px;'><strong>Placa:</strong></td><td style='padding: 6px;'>$placa</td></tr>
        <tr><td style='padding: 6px;'><strong>Número de motor:</strong></td><td style='padding: 6px;'>$numero_motor</td></tr>
        <tr><td style='padding: 6px;'><strong>VIN:</strong></td><td style='padding: 6px;'>$VIN</td></tr>
        <tr><td style='padding: 6px;'><strong>Costo neto:</strong></td><td style='padding: 6px;'>$ $costo_neto MXN</td></tr>
        <tr><td style='padding: 6px;'><strong>Año de la unidad:</strong></td><td style='padding: 6px;'>$año_unidad</td></tr>
    </table>

    <p><strong>Usuario / Institución:</strong><br>
    $nombre_1 $nombre_2 $apaterno $amaterno $organizacion</p>

    <p><strong>Solicitante:</strong><br>
    $nombre_1_colaborador_asigna $nombre_2_colaborador_asigna $apellido_paterno_colaborador_asigna $apellido_materno_colaborador_asigna<br>
    <strong>Área:</strong> $area<br>
    <strong>Puesto:</strong> $puesto</p>

    <hr style='margin: 20px 0;'>

    <p><strong>Pasos para autorizar:</strong></p>
    <ol>
        <li>Ingresa a la plataforma <strong>Flotilla LDR</strong> desde la <strong>INTRANET</strong>.</li>
        <li>Dirígete al menú en el apartado <strong>Autorizaciones</strong>.</li>
        <li>Selecciona al usuario con la unidad correspondiente y haz clic en <strong>Verificar</strong>.</li>
        <li>Presiona <strong>AUTORIZAR</strong> si estás de acuerdo con la asignación, o bien <strong>RECHAZAR</strong> y especifica el motivo.</li>
    </ol>

    <p style='color: #b20000;'><strong>¡Es de suma importancia verificar correctamente la autorización para evitar asignaciones erróneas!</strong></p>

    <p>Gracias por tu atención.</p>

    <p>Atentamente,<br>
    <strong>Comercial - Flotilla LDR</strong></p>

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
