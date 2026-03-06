<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['id_tipo_usuario'])) {
    header("Location: ../../index.php");
    exit;
}

// Solo demos
if (in_array($_SESSION['id_tipo_usuario'], [1, 2, 3])) {
    echo "<h3 style='text-align:center;margin-top:50px;'>No tienes permiso para acceder a Demos</h3>";
    exit;
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>



<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="../img/LDR_LOGO.png" href="../img/LDR_LOGO.png">
    <title>Demos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilos.css?v=<?php echo time(); ?>">
    <!-- CDN para poder utilizar los toastify -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">


</head>

<body>

    <?php include("../include/menu.php"); ?>

    <div class="cuadroblancocontenido">

            <!-- SECCIÓN HERO -->
            <section id="inicio" class="hero-section">
                <div class="hero-content">
                    <h1 class="display-4 fw-bold">LDR Solutions</h1>
                    <p class="lead">Innovando en movilidad y demostración automotriz</p>
                    <h2 class="text-center">Bienvenido<?php
                                        include("../include/bienvenida.php");
                                        ?></h2>
                </div>
            </section>


            <!-- SECCIÓN QUIÉNES SOMOS -->
            <section id="empresa" class="py-5">
                <div class="container text-center">
                    <h2 class="section-title">¿Qué puedes hacer aquí?</h2>
                    <p class="lead">En esta plataforma podra asignar unidades demo de alta calidad a personas físicas o morales.</p>
                    <p class="lead">“Solicita, presta y prueba unidades demo con total transparencia y eficiencia.”</p>
                </div>
            </section>

            <!-- SECCIÓN CARRUSEL DE UNIDADES -->
            <section id="unidades" class="py-5 bg-light">
                <div class="container">
                    <h2 class="section-title text-center">Unidades que puedes asignar</h2>
                    <div id="carouselUnidades" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner rounded-4 shadow">
                            <div class="carousel-item active">
                                <img src="../../Cliente/img/unidades/galaxy.jpg" class="d-block w-100" alt="Tractocamión Demo">
                                <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded-3">
                                    <h5>AUMAN GALAXY</h5>
                                    <p>Con el FOTON Super Power Train, combinado con el potente motor FOTON Cummins y la caja FOTON ZF AMT, garantizando eficiencia, economía y confiabilidad.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../../Cliente/img/unidades/Banner.jpg" class="d-block w-100" alt="Pickup Demo">
                                <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded-3">
                                    <h5>AUMAN R EST-A</h5>
                                    <p>Robusta, confiable y preparada para cualquier terreno.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../../Cliente/img/unidades/aumark.jpg" class="d-block w-100" alt="Camión Demo">
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

            <!-- FOOTER -->
            <footer class="text-center">
                <p class="mb-0">© 2026 LDR Solutions | Todos los derechos reservados</p>
            </footer>

        </div>


        <!--jquery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous">
    </script>
    <!-- Incluir el script de Toastify después de sus CSS -->
    <script src="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.js"></script>
    <!-- CDN para poder utilizar las Sweet Alert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- CDN para poder utilizar las Sweet Alert2-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!--MENU-->
    <script src="../js/menu.js"></script>
    <!--alertas de js-->
    <script src="../js/alertas/alertas.js"></script>
    <!--inactividad y cerrar la sesion-->
    <script src="../js/inactividad.js"></script>

    <!-- cieera el body -->
</body>

</html>