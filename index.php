<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="Cliente/img/Foton_IMG.png">
    <title>Index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Cliente/css/estilos.css">
    <!-- CDN para poder utilizar los toastify -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
</head>

<body>

    <!-- Video de fondo -->
    <video autoplay muted loop id="background-video">
        <source src="Cliente/videos/videoLogo.mp4" type="video/mp4">
    </video>

    <div class="cuadroblancovideoindex"></div>

    <div class="container p-4  mt-5 contenedorformularioinicio centrar">
        <div class="row align-items-center">
            <!-- Imagen -->
            <div class="col-lg-5 text-center">
                <img src="Cliente/img/Foton_IMG.png" class="img-fluid  imagenindex" alt="Logo">
            </div>

            <!-- Formulario -->
            <div class="col-lg-7 contenedorformularioindex">
                <br>
                <br>
                <h2 class="text-center titulosletras">FLOTILLA INTERNA</h2>
                <br>
                <div class="contenedorcamposformularioindex">
                    <div class="form-floating">
                        <input type="email" class="form-control" id="correoiniciosesion" placeholder="Correo" name="correoflotillaldr">
                        <small class="form-text text-muted">*Campo obligatorio</small>
                        <label for="correoflotillaldr">Direccion de correo</label>
                    </div>

                    <div class="form-floating">
                        <input type="password" class="form-control" id="contraseñainiciosesion" placeholder="Contraseña" name="correoflotillaldrpass">
                        <small class="form-text text-muted">*Campo obligatorio</small>
                        <label for="correoflotillaldrpass">Contraseña</label>
                    </div>

                    <!-- Botón Iniciar sesión centrado -->
                    <div class="d-flex justify-content-center mt-4">
                        <button class="btn btn-primary botoniniciarsesion" id="btniniciosesion">Iniciar sesión</button>
                    </div>

                    <!-- Link "¿Olvidaste tu contraseña?" centrado -->
                    <div class="text-center mt-3">
                        <a href="Cliente/correo.php" class="text-decoration-none">¿Olvidaste tu contraseña?</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

</body>
<!--jquery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--toastify-->
<script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Incluir el script de Toastify después de sus CSS -->
<script src="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.js"></script>
<!--bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!--javascript personal-->
<script src="./Cliente/js/index/iniciar_sesion.js"></script>

</html>