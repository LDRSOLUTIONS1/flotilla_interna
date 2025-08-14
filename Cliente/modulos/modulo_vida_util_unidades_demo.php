<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-------------------------------------------aqui comienza el contenedor Validacion de carta responsiva ----------------------------------------------------------->
<div class="contenedorvalidacionunidades">
    <h5 class="titulosletrasunidades text-nowrap">Vida Útil Unidades Demo</h5>
    <h4 class="letravalidacionunidadresponsiva text-nowrap">
    </h4>
    <!--contenedor de las cards de las unidades por asignar-->

</div>
<div class="contenedorcardunidadescomodatoresponsiva">
    <div class="container-fluid py-4">
        <!-- Cards de resumen -->
        <div class="row mb-4">
            <div class="col-md-3">
                <div class="card text-center bg-dark text-white">
                    <div class="card-body">
                        <h6>Total unidades</h6>
                        <h4 id="totalUnidades">0</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-center bg-primary text-white">
                    <div class="card-body">
                        <h6>Activas (&lt; 48 meses)</h6>
                        <h4 id="totalActivas">0</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-center bg-warning text-dark">
                    <div class="card-body">
                        <h6>Próximas a venta (48-59 meses)</h6>
                        <h4 id="totalProximas">0</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white">
                    <div class="card-body">
                        <h6>Para vender (&ge; 60 meses)</h6>
                        <h4 id="totalVenta">0</h4>
                    </div>
                </div>
            </div>
        </div>

        <!-- Gráfica -->
        <div class="row mb-4">
            <div class="col-md-4">
                <canvas id="graficaEstados"></canvas>
            </div>
            <div class="col-md-8">
                <!-- Tabla -->
                <div class="table-responsive">
                    <table id="tablaVidaUtil" class="table table-dark table-hover align-middle">
                        <thead>
                            <tr>
                                <th>Unidad</th>
                                <th>Fecha Alta</th>
                                <th>Edad</th>
                                <th>Vida útil</th>
                                <th>Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $unidades = [
                                ["unidad" => "Nissan Frontier", "fecha_alta" => "2021-08-09", "vin" => "1N6BA07A05N512345", "placas" => "ABC-123-A", "sede" => "MONTERREY"],
                                ["unidad" => "Toyota Hilux", "fecha_alta" => "2020-06-30", "vin" => "JT1234567890HILUX", "placas" => "XYZ-987-B", "sede" => "SANTA FE"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2019-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "SANTA FE"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2021-08-09", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "MONTERREY"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2024-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "LAGOS DE MORENO"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2023-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "SANTA FE"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2024-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "SANTA FE"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2022-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "TECAMAC"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2024-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "MONTERREY"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2021-08-25", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "GUADALAJARA"],
                                ["unidad" => "Chevrolet S10", "fecha_alta" => "2020-06-19", "vin" => "9BG123456789S1001", "placas" => "HJK-456-C", "sede" => "TECAMAC"],
                            ];

                            $vida_util_meses = 60;
                            $fecha_actual = new DateTime();
                            $contadorEstados = ["Activa" => 0, "Próxima" => 0, "Venta" => 0];

                            foreach ($unidades as $u) {
                                $fecha_alta = new DateTime($u['fecha_alta']);
                                $diff = $fecha_actual->diff($fecha_alta);
                                $meses_usados = ($diff->y * 12) + $diff->m;
                                $porcentaje = ($meses_usados / $vida_util_meses) * 100;

                                if ($meses_usados < 48) {
                                    $estado = "Activa";
                                    $colorBarra = "bg-primary";
                                    $contadorEstados["Activa"]++;
                                } elseif ($meses_usados < 60) {
                                    $estado = "Próxima a venta";
                                    $colorBarra = "bg-warning";
                                    $contadorEstados["Próxima"]++;
                                } else {
                                    $estado = "Para vender";
                                    $colorBarra = "bg-danger";
                                    $contadorEstados["Venta"]++;
                                }

                                echo "<tr>
                                    <td><strong>{$u['unidad']}</strong><br>
                                        <small>VIN: {$u['vin']}<br>
                                        Placas: {$u['placas']}<br>
                                        Sede: {$u['sede']}</small>
                                    </td>
                                    <td>{$fecha_alta->format('d/m/Y')}</td>
                                    <td>{$meses_usados} meses</td>
                                    <td>
                                        <div class='progress'>
                                            <div class='progress-bar {$colorBarra}' role='progressbar' style='width: {$porcentaje}%;'>
                                                " . max(0, $vida_util_meses - $meses_usados) . " meses restantes
                                            </div>
                                        </div>
                                    </td>
                                    <td><span class='badge {$colorBarra}'>{$estado}</span></td>
                                </tr>";
                            }

                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById("totalUnidades").innerText = <?php echo count($unidades); ?>;
    document.getElementById("totalActivas").innerText = <?php echo $contadorEstados["Activa"]; ?>;
    document.getElementById("totalProximas").innerText = <?php echo $contadorEstados["Próxima"]; ?>;
    document.getElementById("totalVenta").innerText = <?php echo $contadorEstados["Venta"]; ?>;

    new Chart(document.getElementById("graficaEstados"), {
        type: 'doughnut',
        data: {
            labels: ['Activas', 'Próximas', 'Para vender'],
            datasets: [{
                data: [
                    <?php echo $contadorEstados["Activa"]; ?>,
                    <?php echo $contadorEstados["Próxima"]; ?>,
                    <?php echo $contadorEstados["Venta"]; ?>
                ],
                backgroundColor: ['#0d6efd', '#ffc107', '#dc3545']
            }]
        }
    });

    $(document).ready(function() {
        $('#tablaVidaUtil').DataTable({
            pageLength: 5, // cantidad de filas por página
            lengthMenu: [5, 10, 25, 50, 100],
            language: {
                url: '//cdn.datatables.net/plug-ins/1.13.5/i18n/es-ES.json'
            }
        });
    });
</script>