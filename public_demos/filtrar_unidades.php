<?php
include("../Servidor/conexion.php");

$condiciones = ["u.id_tipo_unidad = 3", "u.id_estatus_unidad = 1"];
if (!empty($_GET['id_sede'])) $condiciones[] = "u.id_sede = " . intval($_GET['id_sede']);
if (!empty($_GET['id_modelo'])) $condiciones[] = "u.id_modelo = " . intval($_GET['id_modelo']);

$where = implode(" AND ", $condiciones);

$sql = "SELECT u.id_unidad, m.nombre_modelo AS modelo, s.ubicacion AS sede, u.vin, u.img_unidad, u.año_unidad
        FROM unidades u
        LEFT JOIN modelos m ON u.id_modelo = m.id_modelo
        LEFT JOIN sedes s ON u.id_sede = s.id_sede
        WHERE $where
        ORDER BY u.fecha_alta DESC";

$result = $conexion->query($sql);

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $imagen = !empty($row['img_unidad']) ? "Servidor/archivos/imagenes/imagenes_unidades/" . $row['img_unidad'] : "Cliente/img/unidades/silueta_tracto3.png";
        ?>
        <div class="col-lg-4 col-md-6 col-sm-12 d-flex justify-content-center">
            <div class="card h-100 shadow-sm border-0 rounded-4" style="max-width: 320px;">
                <img src="<?php echo $imagen; ?>" class="card-img-top img-unidad" alt="Unidad Demo">
                <div class="card-body">
                    <h5 class="card-title fw-bold text-demo_public"><?php echo htmlspecialchars($row['modelo']); ?></h5>
                    <p class="card-text small text-muted mb-1">
                        <i class="fas fa-map-marker-alt"></i> <?php echo htmlspecialchars($row['sede']); ?>
                    </p>
                </div>
                <div class="card-footer bg-transparent border-0 text-center pb-3">
                    <button type="button"
                            class="btn btn-primary btn-sm"
                            data-bs-toggle="modal"
                            data-bs-target="#modalSolicitud<?php echo $row['id_unidad']; ?>">
                        <i class="fas fa-clipboard-check"></i> Solicitar Prueba
                    </button>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="modalSolicitud<?php echo $row['id_unidad']; ?>" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="public_demos/enviar_solicitud_demo_public.php" method="POST">
                        <div class="modal-header">
                            <h5 class="modal-title">Solicitar Prueba - <?php echo htmlspecialchars($row['modelo']); ?></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="id_unidad" value="<?php echo $row['id_unidad']; ?>">
                            <div class="mb-3">
                                <label class="form-label">Nombre <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="nombre" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Correo <span class="text-danger">*</span></label>
                                <input type="email" class="form-control" name="correo" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Teléfono <span class="text-danger">*</span></label>
                                <input type="tel" class="form-control" name="telefono" required pattern="\d{10}">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Enviar Solicitud</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <?php
    }
} else {
    echo '<div class="col-12 text-center"><p class="text-muted">No hay unidades demo disponibles.</p></div>';
}
?>
