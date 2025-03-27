//obtenenos el parametro de la url  llamado resultado
const urlParams = new URLSearchParams(window.location.search);
const resultado = urlParams.get("resultado");

function limpiarparametros() {
    window.history.replaceState("", document.title, window.location.pathname);
}

if (resultado == "Polizainsertada") {
  swal({
    title: "Insertado correctamente",
    text: "Operacion realizada correctamente",
    icon: "success",
    button: "Aceptar",
  });

  limpiarparametros();
}

if (resultado == "Unidadinsertada") {
  swal({
    title: "Unidad insertada correctamente",
    text: "Operacion realizada correctamente",
    icon: "success",
    button: "Aceptar",
  });

  limpiarparametros();
}

if (resultado == "Polizactualizada") {
  swal({
    title: "Poliza actualizada correctamente",
    text: "Operacion realizada correctamente",
    icon: "success",
    button: "Aceptar",
  });

  limpiarparametros();
}

if (resultado == "Unidadactualizada") {
  swal({
    title: "Unidad actualizada correctamente",
    text: "Operacion realizada correctamente",
    icon: "success",
    button: "Aceptar",
  });

  limpiarparametros();
}


