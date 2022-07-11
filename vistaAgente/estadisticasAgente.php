<?php
if (isset($_SESSION['rol']) && $_SESSION['rol'] == 3) {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
            section {
                padding: 15px;
            }

            #graficos {
                display: flex;
                justify-content: space-evenly;
            }
            
            #graficos > *{
                width: 500px;
            }
        </style>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </head>

    <body>
        <section id="container">
            <p class="fs-5">Estadísticas</p>
            <hr>
            <p class="fs-6">
                Agente: <?php echo $listAgente; ?> <br> 
                Área donde se desempeña: <?php echo $areaAgente; ?>
            </p>

            <div id="graficos">
                <div id="totalEstadoTareas">
                    <canvas id="diagramaEstadoTareas"></canvas>
                </div>

                <div id="totalMotivosTareas">
                    <canvas id="diagramaMotivosTareas"></canvas>
                </div>
            </div>

        </section>
    </body>

    <script>
        const labelsEstadoTareas = [
            <?php
            foreach ($listEstadosTareas as $estadoTarea) {
                echo "'" . $estadoTarea[1] . "', ";
            }
            ?>
        ];

        const dataEstadoTareas = {
            labels: labelsEstadoTareas,
            datasets: [{
                backgroundColor: [
                    'LightCoral',
                    'MediumSeaGreen',
                    'LightSkyBlue',
                ],

                data: [
                    <?php
                    foreach ($listEstadosTareas as $estadoTarea) {
                        echo $estadoTarea[0] . ', ';
                    }
                    ?>
                ],
            }]
        };

        const configEstadoTareas = {
            type: 'pie',
            data: dataEstadoTareas,
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: 'Total de requerimientos: ' + <?php echo $totalEstadoTareas; ?>
                    },
                    legend: {
                        display: true,
                        position: 'top',
                        align: 'center',
                    },
                }
            }
        };

        const labelsMotivosTareas = [
            <?php
            foreach ($listMotivosTareas as $motivos) {
                echo "'" . $motivos[1] . "', ";
            }
            ?>
        ];

        const dataMotivosTareas = {
            labels: labelsMotivosTareas,
            datasets: [{
                backgroundColor: [
                    'Aquamarine',
                    'LightBlue',
                    'LightCyan',
                    'MediumPurple',
                    'MediumSlateBlue',
                    'RoyalBlue',
                    'DeepSkyBlue',
                    'Lavender',
                    'LightGreen',
                    'MediumOrchid',
                    'MediumSeaGreen',
                    'NavajoWhite',
                    'Wheat',
                    'Crimson',
                    'DarkSlateGray',
                    'Khaki',
                    'LightSalmon',
                    'LightSeaGreen',
                ],

                data: [
                    <?php
                    foreach ($listMotivosTareas as $motivos) {
                        echo $motivos[0] . ', ';
                    }
                    ?>
                ],
            }]
        };

        const configMotivosTareas = {
            type: 'pie',
            data: dataMotivosTareas,
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: 'Motivos de requerimientos'
                    },
                    legend: {
                        display: true,
                        position: 'top',
                        align: 'center',
                    },
                }
            }
        };
    </script>

    <script>
        const diagramaEstadoTareas = new Chart(
            document.getElementById('diagramaEstadoTareas'),
            configEstadoTareas
        );
        const diagramaMotivosTareas = new Chart(
            document.getElementById('diagramaMotivosTareas'),
            configMotivosTareas
        );
    </script>

    </html>
<?php
}
?>