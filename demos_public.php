    <?php
    session_start();
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    // Evitar cache del navegador
header("Cache-Control: no-cache, no-store, must-revalidate");
header("Pragma: no-cache");
header("Expires: 0");

// Inicializar bandera de visita
if(!isset($_SESSION['visita_publica'])) {
    $_SESSION['visita_publica'] = true;
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

            <!-- SECCIÓN HERO -->
            <section id="inicio" class="hero-section">
                <div class="hero-content">
                    <h1 class="display-4 fw-bold">LDR Solutions</h1>
                    <p class="lead">Innovando en movilidad y demostración automotriz</p>
                    <a href="demos_disponibles_public.php" class="btn btn_ver_unidades_demo btn-lg mt-3">Ver Unidades Demo Disponibles</a>
                </div>
            </section>

            <!-- SECCIÓN QUIÉNES SOMOS -->
            <section id="empresa" class="py-5">
                <div class="container text-center">
                    <h2 class="section-title">¿Quiénes Somos?</h2>
                    <p class="lead">En <strong>LDR Solutions</strong> Somos una empresa dedicada a ofrecer soluciones integrales de transporte y demostración de vehículos.
                        Nuestro objetivo es brindar experiencias únicas a nuestros clientes mediante la gestión, monitoreo y prueba de unidades demo de alta calidad.</p>
                </div>
            </section>

            <!-- SECCIÓN CARRUSEL DE UNIDADES -->
            <section id="unidades" class="py-5 bg-light">
                <div class="container">
                    <h2 class="section-title text-center">Nuestras Unidades Demo</h2>
                    <div id="carouselUnidades" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner rounded-4 shadow">
                            <div class="carousel-item active">
                                <img src="Cliente/img/unidades/galaxy.jpg" class="d-block w-100" alt="Tractocamión Demo">
                                <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded-3">
                                    <h5>AUMAN GALAXY</h5>
                                    <p>Con el FOTON Super Power Train, combinado con el potente motor FOTON Cummins y la caja FOTON ZF AMT, garantizando eficiencia, economía y confiabilidad.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Cliente/img/unidades/Banner.jpg" class="d-block w-100" alt="Pickup Demo">
                                <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded-3">
                                    <h5>AUMAN R EST-A</h5>
                                    <p>Robusta, confiable y preparada para cualquier terreno.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Cliente/img/unidades/aumark.jpg" class="d-block w-100" alt="Camión Demo">
                                <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded-3">
                                    <h5>Aumark S8</h5>
                                    <p>Eficiencia en transporte y tecnología avanzada.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselUnidades" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselUnidades" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
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
    </body>

    </html>