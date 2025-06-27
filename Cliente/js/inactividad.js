console.log("Archivo inactividad.js cargado");

let temporizador;

function redirigir() {
    window.location.href = "http://intranet.com/LDRHSystem/";
}

function reiniciarTemporizador() {
    clearTimeout(temporizador);
    temporizador = setTimeout(redirigir, 600000); // 10 minutos
}

// Detectar actividad del usuario
['mousemove', 'mousedown', 'keypress', 'scroll', 'touchstart'].forEach(function (evento) {
    document.addEventListener(evento, reiniciarTemporizador, false);
});

// Iniciar temporizador al cargar
reiniciarTemporizador();
