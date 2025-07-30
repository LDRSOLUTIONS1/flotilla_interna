<?php
include("../../conexion.php");

if (!isset($_SESSION)) {
    session_start();
}

$id_usuario_pool = $_SESSION['id_colaborador'];

if (isset($_POST['id_asignacion_unidad_demo'])) {
    $id_unidad_demo = $_POST['id_asignacion_unidad_demo'];

                                            //query para obtener la informacion de la unidad
                                            //aud = Asignacion Unidad Demo
                                            //unid = Unidades
                                            //pf = Persona Fisica
                                            //ca = Colaborador que Asigna
                                            //model = Modelo
                                            //marc = Marca

    $queryobtenerinfounidadasignacion = "SELECT 
                                            aud.id_asignacion_unidad_demo,
                                            aud.id_unidad,
                                            aud.id_colaborador_que_asigna,
                                            aud.id_persona_fisica,
                                            aud.id_persona_moral,
                                            aud.id_colaborador_sube_reporte_final,
                                            aud.fecha_prestamo,
                                            aud.fecha_devolucion,
                                            aud.objetivo_prestamo,
                                            aud.reporte_final_prueba,
                                            aud.comentarios_finales,
                                            aud.reporte_final_prueba,
                                            aud.comentarios_finales,
                                            unid.img_unidad,
                                            unid.vin,
                                            unid.numero_motor,
                                            unid.id_modelo,
                                            model.nombre_modelo,
                                            marc.nombre_marca,
                                            ca.nombre_1 AS nombre1colaborador,
                                            ca.nombre_2 AS nombre2colaborador,
                                            ca.apellido_paterno AS apellido1colaborador,
                                            ca.apellido_materno AS apellido2colaborador,
                                            pf.nombre_1 AS nombre1personafisica,
                                            pf.nombre_2 AS nombre2personafisica,
                                            pf.apellido_paterno AS apellidopersonafisica,
                                            pf.apellido_materno AS apellidompersonafisica,
                                            pm.organizacion_institucion
                                        FROM asignacion_unidad_demo AS aud
                                        LEFT JOIN unidades AS unid
                                        ON unid.id_unidad = aud.id_unidad
                                        LEFT JOIN modelos AS model
                                        ON model.id_modelo = unid.id_modelo
                                        LEFT JOIN marcas AS marc
                                        ON marc.id_marca = model.id_marca
                                        LEFT JOIN colaboradores AS ca
                                        ON ca.id_colaborador = aud.id_colaborador_que_asigna
                                        LEFT JOIN personas_fisicas AS pf
                                        ON pf.id_persona_fisica = aud.id_persona_fisica
                                        LEFT JOIN personas_morales AS pm
                                        ON pm.id_persona_moral = aud.id_persona_moral
                                        WHERE aud.id_asignacion_unidad_demo = $id_unidad_demo";

    $resultadoinfounidadasignacion = $conexion->query($queryobtenerinfounidadasignacion);

    if ($resultadoinfounidadasignacion && mysqli_num_rows($resultadoinfounidadasignacion) > 0) {
        $data = mysqli_fetch_array($resultadoinfounidadasignacion);

       $nombre_cliente = 'N/A';
if (!empty($data['id_persona_fisica'])) {
    $nombre_cliente = $data['nombre1personafisica'] . ' ' . $data['nombre2personafisica'] . ' ' . $data['apellidopersonafisica'] . ' ' . $data['apellidompersonafisica'];
} elseif (!empty($data['id_persona_moral'])) {
    $nombre_cliente = $data['organizacion_institucion'];
}
?>

<div class="container-fluid">
  <div class="row mb-3">
    <div class="col-md-4 text-center">
      <img src="../../Servidor/archivos/imagenes/imagenes_unidades/<?= $data['img_unidad'] ?>" class="img-fluid rounded" alt="Imagen unidad" onerror="this.src='../../Cliente/img/unidades/carro_desconocido.png'">
    </div>
    <div class="col-md-8">
      <h5 class="mb-3"><strong>Información de la Unidad</strong></h5>
      <div class="row g-3">
        <div class="col-md-6">
          <label class="form-label">Marca</label>
          <input type="text" class="form-control" value="<?= $data['nombre_marca'] ?>" disabled>
        </div>
        <div class="col-md-6">
          <label class="form-label">Modelo</label>
          <input type="text" class="form-control" value="<?= $data['nombre_modelo'] ?>" disabled>
        </div>
        <div class="col-md-6">
          <label class="form-label">VIN</label>
          <input type="text" class="form-control" value="<?= $data['vin'] ?>" disabled>
        </div>
        <div class="col-md-6">
          <label class="form-label">Motor</label>
          <input type="text" class="form-control" value="<?= $data['numero_motor'] ?>" disabled>
        </div>
        <div class="col-md-6">
          <label class="form-label">Fecha préstamo</label>
          <input type="text" class="form-control" value="<?= $data['fecha_prestamo'] ?>" disabled>
        </div>
        <div class="col-md-6">
          <label class="form-label">Fecha devolución</label>
          <input type="text" class="form-control" value="<?= $data['fecha_devolucion'] ?>" disabled>
        </div>
        <div class="col-md-12">
          <label class="form-label">Cliente</label>
          <input type="text" class="form-control" value="<?= $nombre_cliente ?>" disabled>
        </div>
        <div class="col-md-12">
          <label class="form-label">Objetivo del préstamo</label>
          <textarea class="form-control" rows="3" disabled><?= $data['objetivo_prestamo'] ?></textarea>
        </div>
      </div>
    </div>
  </div>

  <?php if (!empty($data['reporte_final_prueba'])): ?>
  <div class="row mt-3">
    <div class="col-12">
      <h6 class="mb-2"><strong>Reporte Final</strong></h6>
      <p><strong>Archivo:</strong> <a href="../../Servidor/archivos/files/files_asignacion_demo/pruebas_unidades_demo/reportes_finales/<?= $data['reporte_final_prueba'] ?>" target="_blank"><?= $data['reporte_final_prueba'] ?></a></p>
      <p><strong>Comentarios:</strong> <?= $data['comentarios_finales'] ?></p>
    </div>
  </div>
  <?php endif; ?>
</div>

<?php
    } else {
        echo '<div class="alert alert-danger" role="alert">No se encontraron resultados.</div>';
    }
} else {
    echo '<div class="alert alert-danger" role="alert">No se encontraron resultados.</div>';
}
?>