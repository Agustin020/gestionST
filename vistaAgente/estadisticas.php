<?php
if (isset($_SESSION['rol']) && $_SESSION['rol'] == 3) {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Estadísticas - Gestión Sistemas</title>
        <style>
            section {
                padding: 15px;
            }
        </style>

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {
                'packages': ['corechart']
            });

            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ['Codigo', 'Direcciones'],
                    <?php
                    foreach ($totalPendientes as $pendiente) {
                        echo "['" . $pendiente[1] . "', " . $pendiente[0] . "],";
                    }
                    foreach($totalEnProgreso as $progreso){
                        echo "['" . $progreso[1] . "', " . $progreso[0] . "],";
                    }
                    foreach($totalCompletas as $completas){
                        echo "['" . $completas[1] . "', " . $completas[0] . "],";
                    }
                    foreach($totalCanceladas as $canceladas){
                        echo "['" . $canceladas[1] . "', " . $canceladas[0] . "],";
                    }
                    foreach($totalEliminadas as $eliminadas){
                        echo "['" . $eliminadas[1] . "', " . $eliminadas[0] . "],";
                    }
                    ?>
                ]);

                var options = {
                    title: 'Total de requerimientos de Sistemas: <?php echo $totalTareas;?>',
                    width: 800,
                    height: 500,
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                chart.draw(data, options);
            }
        </script>
    </head>

    <body>
        <section id="container">
            <p class="fs-5">Estadísticas</p>
            <hr>

            <p class="fs-6">Total de requerimientos de Sistemas</p>

            <div id="piechart"></div>
        </section>
    </body>

    </html>

<?php
}
?>