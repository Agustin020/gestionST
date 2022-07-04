<?php
session_start();
if (isset($_SESSION['rol']) && $_SESSION['rol'] == 3) {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Estadísticas - Gestión Sistemas</title>
        <?php require('libreriaEstilos.php'); ?>
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

            
        </script>
    </head>

    <body>
        <?php require('headerNav.php'); ?>

        <section id="container">
            <p class="fs-5">Estadísticas</p>
            <hr>
        </section>
    </body>

    </html>

<?php
}
?>