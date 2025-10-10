    <?php
    session_start();
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    // Evitar que el navegador almacene la página en caché
    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
    header("Pragma: no-cache"); // HTTP 1.0.
    header("Expires: 0"); // Proxies

    // Inicializar bandera de sesión para controlar flujo si quieres
    if (!isset($_SESSION['visita_demo'])) {
        $_SESSION['visita_demo'] = true;
    }
    ?>


    <!doctype html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="Cliente/img/LDR_LOGO.png" href="Cliente/img/LDR_LOGO.png">
        <!--estilos de boostrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!--estIlos de interfaz-->
        <link rel="stylesheet" href="Cliente/css/estilos.css?v=1">
        <title>Unidades demo disponibles</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                scroll-behavior: smooth;
            }
        </style>


    </head>

    <body>
        <?php
        include("Cliente/include/menu_public.php");
        ?>

        <div class="cuadroblancocontenido">
            <div class="container" style="padding-top: 80px;">

                <!-- SECCIÓN ¿QUIERES SOLICITAR UNIDAD DEMO? -->
                <section id="solicitud" class="py-5">
                    <div class="container text-center">
                        <h2 class="section-title">¿Quieres solicitar una prueba?</h2>
                        <p class="lead">Para poder solicitar una prueba debes seleccionar la sede y el modelo.</p>
                    </div>
                </section>

                <!-- SECCIÓN FILTROS -->
                <section id="filtros" class="py-4">
                    <div class="container">
                        <form id="form-filtros" method="GET" class="row g-3 justify-content-center">
                            <div class="col-md-3">
                                <select class="form-select" name="id_sede">
                                    <option value="">-- Selecciona Sede --</option>
                                    <?php
                                    include("Servidor/conexion.php");
                                    $sedes = $conexion->query("SELECT id_sede, ubicacion FROM sedes ORDER BY ubicacion");
                                    while ($s = $sedes->fetch_assoc()) {
                                        $selected = (isset($_GET['id_sede']) && $_GET['id_sede'] == $s['id_sede']) ? 'selected' : '';
                                        echo "<option value='{$s['id_sede']}' $selected>{$s['ubicacion']}</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <select class="form-select" name="id_modelo">
                                    <option value="">-- Selecciona Modelo --</option>
                                    <?php
                                    $modelos = $conexion->query("SELECT id_modelo, nombre_modelo FROM modelos WHERE id_marca = 1 ORDER BY nombre_modelo");
                                    while ($m = $modelos->fetch_assoc()) {
                                        $selected = (isset($_GET['id_modelo']) && $_GET['id_modelo'] == $m['id_modelo']) ? 'selected' : '';
                                        echo "<option value='{$m['id_modelo']}' $selected>{$m['nombre_modelo']}</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-filtrar_demo_public w-100"><i class="fas fa-filter"></i> Seleccionar</button>
                            </div>
                        </form>
                    </div>
                </section>


                <!-- SECCIÓN UNIDADES DEMO DISPONIBLES -->
                <section id="unidades_demo" class="py-5 bg-light">
                    <div class="container">
                        <h2 class="section-title text-center mb-4">Unidades Demo Disponibles</h2>

                        <div id="resultado-unidades" class="row g-4">
                            <?php
                            include("Servidor/conexion.php");

                            // Filtro inicial (cuando se carga la página)
                            $condiciones = ["u.id_tipo_unidad = 3", "u.id_estatus_unidad = 1"];
                            if (!empty($_GET['id_sede'])) {
                                $condiciones[] = "u.id_sede = " . intval($_GET['id_sede']);
                            }
                            if (!empty($_GET['id_modelo'])) {
                                $condiciones[] = "u.id_modelo = " . intval($_GET['id_modelo']);
                            }

                            $where = implode(" AND ", $condiciones);

                            $sql = "SELECT 
                        u.id_unidad,
                        m.nombre_modelo AS modelo,
                        s.ubicacion AS sede,
                        u.vin,
                        u.img_unidad,
                        u.año_unidad
                    FROM unidades u
                    LEFT JOIN modelos m ON u.id_modelo = m.id_modelo
                    LEFT JOIN sedes s ON u.id_sede = s.id_sede
                    WHERE $where
                    ORDER BY u.fecha_alta DESC";

                            $result = $conexion->query($sql);

                            if ($result && $result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $imagen = !empty($row['img_unidad'])
                                        ? "Servidor/archivos/imagenes/imagenes_unidades/" . $row['img_unidad']
                                        : "Cliente/img/unidades/silueta_tracto3.png";
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

                                    <!-- Modal Solicitud -->
                                    <div class="modal fade" id="modalSolicitud<?php echo $row['id_unidad']; ?>" tabindex="-1" aria-labelledby="modalLabel<?php echo $row['id_unidad']; ?>" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form action="public_demos/enviar_solicitud_demo_public.php" method="POST">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalLabel<?php echo $row['id_unidad']; ?>">
                                                            Solicitar Prueba - <?php echo htmlspecialchars($row['modelo']); ?>
                                                        </h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <input type="hidden" name="id_unidad" value="<?php echo $row['id_unidad']; ?>">
                                                        <div class="mb-3">
                                                            <label class="form-label">Nombre <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="nombre" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label">Correo electrónico <span class="text-danger">*</span></label>
                                                            <input type="email" class="form-control" name="correo" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label">Teléfono <span class="text-danger">*</span></label>
                                                            <input type="tel" class="form-control" name="telefono" required pattern="\d{10}" placeholder="10 dígitos">
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
                        </div>
                    </div>
                </section>



                <!-- SECCIÓN DE CONTACTO -->
                <section id="contacto" class="py-5">
                    <div class="container text-center">
                        <h2 class="section-title">Contáctanos</h2>
                        <p class="lead mb-4">¿Deseas conocer más sobre nuestras unidades demo o agendar una prueba?</p>
                        <a href="mailto:uriel.cabello@ldrsolutions.com.mx" class="btn btn_contacto btn-lg">
                            <i class="fas fa-envelope"></i> Enviar correo
                        </a>
                    </div>
                </section>

                <!-- FOOTER -->
                <footer class="text-center">
                    <p class="mb-0">© 2025 LDR Solutions | Todos los derechos reservados</p>
                </footer>
            </div>
        </div>

        <div class="contenedorspinner" id="contenedorspinner">
            <span class="loader"></span>
        </div>


        <!--jquery-->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!-- Incluir el script de Toastify-->
        <script src="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.js"></script>
        <!-- CDN para poder utilizar las Sweet Alert -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- CDN para poder utilizar las Sweet Alert2-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <!--MENU-->
        <script src="Cliente/js/menu.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <!--sweatalert-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <?php if (isset($_GET['solicitud'])): ?>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                <?php
                switch ($_GET['solicitud']) {
                    case 'ok':
                        echo "Swal.fire({
            icon: 'success',
            title: '¡Solicitud enviada!',
            text: 'Tu solicitud ha sido enviada correctamente. Pronto nos pondremos en contacto contigo.',
            confirmButtonColor: '#004085',
            confirmButtonText: 'Aceptar'
        });";
                        break;
                    case 'error':
                        echo "Swal.fire({
            icon: 'error',
            title: '¡Error!',
            text: 'No se pudo enviar la solicitud. Intenta nuevamente.',
            confirmButtonColor: '#d33',
            confirmButtonText: 'Aceptar'
        });";
                        break;
                    case 'unidad_no_encontrada':
                        echo "Swal.fire({
            icon: 'warning',
            title: 'Unidad no encontrada',
            text: 'La unidad que intentas solicitar no existe o ya no está disponible.',
            confirmButtonColor: '#f0ad4e',
            confirmButtonText: 'Aceptar'
        });";
                        break;
                }
                ?>
            </script>
        <?php endif; ?>

        <script>
            document.addEventListener("DOMContentLoaded", function() {
                const formFiltros = document.getElementById("form-filtros");
                const contenedor = document.getElementById("resultado-unidades");

                formFiltros.addEventListener("submit", function(e) {
                    e.preventDefault();

                    const formData = new FormData(formFiltros);
                    const params = new URLSearchParams(formData).toString();

                    // Spinner mientras carga
                    contenedor.innerHTML = `<div class='text-center my-5'>
            <div class='spinner-border text-primary' role='status'>
                <span class='visually-hidden'>Cargando...</span>
            </div>
        </div>`;

                    fetch("public_demos/filtrar_unidades.php?" + params)
                        .then(response => response.text())
                        .then(html => {
                            contenedor.innerHTML = html;
                            // Scroll suave a resultados
                            document.getElementById("unidades_demo").scrollIntoView({
                                behavior: "smooth"
                            });
                        })
                        .catch(err => {
                            console.error(err);
                            contenedor.innerHTML = "<p class='text-danger text-center'>Error al cargar resultados.</p>";
                        });
                });
            });
        </script>



    </body>

    </html>